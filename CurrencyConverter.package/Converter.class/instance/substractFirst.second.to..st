calculations
substractFirst: anCurrency second: anCurrency2 to: anCurrencyType
	"Substracts two currency objects and returns new currency object with target type and calculated amount"
	| helpConverter firstCurrency secondCurrency resultCurr|
	helpConverter := Converter new. 
	firstCurrency := helpConverter convertFrom: anCurrency to: anCurrencyType .
	secondCurrency := helpConverter convertFrom: anCurrency2 to: anCurrencyType .
	
	resultCurr := Currency new.
	resultCurr amount: (firstCurrency amount - secondCurrency amount).
	resultCurr currType: anCurrencyType.
	^resultCurr.