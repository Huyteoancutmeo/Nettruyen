/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import Model.Category;
import Model.CategoryStory;
import Model.Story;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author mgnd3
 */ 
public class DAO extends DBContext {
    //Home
    public List<Story> getLimit(){
        List<Story> list = new ArrayList<>();
        String sql="SELECT * FROM stories.story limit 10";
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                Story s = new Story(rs.getInt("id"),
                                    rs.getString("name"),
                                    rs.getString("image"),
                                    rs.getString("view"),
                                    rs.getString("comment"),
                                    rs.getString("like"));         
               list.add(s);
            }
        }catch(SQLException e){
            System.out.println(e);
        }
        return list;
    }
    //Home
    public List<Story> getPage(int page){
        List<Story> list = new ArrayList<>();
        String sql="SELECT * FROM stories.story limit ?,20";
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, (page-1)*4);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                Story s = new Story(rs.getInt("id"),
                                    rs.getString("name"),
                                    rs.getString("image"),
                                    rs.getString("view"),
                                    rs.getString("comment"),
                                    rs.getString("like"));                    
                list.add(s);
            }
        }catch(SQLException e){
            System.out.println(e);
        }
        return list;
    }
    //truyen-tranh,the_loai
    public Story getStoryByName(String name) {
        String sql="""
                   SELECT * FROM stories.story
                    WHERE name=?""";
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            ResultSet rs=st.executeQuery();
            if (rs.next()){
                Story s = new Story(rs.getInt("id"),
                                    rs.getString("name"),
                                    rs.getString("image"),
                                    rs.getString("view"),
                                    rs.getString("comment"),
                                    rs.getString("like"));         
                return s;
            }
        }catch(SQLException e){
            System.out.println(e);
        }
        return null;
    }
    
    public Story getStoryById(int id) {
        String sql="""
                   SELECT * FROM stories.story
                    WHERE id=?""";
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs=st.executeQuery();
            if (rs.next()){
                Story s = new Story(rs.getInt("id"),
                                    rs.getString("name"),
                                    rs.getString("image"),
                                    rs.getString("view"),
                                    rs.getString("comment"),
                                    rs.getString("like"));         
                return s;
            }
        }catch(SQLException e){
            System.out.println(e);
        }
        return null;
    }
    //Home
    public List<Category> getCategory() {
        List<Category> list = new ArrayList<>();
        String sql = "SELECT * FROM stories.category";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs=st.executeQuery();
            while(rs.next()) {
                Category c = new Category(rs.getInt("id"),
                                          rs.getString("name"),
                                          rs.getString("description"));
                list.add(c);
            }
        }catch(SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    //the_loai
    public Category getCategoryByName(String name) {
        String sql = "SELECT * FROM stories.category_story WHERE name=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            ResultSet rs=st.executeQuery();
            if(rs.next()) {
                Category c = new Category(rs.getInt("id"),
                                          rs.getString("name"),
                                          rs.getString("description"));
                return c;
            }
        }catch(SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    //the_loai
    public List<Story> getStoryByNameCategory(String nameCategory) {
        List<Story> list = new ArrayList<>();
        String sql = "SELECT * FROM stories.category_story WHERE category=?";
        
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, nameCategory);
            ResultSet rs=st.executeQuery();
            while(rs.next()) {
                CategoryStory c;
                c = new CategoryStory(rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("category"));
                String nameStory = c.getName();
                Story s = getStoryByName(nameStory);
                list.add(s);
            }
        }catch(SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    //truyen-tranh
    public List<CategoryStory> getListCategoryByName(String name) {
        List<CategoryStory> list = new ArrayList<>();
        String sql = "SELECT * FROM stories.category_story WHERE name=?";
        
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            ResultSet rs=st.executeQuery();
            while(rs.next()) {
                CategoryStory c;
                c = new CategoryStory(rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("category"));
                list.add(c);
            }
        }catch(SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    //Tim_kiem
    public List<Story> searchStory(String key) {
        List<Story> list = new ArrayList<>();
        String sql = "SELECT * FROM stories.story "
                + "WHERE name like '%"+key+"%'";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs=st.executeQuery();
            while(rs.next()) {
                Story s = new Story(rs.getInt("id"),
                                    rs.getString("name"),
                                    rs.getString("image"),
                                    rs.getString("view"),
                                    rs.getString("comment"),
                                    rs.getString("like"));      
                list.add(s);
            }
        }catch(SQLException e) {
            System.out.println(e);
        }
        return list;
    }
}
