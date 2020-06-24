local ignore={
	["armor"]=true,
	["blueprint"]=true,
	["blueprint-book"]=true,
	["deconstruction-item"]=true,
	["item-with-inventory"]=true,
	["selection-tool"]=true,
	["upgrade-item"]=true,
}
if settings.startup["stackMultiply"].value then
	for _,dat in pairs(data.raw) do
		for _,item in pairs(dat) do
			if item.stack_size and type(item.stack_size)=="number" and item.stack_size>1 then
				if not ignore[item.type] and (item.stackable==nil or item.stackable) then
					item.stack_size=item.stack_size*settings.startup["stackSize"].value
				end
			end
		end
	end
end
if not settings.startup["stackMultiply"].value then
	for _,dat in pairs(data.raw) do
		for _,item in pairs(dat) do
			if item.stack_size and type(item.stack_size)=="number" and item.stack_size>1 then
				if not ignore[item.type] and (item.stackable==nil or item.stackable) then
					item.stack_size=settings.startup["stackSize"].value
				end
			end
		end
	end
end