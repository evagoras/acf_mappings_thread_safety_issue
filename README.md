# GetApplicationMetadata() thread safety in ACF11
This sample code is an attempt to show that the native ACF function `getApplicationMetadata()` is not thread safe.

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
- Refresh the browser to see the errors.

Any time the mapping `/test5` is not found, a new line will be added to the output with the mappings at that moment in time.
