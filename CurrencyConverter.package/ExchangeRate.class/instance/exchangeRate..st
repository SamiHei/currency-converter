accessing
exchangeRate: anFromToCurrencyTypes
	"Get exchange rates with base type"
	| apiURL |
	apiURL  := anFromToCurrencyTypes fromToBuildUrl .

	^ exRate := ZnClient new get: apiURL .