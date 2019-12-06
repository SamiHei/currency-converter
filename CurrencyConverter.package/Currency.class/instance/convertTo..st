model access
convertTo: anCurrencyType
	"Converts currency object type and its amount to target currency type"
	| fromToCurrencies rateString parsed rate |
	fromToCurrencies := FromToCurrencyTypes new fromCurrency: (CurrencyType new type: (self currType)) ; toCurrency: anCurrencyType.
	rateString := ExchangeRate new exchangeRate: fromToCurrencies .
	
	"Parse number from the rateString"
   parsed := rateString splitOn: ':'.
	parsed := parsed at: 4.
	parsed := parsed splitOn: '}'.
	parsed := parsed at: 1.
	rate  := parsed asNumber.
	
	self currType: anCurrencyType.
	self amount: ((self amount ) * rate).