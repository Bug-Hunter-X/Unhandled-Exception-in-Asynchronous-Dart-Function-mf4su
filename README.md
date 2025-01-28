# Unhandled Exception in Asynchronous Dart Function

This repository demonstrates a common error in Dart: improper exception handling in asynchronous functions. The `fetchData` function uses `http` to fetch data.  However, it doesn't fully handle errors, specifically those related to JSON decoding and network issues.  This example shows the incorrect approach and provides a corrected version.

## Bug

The `bug.dart` file contains the flawed code which lacks comprehensive error handling.  It may throw a `FormatException` if the API response isn't valid JSON or other exceptions during network requests.  The `rethrow` statement may not be handled gracefully higher up the call stack.

## Solution

The `bugSolution.dart` file provides a refined version of the function with enhanced error handling and verification before decoding the JSON response.  This robust approach prevents application crashes from unexpected data formats or network problems.