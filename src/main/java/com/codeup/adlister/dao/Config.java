package com.codeup.adlister.dao;

public class Config {
//    private String url;
//    private String username;
//    private String password;
//
//    public Config(String url, String username, String password) {
//        this.url = url;
//        this.username = username;
//        this.password = password;
//    }
//
//    public String getUrl() {
//        return url;
//    }
//
//    public String getUsername() {
//        return username;
//    }
//
//    public String getPassword() {
//        return password;
//    }
//}


    public String getUrl() {
        return "jdbc:mysql://studentdb.fulgentcorp.com:3306/cerberus_jakira?allowPublicKeyRetrieval=true&useSSL=false";
    }

    public String getUser() {

        return "cerberus_jakira";
    }

    public String getPassword() {

        return ",oy,d8Rs7i3y_HN";
    }
}