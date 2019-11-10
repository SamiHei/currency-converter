builders
baseTypeBuildUrl: anCurrencyType
	| apiUrl |
	^apiUrl := ZnUrl new
     scheme: #https;
     host: 'api.ratesapi.io';
     addPathSegment: 'api';
     addPathSegment: 'latest';
     queryAt: 'base' put: anCurrencyType type;
     yourself.