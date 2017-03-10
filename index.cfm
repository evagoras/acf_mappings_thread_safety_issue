<cfscript>
mappings = getApplicationMetadata().mappings.keyArray();
if ( mappings.findNoCase( '/test5' ) == 0 )
{
	cfsavecontent( variable="dump" )
	{
		writeOutput( len( mappings.toList() ) > 0 ? mappings.toList() : "--none--" );
		writeOutput( "<hr>" );
	}
	cffile( action="append", file=expandPath("/dump.html"), output=dump );
}
</cfscript>
Finished