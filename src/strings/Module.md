# Module Overview

The `wso2/strings` module provides an API to do string validations and string operations from Ballerina.

**String Validations**

Currently, following string validations are supported through this module.

 - isEmail : Email validation.
 - isIP : IP validation.
 - isIPExist : Check existence of IP in the IP list.
 - isURL : URL validation.

 Also following string operations are supported through this module.

  - isEmpty : Check whether the string is empty or not.
  - contains : Check whether string contains the specified substring.
  - toUpperCase : Convert characters to uppercase.
  - toLowerCase : Convert characters to lowercase.
  - replace : Replace the substring with another.

## Compatibility

|                             |       Version               |
|:---------------------------:|:---------------------------:|
| Ballerina Language          | 0.992.0                     |

## Sample

Following is a simple Ballerina program for validating the *Email address*.

```ballerina
import ballerina/log;
import wso2/strings;

public function main () {
    boolean validationRes = strings:isEmail("joe@wso2.com");
    log:printInfo("Result of the email validation is: " + validationRes);
}
```

Following is a the Ballerina program for the string operation *contains*.

```ballerina
import ballerina/log;
import wso2/strings;

public function main () {
    string sampleString = "Hello World";
    boolean operationRes = strings:contains(sampleString, "Ballerina");
    log:printInfo("Result of the contains function is: " + operationRes);
}
```
