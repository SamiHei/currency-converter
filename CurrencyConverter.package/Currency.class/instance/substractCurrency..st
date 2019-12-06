calculations
substractCurrency: anCurrency
	"Substracts given currency to base currency object (no matter the currency type)"
	| subsCurr baseType |
	subsCurr := Currency new.
	subsCurr := anCurrency.
	baseType := CurrencyType new.
	baseType type: (self currType).
	subsCurr convertTo: baseType.
	self amount: (self amount) - (subsCurr amount)