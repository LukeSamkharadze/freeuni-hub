package DataBaseConnection;


public interface DataBaseInfo {
    String USER = "root"; // enter your username
    String PASSWORD = "root"; // enter your password
    String BASE = "freeuni-hub"; // enter your base
    String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    String URL = "jdbc:mysql://freeuni-hub-db:3306/"; // needs base
}
