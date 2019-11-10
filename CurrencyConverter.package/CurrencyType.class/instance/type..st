accessing
type: aString
	| newType validTypes |
	newType := aString.
	validTypes := Array withAll: #('GBP' 'HKD' 'IDR' 'ILS' 'DKK' 'INR' 'CHF' 'MXN' 'CZK' 'SGD' 'THB' 'HRK' 'EUR' 'MYR' 'NOK' 'CNY' 'BGN' 'PHP' 'PLN' 'ZAR' 'CAD' 'ISK' 'BRL' 'RON' 'NZD' 'TRY' 'JPY' 'RUB' 'KRW' 'USD' 'AUD' 'HUF' 'SEK').
	type := (validTypes includes: newType)
		ifTrue: [ type := newType ]
		ifFalse: [ 'None' ]