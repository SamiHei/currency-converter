tests
testFromToUrlBuild
	| twoCurrencies resultUrl target|
	twoCurrencies := FromToCurrencyTypes new fromCurrency: (CurrencyType new type: 'EUR') ; toCurrency: (CurrencyType new type: 'AUD').
	resultUrl := twoCurrencies fromToBuildUrl.
	target := 'https://api.ratesapi.io/api/latest?base=EUR&symbols=AUD'.
	self assert: resultUrl asString equals: target.