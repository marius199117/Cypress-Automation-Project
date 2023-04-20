Feature: API - Test GET Request
    As a QA, I want to test the GET API endpoint
    So that I can ensure it is working correctly

    Scenario: Test API endpoint with GET request type
        Given the API 'https://jsonplaceholder.typicode.com' is available
        When I send a 'GET' request to the '/todos/1' with body ''
        Then the response should have a status code of 200
        And the response should contain a matched 'application/json' Json
        And verify response body '{"userId":1,"id":1,"title":"delectus aut autem","completed":false}'



