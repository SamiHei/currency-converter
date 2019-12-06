accessing
exchangeRates: anCurrencyType
	"Get exchange rates with base type"
	| apiURL |
	apiURL  := anCurrencyType baseTypeBuildUrl.

	^ exchangeRates := ZnClient new get: apiURL .