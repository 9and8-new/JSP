package Utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Dtos.MemberDto;

public class DbUtils {
	//속성(DB 연결관련된 멤버)
	//DB CONN DATA
	private static String id = "root";
	private static String pw = "1234";
	private static String url = "jdbc:mysql://localhost:3306/opendatadb";

	//JDBC참조변수
	private static Connection conn = null; // DBMS 의 특정 DB와 연결되는 객체
	private static PreparedStatement pstmt = null; // SQL Query 전송용 객체
	private static ResultSet rs = null; // Select 결과물 담을 객체
	
	//기능
	// DB연결을 하기위한 함수생성
	public static void conn() throws Exception
	{
		//드라이브 클래스 메모리 공간 적재
		Class.forName("com.mysql.cj.jdbc.Driver");
		//Connection conn 멤버에 Connection 객체 연결
		conn = DriverManager.getConnection(url,id,pw);
	}
	
	// DB연결 해제를 위한 함수생성
	public static void disConn() throws Exception {
		//rs / pstmt / conn close 처리 
		if (rs != null) rs.close();
	    if (pstmt != null) pstmt.close();
	    if (conn != null) conn.close();
	}	
	
	// 값을 받아서 tbl_member에 전송
	public static int insertMember(MemberDto memberDto) throws Exception 
	{
		//tbl_member 에 dto 값 저장 후 int 반환
		pstmt = conn.prepareStatement("insert into tbl_member values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?) ");
		pstmt.setString(1, memberDto.getUserid());
		pstmt.setString(2, memberDto.getPassword());
		pstmt.setString(3, memberDto.getUsername());
		pstmt.setString(4, memberDto.getZipcode());
		pstmt.setString(5, memberDto.getAddr1());
		pstmt.setString(6, memberDto.getAddr2());
		pstmt.setString(7, memberDto.getPhone1());
		pstmt.setString(8, memberDto.getPhone2());
		pstmt.setString(9, memberDto.getPhone3());
		pstmt.setString(10, memberDto.getTel1());
		pstmt.setString(11, memberDto.getTel2());
		pstmt.setString(12, memberDto.getTel3());
		pstmt.setString(13, memberDto.getEmail());
		pstmt.setString(14, memberDto.getYear());
		pstmt.setString(15, memberDto.getMonth());
		pstmt.setString(16, memberDto.getDay());
		return pstmt.executeUpdate(); // SQl로 전송하는 역활
	}
	
	// 문자열인 userid를 받아서 기존 tbl_member에 없다면 MemberDto단위에 null값을 반환
	public static MemberDto selectMember(String userid) throws Exception{	
		//tbl_member 에 userid 와 일치하는 데이터 받아와 MemberDto로 반환
		pstmt = conn.prepareStatement("select * from tbl_member where userid = ?");
		pstmt.setString(1, userid);
		rs = pstmt.executeQuery();
		MemberDto beer = null;
		if(rs != null && rs.next() ) {
		beer = new MemberDto();
		beer.setUserid(rs.getString("userid"));
		beer.setPassword(rs.getString("password"));
		beer.setUsername(rs.getString("username"));
		beer.setZipcode(rs.getString("zipcode"));
		beer.setAddr1(rs.getString("addr1"));
		beer.setAddr2(rs.getString("addr2"));
		beer.setPhone1(rs.getString("phone1"));
		beer.setPhone2(rs.getString("phone2"));
		beer.setPhone3(rs.getString("phone3"));
		beer.setTel1(rs.getString("tel1"));
		beer.setTel2(rs.getString("tel2"));
		beer.setTel3(rs.getString("tel3"));
		beer.setEmail(rs.getString("email"));
		beer.setYear(rs.getString("year"));
		beer.setMonth(rs.getString("month"));
		beer.setDay(rs.getString("day"));
		}
		return beer;
	}
	
	public static void TxStart() throws Exception{
		if(conn!=null)
			conn.setAutoCommit(false);
	}
	public static void TxEnd() throws Exception {
		if(conn!=null)
			conn.commit();
	}
	public static void RollBack() throws Exception {
		if(conn!=null)
			conn.rollback();	
	}
	
}