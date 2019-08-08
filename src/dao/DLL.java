package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.Guest;

public class DLL {
	private static Connection connection = ConnectionManager.getInstance().getConnection();
	private static String query;

	public static boolean LogCheck(String table, String nick, String pass) throws SQLException {
		query = "SELECT * FROM " + table;
		ResultSet rs = null;
		boolean maybe;
		try (Statement statement = connection.createStatement();) {
			rs = statement.executeQuery(query);
			while (rs.next()) {
				if (nick.equals(rs.getString("Nickname"))) {
					if (pass.equals(rs.getString("Password"))) {
						maybe = true;
					}
				}
			}
		} finally {
			rs.close();
		}
		maybe = false;
		return maybe;
	}

	public static List<Guest> SearchBy(String by, String value) throws SQLException {
		List<Guest> list = new ArrayList<>();
		query = "SELECT * FROM guests WHERE " + by + " = '" + value + "'";
		ResultSet rs = null;
		try (Statement statement = connection.createStatement()) {
			rs = statement.executeQuery(query);
			while (rs.next()) {
				list.add(new Guest(rs.getInt("Id"), rs.getString("Password"), rs.getString("Name"),
						rs.getString("Nickname")));
			}
		} finally {
			rs.close();
		}
		return list;
	}

	public static int ServCheck(int userId) throws SQLException {
		query = "SELECT * FROM checks where guest = '" + userId + "'";
		ResultSet rs = null;
		int sum = 0;
		try (Statement statement = connection.createStatement()) {
			rs = statement.executeQuery(query);
			while (rs.next()) {
				sum += rs.getInt("serv");
			}
		} finally {
			rs.close();
		}
		return sum;
	}
	

	
}
