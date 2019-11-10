tests
testCurrencyCreation
	| type currency |
	type := CurrencyType new type: 'EUR'.
	currency := Currency new currType: type ; amount: 100.
	self assert: currency currType equals: 'EUR'.
	self assert: currency amount equals: 100.