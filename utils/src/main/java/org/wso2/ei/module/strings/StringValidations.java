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
