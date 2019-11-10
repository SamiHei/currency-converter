builders
fromToBuildUrl: anFromToCurrencyTypes
	| apiUrl |
	^apiUrl := ZnUrl new
     scheme: #https;
     host: 'api.ratesapi.io';
     addPathSegment: 'api';
     addPathSegment: 'latest';
     queryAt: 'base' put: anFromToCurrencyTypes fromCurrency;
     queryAt: 'symbols' put: anFromToCurrencyTypes toCurrency;
     yourself.