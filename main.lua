local get_paths = ya.sync(function()
	local paths = {}
	for _, u in pairs(cx.active.selected) do
		paths[#paths + 1] = tostring(u)
	end
	if #paths == 0 then
		local h = cx.active.current.hovered
		if h then
			paths[1] = tostring(h.url)
		end
	end
	return paths
end)

return {
	entry = function(self, job)
		local paths = get_paths()
		if #paths == 0 then
			ya.notify({ title = "AirDrop", content = "No file selected", level = "warn", timeout = 3 })
			return
		end

		local output, err = Command("airdrop"):arg(paths):output()
		if not output then
			ya.notify({
				title = "AirDrop",
				content = "'airdrop' not found in PATH. Run 'make install' in the plugin directory.",
				level = "error", timeout = 8,
			})
			return
		end

		if not (output.status and output.status.success) then
			local reason = output.stderr and output.stderr:gsub("%s+$", "") or ""
			if reason == "" then
				local code = output.status and output.status.code or "unknown"
				reason = "Exit code: " .. tostring(code)
			end
			ya.notify({ title = "AirDrop", content = reason, level = "error", timeout = 5 })
		end
	end,
}
