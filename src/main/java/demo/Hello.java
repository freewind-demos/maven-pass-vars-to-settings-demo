package demo;

import org.apache.commons.lang3.StringUtils;

public class Hello {

    public String greeting(String name) {
        return "Hello, " + StringUtils.capitalize(name) + "!";
    }
}
