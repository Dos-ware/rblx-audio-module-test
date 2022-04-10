local HttpService = game:GetService("HttpService")

local betterisfile = function(file)
	local suc, res = pcall(function() return readfile(file) end)
	return suc and res ~= nil
end

local function GetURL(scripturl)
	if shared.VapeDeveloper then
		if not betterisfile(scripturl) then
			error("Failed to download assets get a better exploit noob")
		end
		return readfile(scripturl)
	else
		local res = game:HttpGet(""..scripturl, true)
		assert(res ~= "404: Not Found", "File not found")
		return res
	end
end