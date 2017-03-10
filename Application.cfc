component {

	function onRequestStart(string targetPage) {
		var appSettings = getApplicationMetadata();
		appSettings.mappings[ "/test1" ] = "value1";
		appSettings.mappings[ "/test2" ] = "value2";
		appSettings.mappings[ "/test3" ] = "value3";
		appSettings.mappings[ "/test4" ] = "value4";
		appSettings.mappings[ "/test5" ] = "value5";
	}

}