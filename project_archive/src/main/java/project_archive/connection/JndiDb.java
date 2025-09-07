package project_archive.connection;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class JndiDb {
	private static DataSource ds =null;
	
	static { // 클래스 메모리 로드 시 한 번만 실행
		try {
		Context initContext = new InitialContext(); // JNDI의 시작점
		Context envContext = (Context) initContext.lookup("java:/comp/env"); // 로컬 환경 설정 네임스페이스(context.xml)에 접근
		ds = (DataSource) envContext.lookup("jdbc/project_archive_db"); //로컬 환경 설정 네임스페이스(context.xml)에서 jdbc/project_archive_db이름의 데이터 소스 반환
		} catch (NamingException e) {
			System.err.println("JndiDb에서 오류 발생: " + e);
		}
	}
	
	public static Connection getConnection() throws SQLException {
		if(ds == null) {
			throw new SQLException("데이터 베이스가 초기화 되지 않았습니다.");
		}
		return ds.getConnection();
	}
}
