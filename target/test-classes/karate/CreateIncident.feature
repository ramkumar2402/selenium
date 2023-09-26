Feature: Create a new Incident in ServiceNow

Background:
Given url 'https://dev134534.service-now.com/com/api/now/table/incident'
And header Authorization = call read('basic-auth.js') { username: 'admin', password: '8E!uv1yn^FPX' }

Scenario Outline: Create a new Incident
When request {"short_description" : <short_desc>}
Then method post
And print response

Examples:
|short_desc|
|This is created from karate data1|
|This is created from karate data2|