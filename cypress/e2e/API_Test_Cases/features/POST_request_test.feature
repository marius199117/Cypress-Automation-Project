Feature: API - Test POST Request
    As a QA, I want to test the POST API endpoint
    So that I can ensure it is working correctly

    Scenario: Test API endpoint with POST request type
        Given the API 'https://jsonplaceholder.typicode.com' is available
        When I send a 'POST' request to the '/posts' with body '{"userId":50,"id":101,"title":"testing123","body":"testing345"}'
        Then the response should have a status code of 201
        And the response should contain a matched 'application/json' Json
        And verify response body '{"userId":50,"id":101,"title":"testing123","body":"testing345"}'
