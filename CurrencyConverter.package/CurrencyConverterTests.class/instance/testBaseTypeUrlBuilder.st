tests
testBaseTypeUrlBuilder
	| type resultUrl target|
	type := CurrencyType new type: 'EUR'.
	resultUrl := type baseTypeBuildUrl.
	target := 'https://api.ratesapi.io/api/latest?base=EUR'.
	self assert: resultUrl asString equals: target.