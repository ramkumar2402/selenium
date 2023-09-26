Feature: Incident Management

  Scenario: Create Incident
    Given url 'https://dev134534.service-now.com/com/api/now/table/incident'
    And header Authorization = call read('basic-auth.js') { username: 'admin', password: '8E!uv1yn^FPX' }
    When method get
    Then status 200
    And print response
    And match header Server contains 'ServiceNow5454545'
