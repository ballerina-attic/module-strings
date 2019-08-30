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

import ballerina/io;
import ballerinax/java;

# Returns a Boolean value indicating whether a string is empty or not.
#
# + stringValue - The string to check whether it is empty.
# + return - True if the string is an empty value; false otherwise.
public function isEmpty(string stringValue) returns boolean {
    return isEmptyString(stringValue);
}

# Returns a Boolean value indicating whether a string contains the specified substring.
#
# + mainString - The string to check the existence of the substring.
# + substring - The substring to be compared.
# + return - True if the string contains the substring; false otherwise.
public function contains(string mainString, string substring) returns boolean {
    return isFound(mainString, substring);
}

# Returns a string with all the characters converted to uppercase.
#
# + stringValue - The string to be converted.
# + return - The string converted to uppercase.
public function toUpperCase(string stringValue) returns string {
    return toUpper(stringValue);
}

# Returns a string with all the characters converted to lowercase.
#
# + stringValue - The string to be converted.
# + return - The string converted to lowercase.
public function toLowerCase(string stringValue) returns string {
    return toLower(stringValue);
}

# Replaces all instances of the replacePattern string with the replaceWith string.
#
# + regex - The pattern to search for.
# + replaceWith - The replacement string.
# + return - The derived string.
public function replace(string originalString, string regex, string replaceWith) returns string {
    return replaceString(originalString, regex, replaceWith);
}

function isEmptyString(string stringValue) returns boolean = @java:Method {
    name: "isEmpty",
    class: "org.wso2.ei.module.strings.StringOperations"
} external;

function isFound(string mainString, string substring) returns boolean = @java:Method {
    name: "contains",
    class: "org.wso2.ei.module.strings.StringOperations"
} external;

function toUpper(string originalString) returns string = @java:Method {
    name: "toUpperCase",
    class: "org.wso2.ei.module.strings.StringOperations"
} external;

function toLower(string originalString) returns string = @java:Method {
    name: "toLowerCase",
    class: "org.wso2.ei.module.strings.StringOperations"
} external;

function replaceString(string originalString, string regex, string replaceWith) returns string = @java:Method {
    name: "replace",
    class: "org.wso2.ei.module.strings.StringOperations"
} external;
