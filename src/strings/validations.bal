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

# Check whether the email is valid.
#
# + email - The email value to validate
# + return - Boolean flag indicating whether the email is valid.
public function isEmail(string email) returns boolean {
    return validateEmail(java:fromString(email));
}

# Check whether the IP is valid.
#
# + ip - The IP value to validate
# + return - Boolean flag indicating whether the IP is valid.
public function isIP(string ip) returns boolean {
    return validateIP(java:fromString(ip));
}

# Check whether the ip is exist.
#
# + ip - The ip value to validate
# + ipList - The ip List
# + return - Boolean flag indicating whether the ip is existed.
public function isIPExist(string ip, string[] ipList) returns boolean {
    return containsIP(ip, ...ipList);
}

# Check whether the URL is valid.
#
# + url - The URL value to validate
# + return - Boolean flag indicating whether the URL is valid.
public function isURL(string url) returns boolean {
    return validateURL(java:fromString(url));
}

function validateEmail(handle jString) returns boolean = @java:Method {
    name: "validateEmail",
    class: "org.wso2.ei.module.strings.StringValidations"
} external;

function validateIP(handle jString) returns boolean = @java:Method {
    name: "validateIP",
    class: "org.wso2.ei.module.strings.StringValidations"
} external;

function containsIP(string jString, string... ipList) returns boolean = @java:Method {
    name: "containsIP",
    class: "org.wso2.ei.module.strings.StringValidations"
} external;

function validateURL(handle jString) returns boolean = @java:Method {
    name: "validateURL",
    class: "org.wso2.ei.module.strings.StringValidations"
} external;
