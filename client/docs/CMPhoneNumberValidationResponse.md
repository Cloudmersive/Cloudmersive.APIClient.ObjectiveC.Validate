# CMPhoneNumberValidationResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**isValid** | **NSNumber*** | True if the phone number is valid, false otherwise | [optional] 
**successful** | **NSNumber*** | True if the operation was successful, false if there was an error during validation.  See IsValid for validation result. | [optional] 
**phoneNumberType** | **NSString*** | Type of phone number; possible values are: FixedLine, Mobile, FixedLineOrMobile, TollFree, PremiumRate,   SharedCost, Voip, PersonalNumber, Pager, Uan, Voicemail, Unknown | [optional] 
**e164Format** | **NSString*** | E.164 format of the phone number | [optional] 
**internationalFormat** | **NSString*** | Internaltional format of the phone number | [optional] 
**nationalFormat** | **NSString*** | National format of the phone number | [optional] 
**countryCode** | **NSString*** | Two digit country code of the phone number | [optional] 
**countryName** | **NSString*** | User-friendly long name of the country for the phone number | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


