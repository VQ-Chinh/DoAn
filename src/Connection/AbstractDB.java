package Connection;

import java.sql.Connection;

public class AbstractDB {
	protected Connection con;
	
	public AbstractDB(){
		this.con = new ConnectionDB().getConnect();
	}
	public void openConnection(){
		con = new ConnectionDB().getConnect();
	}
}
