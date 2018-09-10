# CMFullNameValidationResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**successful** | **NSNumber*** | True if the validation operation was successful, false otherwise | [optional] 
**validationResultFirstName** | **NSString*** | Possible values are: ValidFirstName, ValidUnknownFirstName, InvalidSpamInput, InvalidCharacters, InvalidEmpty | [optional] 
**validationResultLastName** | **NSString*** | Possible values are: ValidLastName, ValidUnknownLastName, InvalidSpamInput, InvalidCharacters, InvalidEmpty | [optional] 
**title** | **NSString*** | The person&#39;s title (if supplied), e.g. \&quot;Mr.\&quot; or \&quot;Ms.\&quot; | [optional] 
**firstName** | **NSString*** | The first name (given name) | [optional] 
**middleName** | **NSString*** | The middle name(s); if there are multiple names they will be separated by spaces | [optional] 
**lastName** | **NSString*** | The last name (surname) | [optional] 
**nickName** | **NSString*** | Nickname (if supplied) | [optional] 
**suffix** | **NSString*** | Suffix to the name, e.g. \&quot;Jr.\&quot; or \&quot;Sr.\&quot; | [optional] 
**displayName** | **NSString*** | The full display name of the name | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


