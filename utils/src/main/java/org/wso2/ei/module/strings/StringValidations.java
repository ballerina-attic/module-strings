/*
 * Copyright (c) 2019, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
 *
 * WSO2 Inc. licenses this file to you under the Apache License,
 * Version 2.0 (the "License"); you may not use this file except
 * in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied. See the License for the
 * specific language governing permissions and limitations
 * under the License.
 *
 */

package org.wso2.ei.module.strings;

import com.google.common.net.InetAddresses;
import org.apache.commons.validator.routines.EmailValidator;
import org.apache.commons.validator.routines.UrlValidator;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.net.InetAddress;
import java.net.UnknownHostException;

public class StringValidations {
    private static final Logger log = LoggerFactory.getLogger(StringValidations.class);

    private StringValidations() {}

    public static boolean validateEmail(String email) {
        return EmailValidator.getInstance().isValid(email);
    }

    public static boolean validateIP(String ip) {
        return InetAddresses.isInetAddress(ip);
    }

    public static boolean containsIP(String ip, String... ipList) {
        for (int i = 0; i < ipList.length; i++) {
            try {
                return InetAddress.getByName(ip).equals(InetAddress.getByName(ipList[i]));
            } catch (UnknownHostException e) {
                log.info("Validation failed : " + e.getMessage());
            }
        }
        return false;
    }

    public static boolean validateURL(String url) {
        UrlValidator urlValidator = new UrlValidator();
        return urlValidator.isValid(url);
    }
}
