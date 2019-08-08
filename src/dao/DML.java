package dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Date;

import model.Accommodation;

public class DML {
	private static Connection connection = ConnectionManager.getInstance().getConnection();
	private static String query;

	public static void NewGuest(int id, String name, String surname, int age, Accommodation accomm, String pass,
			String nickname) {
		Date date = new Date(System.currentTimeMillis());
		query = "INSERT INTO guests VALUES (default,'" + name + "','" + surname + "','" + nickname + "','" + pass + "',"
				+ age + "," + date + "," + id + "";
	}

	public static void DeleteChecks(int userId) throws SQLException {
		query = "DELETE * FROM checks WHERE guest = " + userId;
		try (Statement statement = connection.createStatement()) {
			statement.executeUpdate(query);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}
}
