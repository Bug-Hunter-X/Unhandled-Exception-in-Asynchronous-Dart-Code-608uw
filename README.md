# Unhandled Exception in Asynchronous Dart Code

This repository demonstrates a common error in Dart: insufficient error handling in asynchronous operations.  The `fetchData` function attempts to fetch data from a remote API, but lacks proper error handling for potential exceptions (network errors, server errors, etc.).  This can lead to silent failures or crashes in the application.

The `bug.dart` file contains the buggy code.  The `bugSolution.dart` file shows the corrected code with comprehensive error handling.

## How to Reproduce

1. Clone this repository.
2. Run `bug.dart` (you might need to add `http` dependency).
3. Observe the missing error handling when a network request fails (e.g., by using a wrong URL or disconnecting from the internet). 

## Solution

The solution involves using `try-catch` blocks to handle potential exceptions during the asynchronous operation.  Furthermore, checking the HTTP response status code ensures that the API call was successful.  The improved code gracefully handles potential errors and provides informative messages.