Feature: API - Test PATCH Request
    As a QA, I want to test the PATCH API endpoint
    So that I can ensure it is working correctly

    Scenario: Test API endpoint with PATCH request type
        Given the API 'https://jsonplaceholder.typicode.com' is available
        When I send a 'PATCH' request to the '/posts/2' with body '{"title":"testing12","body":"testing21"}'
        Then the response should have a status code of 200
        And the response should contain a matched 'application/json' Json
        And verify response body '{"userId":1,"id":2,"title":"testing12","body":"testing21"}'