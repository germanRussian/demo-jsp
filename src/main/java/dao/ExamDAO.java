package dao;

import java.sql.*;
import java.util.ArrayList;

/**
 * 데이터 관리
 * CRUD는 한 개의 메인에 들어가야한다.
 * 
 * 아래의 코드는 그것을 작업해 보도록 하겠다.
 */

import java.util.List;

import com.mysql.cj.x.protobuf.MysqlxConnection.Close;

import domain.ExamVO;
import util.DbUtil;

public class ExamDAO extends DbUtil {

	/**
	 * C:creat() - 등록하는 메소드 접근지정자 : publics param : 등록될 값 return :없음
	 * 
	 * @author smart17
	 *
	 */
	public void create(ExamVO vo)  {
		// 코드 작성

		

		StringBuffer sql = new StringBuffer();
		sql.append("\n INSERT INTO quiz");
		sql.append("\n (num, qs, an)");
		sql.append("\n VALUES(null, ?, ?)");

		Connection conn = null;
		PreparedStatement stmt = null;
		
		
		int idx = 1; // 0으로 시작할때는 ++inx 사용

		try {
			
			// DB연결
			conn = dbconn();

			// PrepareStatament(SQL작성 및 실행)
			stmt = conn.prepareStatement(sql.toString());

			// ?값 설정
			stmt.setString(idx++, vo.getQs());
			stmt.setString(idx++, vo.getAn());
			
			

			int res = stmt.executeUpdate();// 데이터 삽입

		} catch (Exception e) {

			e.printStackTrace();
		}

		finally {
//			DbUtil.dbClose(conn, stmt, null); //메소드 활용법
			dbClose(conn, stmt, null);// 상속을 활용법
			

		}

	}

	

	//일부 내용 가져오기 - 해당되는 게시물을 보기 위한 작업
	public List<ExamVO> read(String q) {
		// 코드 작성
		

		StringBuffer sql = new StringBuffer();
		sql.append(" SELECT * FROM quiz WHERE qs like ? ");

		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		ExamVO examvo = null;
		List<ExamVO> list = new ArrayList<ExamVO>();
				

		try {
			
			// 연결
			conn = dbconn();
			
			// PreparedStatment(SQL문 + 실행)
			stmt = conn.prepareStatement(sql.toString());

			stmt.setString(1, "%"+q+"%");

			rs = stmt.executeQuery();
			
			while(rs.next()) {
				examvo = new ExamVO(
						
						rs.getInt("num"),
						rs.getString("qs"), 
						rs.getString("an")
						
						);
				list.add(examvo);

			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {

			dbClose(conn, stmt, null);// 상속을 활용법
		}

		// 코드작성 끝
		return list;

	}

}
