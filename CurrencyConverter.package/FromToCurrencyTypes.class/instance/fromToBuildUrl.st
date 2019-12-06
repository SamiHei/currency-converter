instance creation
fromToBuildUrl
	| apiUrl |
	^apiUrl := ZnUrl new
     scheme: #https;
     host: 'api.ratesapi.io';
     addPathSegment: 'api';
     addPathSegment: 'latest';
     queryAt: 'base' put: (self fromCurrency);
     queryAt: 'symbols' put: (self toCurrency);
     yourself.