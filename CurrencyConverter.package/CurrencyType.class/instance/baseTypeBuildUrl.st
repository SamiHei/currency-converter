builders
baseTypeBuildUrl
	| apiUrl |
	^apiUrl := ZnUrl new
     scheme: #https;
     host: 'api.ratesapi.io';
     addPathSegment: 'api';
     addPathSegment: 'latest';
     queryAt: 'base' put: (self type);
     yourself.