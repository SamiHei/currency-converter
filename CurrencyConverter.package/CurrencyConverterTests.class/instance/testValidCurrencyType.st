tests
testValidCurrencyType
	| currencyType |
	currencyType := CurrencyType new type: 'EUR'.
	self assert: currencyType type equals: 'EUR'.