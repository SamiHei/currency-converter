CurrencyConverter package to get exhange rates, convert between currency to other type and add or substract different currencies from eachothers. Package gets exhange rates from "ratesapi.io" and requires network connection to be used.

Example usage:
- Get exchange rates with base currency type:
	1. Create CurrencyType object with valid String input.
	2. Create ExchangeRates object and call exchangeRates with the CurrencyType object.

- Get exchange rates between two currencies:
	1. Create 2 CurrencyType objects with different types.
	2. Create new FromToCurrencies object and set fromCurrency and toCurrency values with the 2 CurrencyType objects.
	3. Create ExchangeRate object and call exchangeRate with FromToCurrencies object to get rate between those two currencies.

- Convert currency with amount to different currency
	1. Create currency with type and amount
	2. Create CurrencyType with wanted target value type 
	3. Call currency objects convertTo with target CurrencyType object

- Add/Substract two different currencies
	1. Create base currency object with type and amount
	2. Create currency object which will be added/substracted from the base object with type and amount
	3. Call base objects addCurrency/substractCurrency and give the second currency object as parameter
	4. Amount will be added to or substracted from the base currency object