tests
testInvalidCurrencyType
	| currencyType |
	currencyType := CurrencyType new type: 'MARKKA'.
	self assert: currencyType type equals: 'None'.