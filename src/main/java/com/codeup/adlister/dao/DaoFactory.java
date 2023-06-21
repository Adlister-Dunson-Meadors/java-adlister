package com.codeup.adlister.dao;

public class DaoFactory {
    private static Ads adsDao;
    private static Config config = new Config();

    public static Ads getAdsDao() {
        if (adsDao == null) {
            adsDao = new MySQLAdsDao(config);
        }
        return adsDao;
    }

    public static Products getProductsDao(){
        if(productsDao == nulll){
            productsDao = (Products) new MySQLProdictsDao(config);
        }
        return productsDao;
    }
}
