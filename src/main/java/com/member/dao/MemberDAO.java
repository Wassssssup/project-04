package com.member.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.member.dto.MemberDTO;

public class MemberDAO {
	public MemberDAO() {
		
	}
	
	private static MemberDAO instance = new MemberDAO();
	
	public static MemberDAO getInstance() {
		return instance;
	}
	
	Connection getConnection() {
		Connection conn=null;
		Context initContext;
		
		try {
			initContext=new InitialContext();
			DataSource ds=(DataSource)initContext.lookup("java:/comp/env/jdbc/Oracle11g");
			conn=ds.getConnection();
		}catch(NamingException e) {
			e.printStackTrace();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return conn;
	}
	
	public MemberDTO getMember(String id) {
		MemberDTO member=null;
		
		Connection conn=null;
		String sql="select * from testMember where id=?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn=getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				member=new MemberDTO();
				member.setId(rs.getString("id"));
				member.setPass(rs.getString("pass"));
				member.setName(rs.getString("name"));
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return member;
	}
	
	public int userCheck(String id,String pass) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		int result = 1;
		
		String sql="select * from testMember where id=?";
		try {
			
			conn= getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, "id");
			
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				if("pass".equals(rs.getString("pass"))) {
					result=1;	//로그인 성공
				}else {
					result=-1;
				}
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	
	
	public int updateMember(MemberDTO mDTO) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		int result=-1;
		
		String sql="update testMember set pass=?,name=? where id=?";
		
		try {
			conn=getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, mDTO.getPass());
			pstmt.setString(2, mDTO.getName());
			pstmt.setString(3, mDTO.getId());
			
			
			result = pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(pstmt != null)
					pstmt.close();
				if(conn != null)
					conn.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}
	
	public int deleteMember(MemberDTO mDTO) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		int result=-1;
		
		String sql="delete from testMember where id=?";
		try {
			conn=getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, mDTO.getId());
			
			result = pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	
	public int insertMemeber(MemberDTO MDTO) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs = null;
		
		int result = 0;
		String sql="insert into testMember values (?,?,?)";
		
		try {
			conn=getConnection();
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1,MDTO.getId());
			pstmt.setString(2,MDTO.getPass());
			pstmt.setString(3,MDTO.getName());
			
			result = pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				pstmt.close();
				conn.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}
	
	public List listmembers(MemberDTO mDTO) {
		List<MemberDTO> membersList = new ArrayList<MemberDTO>();
		Connection conn=null;
		PreparedStatement pstmt=null;
		
		String sql = "select * from testMember";
		String name1 = mDTO.getName();
		try {
			conn=getConnection();
			if((name1 != null && name1.length() !=0)) {
				sql += " where name=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, name1);
			}else {
				pstmt = conn.prepareStatement(sql);
			}
			ResultSet rs= pstmt.executeQuery();
			while(rs.next()) {
				String id = rs.getString("id");
				String pass = rs.getString("pass");
				String name = rs.getString("name");
				
				MemberDTO mdto = new MemberDTO();
				mdto.setId(id);
				mdto.setPass(pass);
				mdto.setName(name);
				
				membersList.add(mdto);
			}
			rs.close();
			pstmt.close();
			conn.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return membersList;
	}
}
