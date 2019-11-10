accessing
exchangeRates: anCurrencyType
	"Get exchange rates with base type"
	| apiURL |
	apiURL  := ApiURLBuilder new baseTypeBuildUrl: anCurrencyType .

	^ exchangeRates := ZnClient new get: apiURL .