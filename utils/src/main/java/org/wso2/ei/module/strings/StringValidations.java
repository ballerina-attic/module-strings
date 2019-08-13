package org.wso2.ei.module.strings;

import org.apache.commons.validator.routines.EmailValidator;

public class StringValidations {

    private StringValidations() {}

    public static boolean validateEmail(String input) {
        return EmailValidator.getInstance().isValid(input);
    }
}
