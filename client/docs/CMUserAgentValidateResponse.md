# CMUserAgentValidateResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**successful** | **NSNumber*** | True if the operation was successful, false otherwise | [optional] 
**isBot** | **NSNumber*** | True if the request is a known robot, false otherwise | [optional] 
**botName** | **NSString*** | Optional; name of the robot if the request was from a known robot, otherwise null | [optional] 
**botURL** | **NSString*** | Optional; if available, the URL to the robot | [optional] 
**operatingSystem** | **NSString*** | Operating System of the User-Agent (e.g. Windows) | [optional] 
**operatingSystemCPUPlatform** | **NSString*** | The CPU platform of the User-Agent (e.g. x64) | [optional] 
**operatingSystemVersion** | **NSString*** | The version of the operating system of the User-Agent (e.g. \&quot;10\&quot; for Windows 10) | [optional] 
**deviceType** | **NSString*** | Device type of the User-Agent; possible values are \&quot;DESKTOP\&quot;, \&quot;SMARTPHONE\&quot;, \&quot;TABLET\&quot; | [optional] 
**deviceBrandName** | **NSString*** | Brand name of the User-Agent | [optional] 
**deviceModel** | **NSString*** | Model name or number of the User-Agent | [optional] 
**browserName** | **NSString*** | Name of the Browser | [optional] 
**browserVersion** | **NSString*** | Version of the Browser | [optional] 
**browserEngineName** | **NSString*** | Name of the Browser Engine | [optional] 
**browserEngineVersion** | **NSString*** | Version of the Browser Engine | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


