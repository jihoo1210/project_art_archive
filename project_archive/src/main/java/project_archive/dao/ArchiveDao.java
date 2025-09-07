package project_archive.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import project_archive.connection.JndiDb;

public class ArchiveDao {
	
	// 회원 정보 추가(회원 가입)
	public int doResister(String userid, String password) throws SQLException {
		String sql = "INSERT INTO users (userid, password) VALUES (?, ?)";
		try(Connection con = JndiDb.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql)) {
			pstmt.setString(1, userid);
			pstmt.setString(2, password);
			int rs =pstmt.executeUpdate();
			System.out.println(rs);
			return  rs;
		}
	}
	
}
