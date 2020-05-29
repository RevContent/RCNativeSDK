# Introduction:
Revcontent currently offers two SDKs for Javascript widgets, one for iOS and another for Android developers.
The native libraries for iOS & Android enables you to receive the same ad fill you would see in our traditional ad placements in a more flexible format. The alternative to using our SDKs is loading your JS adcode into a webview, but there are some considerations you must make that the SDK handles for you. These are covered below in the "No Library Option" section below.

# Library Features
- Load Widget ad code by WidgetId
- Add SubId parameters (Optional)
- Pass FQDN or article URL as base URL 
- Flexible widget size

# iOS Library

Revcontent's iOS library written in Swift, enables you quickly and reliably include our JS widgets into your application. You can find more details from here:

https://github.com/RevContent/RCNativeiOSSDK

# Android Library

Revcontent's Android library written in Java, enables you quickly and reliably include our JS widgets into your application. You can find more details from here:

https://github.com/RevContent/RCNativeAndroidSDK

# No Library

If you choose to implement in a webview there are some notes for this:
- A base URL must be defined
- Add the following to your WKWebview HTML for full width:
```
  <meta name="viewport" content="width=device-width,initial-scale=1">
```

Current Revcontent ad codes will look something like the following:

```
<div id="widget1"
	data-rc-widget
	data-widget-host="habitat"
	data-endpoint="trends.revcontent.com"
	data-widget-id="XXX"></div>
<script src="https://assets.revcontent.com/master/delivery.js" defer="defer"></script>
```

This HTML and Javascript snippet referred to as the "ad code" is placed where you would like it to appear. For example, if you're using Swift for IOS you would be able to save the adcode into an html file and add it as a resource to your app. Then load that via 
```
Bundle.main.url(forResource: "filename", withExtension: "html")!
```
The ad code renders what Revcontent refers to as a Widget. All settings for the widget’s display can be customized by Revcontent. Examples of this would be row and column counts, font sizes, color, and advertisement blocking. The Widget ID in the "ad code" is used to identify the placement, all stats of this widget (impressions, views, clicks) will be tied to a line item in the Revcontent interface with this Widget ID. 

Revcontent will provide widget IDs for your implementation, which will more than likely be a separate widget ID for each application you have, these can further be separated if needed (Ex. New widget ID for App sections)


There is also an API to pull the stats information (https://www.revcontent.com/docs/stats/), otherwise you can login to your Revcontent account to review Widget Performance





