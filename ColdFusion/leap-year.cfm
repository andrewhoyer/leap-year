<cfset years = [1900, 2000, 2023, 2024]>

<cfloop array="#years#" item="year">
    <cfif isLeapYear(year)>
        <cfset leap = "Yes">
    <cfelse>
            <cfset leap = "No">
    </cfif>
    <cfoutput>Is #year# a Leap Year? #leap#<br/></cfoutput>
</cfloop>
