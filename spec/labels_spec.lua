local Label = assert(loadfile("tools/label-trace.lua"))()
local Trace = assert(loadfile("tools/trace.lua"))()

-- The checked Labels must still fit the Trace: a change to the adapter that
-- adds, drops, or renumbers a Hit or a Log Line breaks them.
describe("the checked Labels", function()
	for _, name in ipairs(Trace.NAMES) do
		describe(name, function()
			local labels = assert(loadfile("spec/traces/" .. name .. ".labels.lua"))()
			local hits, logLines = Label.Adapt(assert(Trace.Load("spec/traces/" .. name .. ".lua")))

			it("have no row left unsure", function()
				for _, row in ipairs(labels) do
					assert.is_nil(row.unsure, ("hit %d is unsure: %s"):format(row.hit, tostring(row.unsure)))
				end
			end)

			it("have exactly one row for each Hit", function()
				local rows = {}
				for _, row in ipairs(labels) do
					assert.is_nil(rows[row.hit], ("hit %d has two rows"):format(row.hit))
					rows[row.hit] = row
				end
				for _, hit in ipairs(hits) do
					assert.is_truthy(rows[hit.entry], ("hit %d has no row"):format(hit.entry))
				end
				assert.are.equal(#hits, #labels)
			end)

			it("name only real Log Lines, each at most once", function()
				local isLine, used = {}, {}
				for _, logLine in ipairs(logLines) do
					isLine[logLine.entry] = true
				end
				for _, row in ipairs(labels) do
					if row.line then
						assert.is_true(isLine[row.line] == true, ("hit %d names entry %d, which is no Log Line"):format(row.hit, row.line))
						assert.is_nil(used[row.line], ("Log Line %d has two Hits"):format(row.line))
						used[row.line] = true
					end
				end
			end)
		end)
	end
end)
