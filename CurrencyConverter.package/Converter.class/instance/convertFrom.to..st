converting
convertFrom: anCurrency to: anCurrencyType
	"Converts currency object type and its amount to target currency type and return new currency object"
	| fromToCurrencies rateString parse1 parse2 parse3 parse4 rate resultCurrency |
	fromToCurrencies := FromToCurrencyTypes new fromCurrency: (CurrencyType new type: anCurrency currType) ; toCurrency: anCurrencyType.
	rateString := ExchangeRate new exchangeRate: fromToCurrencies .
	
	"Parse number from the rateString"
   parse1 := rateString splitOn: ':'.
	parse2 := parse1 at: 4.
	parse3 := parse2 splitOn: '}'.
	parse4 := parse3 at: 1.
	rate  := parse4 asNumber.
	
	"Create result currency, set type and calculate amount"
	resultCurrency := Currency new.
	resultCurrency currType: anCurrencyType .
	resultCurrency amount: (anCurrency amount * rate).
	^resultCurrency .