package com.codeup.adlister.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import com.codeup.adlister.models.Ad;
import com.mysql.cj.jdbc.Driver;



public class MySQLAdsDao implements Ads {
    private Connection connection;

//    public MySQLAdsDao(Config config) {
//        try {
//            String url = config.getUrl();
//            String username = config.getUser();
//            String password = config.getPassword();
//
//            connection = DriverManager.getConnection(url, username, password);
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }


    public MySQLAdsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }



//    @Override
//    public List<com.codeup.adlister.models.Ad> all() {
//        List<com.codeup.adlister.models.Ad> ads = new ArrayList<>();
//
//        try {
//            String query = "SELECT * FROM ads";
//            PreparedStatement statement = connection.prepareStatement(query);
//            ResultSet resultSet = statement.executeQuery();
//
//            while (resultSet.next()) {
//                int id = resultSet.getInt("id");
//                String title = resultSet.getString("title");
//                String content = resultSet.getString("content");
//                // Assuming com.codeup.adlister.models.Ad constructor takes id, title, and content as parameters
//                com.codeup.adlister.models.Ad ad = new com.codeup.adlister.models.Ad(id, title, content);
//                ads.add(ad);
//            }
//            resultSet.close();
//            statement.close();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return ads;
//    }

    @Override
    public List<Ad> all() {
        try {
            Statement stm = connection.createStatement();
            String selectAds = "SELECT * FROM ads";
            ResultSet rs = stm.executeQuery(selectAds);
            List<Ad> allAds = new ArrayList<>();
            while (rs.next()) {
                allAds.add(new Ad(rs.getLong("id"), rs.getLong("user_id"), rs.getString("title"), rs.getString("description")));
            }
            return allAds;
        } catch (SQLException e) {
            throw new RuntimeException("Error creating connection ");
        }
    }



//@Override
//    public Long insert(com.codeup.adlister.models.Ad ad) {
//        try {
//            String query = "INSERT INTO ads (title, content) VALUES (?, ?)";
//            PreparedStatement statement = connection.prepareStatement(query);
//            statement.setString(1, ad.getTitle());
//            statement.setString(2, ad.getContent());
//            statement.executeUpdate();
//            statement.close();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return null;
//    }
//}


//    @Override
//    public Long insert(Ad ad) {
//        try {
//            Statement stmt = connection.createStatement();
//            stmt.executeUpdate(createInsertQuery(ad), Statement.RETURN_GENERATED_KEYS);
//            ResultSet rs = stmt.getGeneratedKeys();
//            rs.next();
//            return rs.getLong(1);
//        } catch (SQLException e) {
//            throw new RuntimeException("Error creating a new ad.", e);
//        }
//    }

    @Override
    public Long insert(Ad ad) {
        try {
            Statement stm = connection.createStatement();
            String insertQuery = String.format("INSERT INTO ads (user_id, title, description) VALUES('%s', '%s', '%s')", ad.getUserId(), ad.getTitle(), ad.getDescription());
            stm.executeUpdate(insertQuery, Statement.RETURN_GENERATED_KEYS);
            ResultSet rs = stm.getGeneratedKeys();
            if (rs.next()) {
                System.out.println("insert id " + rs.getLong(1));
            }
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error adding ad");
        }
    }


}







