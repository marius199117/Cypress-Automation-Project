Feature: API - Test DELETE Request
    As a QA, I want to test the DELETE API endpoint
    So that I can ensure it is working correctly

    Scenario: Test API endpoint with DELETE request type
        Given the API 'https://jsonplaceholder.typicode.com' is available
        When I send a 'DELETE' request to the '/posts/1' with body ''
        Then the response should have a status code of 200
        And the response should contain a matched 'application/json' Json
        And verify response body '{}'