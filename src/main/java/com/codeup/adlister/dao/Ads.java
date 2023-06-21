package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();

//    List<com.codeup.adlister.models.Ad> getAllAds();

    // insert a new ad and return the new ad's id
//    Long insert(Ad ad);

    Long insert(Ad ad);
}
