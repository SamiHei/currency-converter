calculations
addCurrency: anCurrency
	"Adds given currency to base currency object (no matter the currency type)"
	| addCurr baseType |
	addCurr := Currency new.
	addCurr := anCurrency.
	baseType := CurrencyType new.
	baseType type: (self currType).
	addCurr convertTo: baseType.
	self amount: (self amount) + (addCurr amount) 