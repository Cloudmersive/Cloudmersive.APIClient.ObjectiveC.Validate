# CMValidateStateRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**stateOrProvince** | **NSString*** | Required: State or province of the address to validate, such as &#39;California&#39; or &#39;CA&#39; | [optional] 
**countryFullName** | **NSString*** | Optional (recommended); Name of the country, such as &#39;United States&#39;.  If left blank, and CountryCode is also left blank, will default to United States.  Global countries are supported. | [optional] 
**countryCode** | **NSString*** | Optional; two-letter country code (Two-letter ISO 3166-1 country code) of the country.  If left blank, and CountryFullName is also left blank, will default to United States.  Global countries are supported. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


