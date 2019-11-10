accessing
exchangeRate: anFromToCurrencyTypes
	"Get exchange rates with base type"
	| apiURL |
	apiURL  := ApiURLBuilder new fromToBuildUrl: anFromToCurrencyTypes .

	^ exRate := ZnClient new get: apiURL .