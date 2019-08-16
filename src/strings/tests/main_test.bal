import ballerina/test;
import ballerina/io;

# Before Suite Function

string [] ipList = ["172.300.9.28", "172.8.9.28"];

# Test function

@test:Config{}
function testEmailValidation () {
    io:println("-----------------Test case for isEmail method------------------");

    boolean validationRes = isEmail("joe@wso2.com");
    test:assertTrue(validationRes, msg = "Not a valid email!");
}

@test:Config{}
function testEmailValidationWithInvalidEmail () {
    io:println("-----------------Negative test case for isEmail method------------------");

    boolean validationRes = isEmail("user#domain.com");
    test:assertFalse(validationRes);
}

@test:Config{}
function testIPValidationWithIPv4 () {
    io:println("-----------------Test case for isIP method with IPv4 IP------------------");

    boolean validationRes = isIP("172.8.9.28");
    test:assertTrue(validationRes, msg = "Not a valid IPv4 IP!");
}

@test:Config{}
function testIPValidationWithIPv6 () {
    io:println("-----------------Test case for isIP method with IPv6 IP------------------");

    boolean validationRes = isIP("2001:0db8:85a3:0000:0000:8a2e:0370:7334");
    test:assertTrue(validationRes, msg = "Not a valid IPv6 IP!");
}

@test:Config{}
function testIPValidationWithInvalidIPv4 () {
    io:println("-----------------Negative test case for isIP method with IPv4 IP------------------");

    boolean validationRes = isIP("42.16.123.256");
    test:assertFalse(validationRes);
}

@test:Config{}
function testIPValidationWithInvalidIPv6 () {
    io:println("-----------------Negative test case for isIP method with IPv6 IP------------------");

    boolean validationRes = isIP("2607:f380:a58:ffff:::1");
    test:assertFalse(validationRes);
}

@test:Config{}
function testIPExistence () {
    io:println("-----------------Test case for isIPExist method------------------");

    boolean validationRes = isIPExist("172.8.9.28", ipList);
    test:assertTrue(validationRes, msg = "This IP is not found!");
}

@test:Config{}
function testIPExistenceWithNewIP () {
    io:println("-----------------Negative test case for isIPExist method------------------");

    boolean validationRes = isIPExist("2001:0db8:85a3:0000:0000:8a2e:0370:7334", ipList);
    test:assertFalse(validationRes);
}

@test:Config{}
function testURLValidation () {
    io:println("-----------------Test case for isURL method------------------");

    boolean validationRes = isURL("http://www.wso2.com");
    test:assertTrue(validationRes, msg = "Not a valid URL!");
}

@test:Config{}
function testURLValidationWithInvalidURL () {
    io:println("-----------------Negative test case for isURL method------------------");

    boolean validationRes = isURL("http//www.oops.com");
    test:assertFalse(validationRes);
}