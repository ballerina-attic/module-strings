import ballerina/io;
import ballerinax/java;

# Check whether the email is valid.
#
# + email - The email value to validate
# + return - Boolean flag indicating whether the email is valid.
public function isEmail(string email) returns boolean {
    return validateEmail(java:fromString(email));
}

function validateEmail(handle jString) returns boolean = @java:Method {
    name: "validateEmail",
    class: "org.wso2.ei.module.strings.StringValidations"
} external;
