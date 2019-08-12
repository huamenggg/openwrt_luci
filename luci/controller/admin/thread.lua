module("luci.controller.admin.thread", package.seeall)

function index()
	page = entry({"admin", "network", "thread"}, template("thread_overview"), translate("Thread"), 16)
	page.leaf = true

	page = entry({"admin", "network", "thread_scan"}, post("thread_scan"), nil)
	page.leaf = true

	page = entry({"admin", "network", "thread_create"}, post("thread_create"), nil)
	page.leaf = true

	page = entry({"admin", "network", "thread_join"}, template("thread_join"), nil)
	page.leaf = true
end

function wifi_scan()
	local tpl = require "luci.template"

	tpl.render("thread_scan")
end
