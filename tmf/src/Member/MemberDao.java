package Member;

import java.sql.*;

import util.Conn;

public class MemberDao {
	public int idCheck(String id) {
		int rst=0;
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try {
			conn=Conn.getConnection();
			String sql="select * from `customer` where c_id=?";
			ps=conn.prepareStatement(sql);
			ps.setString(0, id);
			rs=ps.executeQuery();
			if(rs.next()) {
				rst=1;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			Conn.close(ps, conn);
		}
		return rst;
	}
}