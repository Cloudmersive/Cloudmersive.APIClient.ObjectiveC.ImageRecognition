# CMDetectedObject

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**objectClassName** | **NSString*** | Class of the object.  Example values are \&quot;person\&quot;, \&quot;car\&quot;, \&quot;dining table\&quot;, etc. | [optional] 
**height** | **NSNumber*** | Height, in pixels, of the object | [optional] 
**width** | **NSNumber*** | Width, in pixels, of the object | [optional] 
**score** | **NSNumber*** | Confidence score of detected object; possible values are between 0.0 and 1.0; values closer to 1.0 are higher confidence | [optional] 
**X** | **NSNumber*** | X location, in pixels, of the left side location of the object, with the right side being X + Width | [optional] 
**Y** | **NSNumber*** | Y location, in pixels, of the top side location of the object, with the bottom side being Y + Height | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


