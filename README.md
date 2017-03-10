# GetApplicationMetadata() thread safety in ACF11
These are some sample to show how stress testing custom mappings in Adobe ColdFusion 11 i not thread safe.

## Run app using CommandBox
Clone the repo into a new folder on yor system, `cd` into it and type `start`.
The CommandBox app starts at `http://127.0.0.1:52831`.

## jMeter
Start your jMeter and open file `mappings_stress_test.jmx`.
You can edit the number of threads to run through the thread group node.

## See the issue
- Open the file `http://127.0.0.1:52831/dump.html` in your browser.
- Run the jMeter test.
- Refresh the browser to see the errors.
