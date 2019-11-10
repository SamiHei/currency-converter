tests
testBaseTypeUrlBuilder
	| type resultUrl target|
	type := CurrencyType new type: 'EUR'.
	resultUrl := ApiURLBuilder new baseTypeBuildUrl: type.
	target := 'https://api.ratesapi.io/api/latest?base=EUR'.
	self assert: resultUrl asString equals: target.