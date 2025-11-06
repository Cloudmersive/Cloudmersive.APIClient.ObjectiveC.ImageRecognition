# CMNsfwAdvancedResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**successful** | **NSNumber*** | True if the classification was successfully run, false otherwise | [optional] 
**cleanResult** | **NSNumber*** | True if the result was clean, false otherwise | [optional] 
**containsNudity** | **NSNumber*** | True if the image contains nudity or sex, false otherwise | [optional] 
**containsGraphicViolence** | **NSNumber*** | True if the image contains graphic violence and/or gore, false otherwise | [optional] 
**containsNonGraphicViolence** | **NSNumber*** | True if the image contains non-graphic violence, e.g. weapons, false otherwise | [optional] 
**containsSelfHarm** | **NSNumber*** | True if the image contains self-harm or suicide imagery, false otherwise | [optional] 
**containsHate** | **NSNumber*** | True if the image contains hate, false otherwise | [optional] 
**containsPotentialIllegalActivity** | **NSNumber*** | True if the image contains potentially illegal activity such as drugs, false otherwise | [optional] 
**containsMedicalImagery** | **NSNumber*** | True if the image contains medical imagery, false otherwise | [optional] 
**containsProfanity** | **NSNumber*** | True if the image contains profanity or obscenities, false otherwise | [optional] 
**score** | **NSNumber*** | Score between 0.0 and 1.0.  Scores of 0.0-0.2 represent high probability safe content, while scores 0.8-1.0 represent high probability unsafe content.  Content between 0.2 and 0.8 is of increasing raciness. | [optional] 
**classificationOutcome** | **NSString*** | Classification result into four categories: SafeContent_HighProbability, UnsafeContent_HighProbability, RacyContent, SafeContent_ModerateProbability | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


