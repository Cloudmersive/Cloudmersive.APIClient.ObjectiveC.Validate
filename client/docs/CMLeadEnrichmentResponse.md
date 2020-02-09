# CMLeadEnrichmentResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**successful** | **NSNumber*** | True if the operation was successful, false otherwise | [optional] 
**leadType** | **NSString*** | The type of the lead; possible types are Junk (a single individual using a disposable/throwaway email address); Individual (a single individual, typically a consumer, not purchasing on behalf of a business); SmallBusiness (a small business, typically with fewer than 100 employees); MediumBusiness (a medium business, larger than 100 employees but fewer than 1000 employees); Enterprise (a large business with greater than 1000 employees); Business (a business customer of unknown size) | [optional] 
**contactBusinessEmail** | **NSString*** | The person&#39;s business email address for the lead | [optional] 
**contactFirstName** | **NSString*** | The person&#39;s first name for the lead | [optional] 
**contactLastName** | **NSString*** | The person&#39;s last name for the lead | [optional] 
**contactGender** | **NSString*** | Gender for contact name; possible values are Male, Female, and Neutral (can be applied to Male or Female).  Requires ContactFirstName. | [optional] 
**companyName** | **NSString*** | Name of the company for the lead | [optional] 
**companyDomainName** | **NSString*** | Domain name / website for the lead | [optional] 
**companyHouseNumber** | **NSString*** | House number of the address of the company for the lead | [optional] 
**companyStreet** | **NSString*** | Street name of the address of the company for the lead | [optional] 
**companyCity** | **NSString*** | City of the address of the company for the lead | [optional] 
**companyStateOrProvince** | **NSString*** | State or Province of the address of the company for the lead | [optional] 
**companyPostalCode** | **NSString*** | Postal Code of the address of the company for the lead | [optional] 
**companyCountry** | **NSString*** | Country Name of the address of the company for the lead | [optional] 
**companyCountryCode** | **NSString*** | Country Code (2-letter ISO 3166-1) of the address of the company for the lead | [optional] 
**companyTelephone** | **NSString*** | Telephone of the company office for the lead | [optional] 
**companyVATNumber** | **NSString*** | VAT number of the company for the lead | [optional] 
**employeeCount** | **NSNumber*** | Count of employees at the company (estimated), if available | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


