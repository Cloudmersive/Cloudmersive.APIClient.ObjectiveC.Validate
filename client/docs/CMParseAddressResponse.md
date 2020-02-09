# CMParseAddressResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**successful** | **NSNumber*** | True if the parsing operation was successful, false otherwise | [optional] 
**building** | **NSString*** | The name of the building, house or structure if applicable, such as \&quot;Cloudmersive Building 2\&quot;.  This will often by null. | [optional] 
**streetNumber** | **NSString*** | The street number or house number of the address.  For example, in the address \&quot;1600 Pennsylvania Avenue NW\&quot; the street number would be \&quot;1600\&quot;.  This value will typically be populated for most addresses. | [optional] 
**street** | **NSString*** | The name of the street or road of the address.  For example, in the address \&quot;1600 Pennsylvania Avenue NW\&quot; the street number would be \&quot;Pennsylvania Avenue NW\&quot;. | [optional] 
**city** | **NSString*** | The city of the address. | [optional] 
**stateOrProvince** | **NSString*** | The state or province of the address. | [optional] 
**postalCode** | **NSString*** | The postal code or zip code of the address. | [optional] 
**countryFullName** | **NSString*** | Country of the address, if present in the address.  If not included in the address it will be null. | [optional] 
**iSOTwoLetterCode** | **NSString*** | Two-letter ISO 3166-1 country code | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


