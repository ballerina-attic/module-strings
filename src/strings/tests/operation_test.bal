// Copyright (c) 2019 WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
//
// WSO2 Inc. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

import ballerina/test;
import ballerina/io;

string sampleString = "Hello World";
string upperCaseString = "HELLO WORLD";
string lowerCaseString = "hello world";

# Test function

@test:Config{}
function testIsEmpty () {
    io:println("-----------------Test case for isEmpty method------------------");

    boolean operationRes = isEmpty("");
    test:assertTrue(operationRes, msg = "Invalid response for isEmpty function!");
}

@test:Config{}
function testIsEmptyNegative () {
    io:println("-----------------Negative test case for isEmpty method------------------");

    boolean operationRes = isEmpty(sampleString);
    test:assertFalse(operationRes);
}

@test:Config{}
function testContains () {
    io:println("-----------------Test case for contains method------------------");

    boolean operationRes = contains(sampleString, "Hello");
    test:assertTrue(operationRes, msg = "Invalid Response: The substring 'Hello' is not found in the "
                    + sampleString + " !");
}

@test:Config{}
function testContainsNegative () {
    io:println("-----------------Negative test case for contains method------------------");

    boolean operationRes = contains(sampleString, "Ballerina");
    test:assertFalse(operationRes);
}

@test:Config{}
function testToUpperCase () {
    io:println("-----------------Test case for toUpperCase method------------------");

    string operationRes = toUpperCase(sampleString);
    test:assertEquals(operationRes, upperCaseString, msg = "String is not converted to upper case!");
}

@test:Config{}
function testToLowerCase () {
    io:println("-----------------Test case for toLowerCase method------------------");

    string operationRes = toLowerCase(sampleString);
    test:assertEquals(operationRes, lowerCaseString, msg = "String is not converted to lower case!");
}

@test:Config{}
function testReplace () {
    io:println("-----------------Test case for replace method------------------");

    string operationRes = replace(sampleString, "World", "Ballerina");
    test:assertEquals(operationRes, "Hello Ballerina", msg = "Replace function is failed!");
}

@test:Config{}
function testReplaceNegative () {
    io:println("-----------------Negative test case for replace method------------------");

    string operationRes = replace(sampleString, "Hai", "Ballerina");
    test:assertEquals(operationRes, sampleString);
}
