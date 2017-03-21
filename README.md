# GetApplicationMetadata() stress test safety issue
This sample code is an attempt to show that the native Adobe ColdFusion function `GetApplicationMetadata()` is not thread safe under a stress test.

## Run app using CommandBox
Clone the repo into a new folder on your system, `cd` into it and type `start`.
The CommandBox app starts at `http://127.0.0.1:52831`.

## jMeter
You will need version 3.1 of jMeter.
I use the `Custom Threads Plugin` - to install it you need to first have the jMeter Plugins Manager installed (https://jmeter-plugins.org/wiki/PluginsManager/), and then select it from the list of available plugins from your `Options > Plugins Manager` menu.
Once you have the plugin installed, restart your jMeter and open file `mappings_stress_test.jmx`.
You can edit the number of threads to run through the `jp@gc - Ultimate Thread Group`.

## See the issue
- Open the file `http://127.0.0.1:52831/dump.html` in your browser.
- Run the jMeter test.
- Refresh the browser periodically, as the test is running, to see the errors. Each error line is written when the mapping `/test5` is not found, and lists the mappings at that moment in time.

The issue to take away here, is that **there should not be any errors written out** as the test is running.

## ACF10, ACF11, ACF2016
CommandBox is set to run under ACF11. Change the `server.json` file to have things run under version 10 or 2016 - issue persists in all versions.

## Adobe ticket
Brad Wood created a ticket for Adobe:
https://tracker.adobe.com/#/view/CF-4198397
