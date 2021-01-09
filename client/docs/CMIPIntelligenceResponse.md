# CMIPIntelligenceResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**isBot** | **NSNumber*** | True if the IP address is a known bot, otherwise false | [optional] 
**isTorNode** | **NSNumber*** | True if the IP address is a known Tor exit node, otherwise false | [optional] 
**isThreat** | **NSNumber*** | True if the IP address is a known threat IP, otherwise false | [optional] 
**isEU** | **NSNumber*** | True if the IP address is in the European Union, otherwise false | [optional] 
**location** | [**CMGeolocateResponse***](CMGeolocateResponse.md) | Returns the location of the IP address | [optional] 
**currencyCode** | **NSString*** | ISO 4217 currency code for the IP address location | [optional] 
**currencyName** | **NSString*** | Name of the currency in English | [optional] 
**regionArea** | **NSString*** | Region (continent) in which the country is located; possible values are None, Europe, Americas, Asia, Africa, Oceania | [optional] 
**subregionArea** | **NSString*** | Subregion in which the country is located; possible values are None, NorthernEurope, WesternEurope, SouthernEurope, EasternEurope, CentralAmerica, NorthernAmerica, SouthAmerica, EasternAfrica, MiddleAfrica, NorthernAfrica , SouthernAfrica , WesternAfrica , CentralAsia , EasternAsia , SouthernAsia , SouthEasternAsia , WesternAsia , Southern , Middle , AustraliaandNewZealand , Melanesia , Polynesia , Micronesia , Caribbean, | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


