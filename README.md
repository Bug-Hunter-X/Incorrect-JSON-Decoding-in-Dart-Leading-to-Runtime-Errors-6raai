# Incorrect JSON Decoding in Dart

This repository demonstrates a common error in Dart when handling HTTP responses and JSON decoding.  The code incorrectly uses `jsonDecode` without proper type checking, potentially leading to runtime errors.  The solution shows how to safely parse JSON responses and handle potential errors gracefully. 

## Bug
The `bug.dart` file shows the original code with the error.  The `jsonDecode` function is used without handling cases where the response may not be a valid JSON map, leading to a runtime error if the server returns something unexpected.

## Solution
The `bugSolution.dart` file presents the corrected code. The solution includes explicit type checking using `json.decode` and error handling to prevent runtime crashes and improve code reliability.