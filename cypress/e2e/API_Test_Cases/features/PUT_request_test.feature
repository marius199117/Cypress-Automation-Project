Feature: API - Test PUT Request
    As a QA, I want to test the PUT API endpoint
    So that I can ensure it is working correctly

    Scenario: Test API endpoint with PUT request type
        Given the API 'https://jsonplaceholder.typicode.com' is available
        When I send a 'PUT' request to the '/posts/4' with body '{"title":"testing1","body":"testing2"}'
        Then the response should have a status code of 200
        And the response should contain a matched 'application/json' Json
        And verify response body '{"id":4,"title":"testing1","body":"testing2"}'