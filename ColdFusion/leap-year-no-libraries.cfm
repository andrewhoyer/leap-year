
<cfset years = [1900, 2000, 2023, 2024]>

<cfloop array="#years#" item="year">
    <cfset leap = "No">

    <cfif year MOD 4 == 0>
        <cfif year MOD 100 == 0>
            <cfif year MOD 400 == 0>
                <cfset leap = "Yes">
            </cfif>
        <cfelse>
            <cfset leap = "Yes">
        </cfif>
    </cfif>

    <cfoutput>Is #year# a Leap Year? #leap#<br/></cfoutput>
</cfloop>
