CurrencyConverter package to get exhange rates, convert between currencies and add or substract different currencies from eachothers. Package gets exhange rates from "ratesapi.io" and requires network connection to be used.

Example usage:
- Get exchange rates with base currency type:
	1. Create CurrencyType object with valid String input.
	2. Create ExchangeRates object and call exchangeRates with the CurrencyType object.

- Get exchange rates between two currencies:
	1. Create 2 CurrencyType objects with different types.
	2. Create new FromToCurrencies object and set fromCurrency and toCurrency values with the 2 CurrencyType objects.
	3. Create ExchangeRate object and call exchangeRate with FromToCurrencies object to get rate between those two currencies.

- Convert currency with amount to different currency
	1. Create 2 CurrencyType objects (base currency and target currency).
	2. Create Currency object and set type with base CurrencyType object and set amount with Number value.
	3. Create Converter object.
	4. Call Converter object with Currency object and target CurrencyType object and get Currency object with converted amount and correct CurrencyType.

- Add/Substract two different currencies
	1. Create 2 Currency objects and 1 CurrencyType object (2 which to be added/substracted and target type)
	2. Create Converter object.
	3. Call Converter add/substract method with 2 Currency objects and target CurrencyType.
	4. Returns Currency object with correct amount and currency type.