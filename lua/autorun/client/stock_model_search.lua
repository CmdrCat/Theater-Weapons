if not CLIENT then return end

-- Search results only. This does not add a Spawn Menu category or tab.
local sharedModel = "models/tcw/stocks/tcw_shared_ar15_stocks.mdl"

local searchableStocks = {
	{
		name = "Sturdy Stock",
		model = sharedModel,
		body = "000000000",
		terms = "stock stocks moe sturdy"
	},
	{
		name = "Heavy Stock",
		model = sharedModel,
		body = "100000000",
		terms = "stock stocks heavy"
	},
	{
		name = "Sturdy Stock",
		model = sharedModel,
		body = "200000000",
		terms = "stock stocks moe sturdy"
	},
	{
		name = "Heavy Stock",
		model = sharedModel,
		body = "300000000",
		terms = "stock stocks heavy"
	},
	{
		name = "Thin Folding Stock",
		model = "models/shared/wparts/m13/stock_all_sig_thin_folding_stock.mdl",
		body = "000000000",
		terms = "stock stocks thin folding skeleton"
	}
}

local function matchesAllTerms(haystack, query)
	for _, term in ipairs(string.Explode(" ", string.Trim(query:lower()))) do
		if term ~= "" and not haystack:find(term, 1, true) then
			return false
		end
	end

	return true
end

search.AddProvider(function(query)
	local results = {}

	for _, stock in ipairs(searchableStocks) do
		local searchableText = (stock.name .. " " .. stock.terms .. " " .. stock.model):lower()

		if matchesAllTerms(searchableText, query) then
			local icon = spawnmenu.CreateContentIcon("model", nil, {
				model = stock.model,
				body = stock.body
			})
			icon:SetTooltip(stock.name)

			table.insert(results, {
				text = stock.name,
				icon = icon,
				words = {stock.name, stock.terms, stock.model}
			})
		end
	end

	return results
end, "props")
