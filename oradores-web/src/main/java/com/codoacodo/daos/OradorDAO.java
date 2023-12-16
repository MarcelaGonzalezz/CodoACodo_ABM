package com.codoacodo.daos;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.codoacodo.connection.AdministradorDeConexiones;
import com.codoacodo.dto.Orador;
import java.sql.PreparedStatement;

public class OradorDAO {

        private static final String SQL_DELETE = "DELETE FROM ORADORES WHERE ID_ORADOR =";
	/*metodos del crud*/
	public Orador obtenerPorId(Integer id) {
		String sql = "SELECT * FROM ORADORES WHERE ID_ORADOR="+id;
		
		//Connection
		Connection con = AdministradorDeConexiones.getConnection();
	
		Orador oradorFromDb = null;
		
		//Statement
		try {
			Statement st = con.createStatement();
			
			//resultset
			ResultSet rs = st.executeQuery(sql);
			
			//VIENE UN SOLO REGISTRO!!!
			
			if(rs.next()) {//si existe, hay uno solo
				// rs > sacando los datos
				Integer id_orador = rs.getInt(1);//tomar la primer columna
                                String nombre = rs.getString(2);
				String apellido = rs.getString(3);
				String email = rs.getString(4);
				String tema = rs.getString(5);
				Date fecha_alta = rs.getDate(6);
				
				//campos crear un objeto????
				oradorFromDb = new Orador(id_orador,nombre,apellido,email,tema,fecha_alta);
			}
		} catch (SQLException e) {
			// ERRORES
			e.printStackTrace();
		}
		return oradorFromDb;
	}
	

	/*metodos del crud*/
	public List<Orador> listarOradores() {
		String sql = "SELECT * FROM ORADORES ";
		
		//Connection
		Connection con = AdministradorDeConexiones.getConnection();
	
		List<Orador> list = new ArrayList<>();
		
		//Statement
		try {
			Statement st = con.createStatement();
			
			//resultset
			ResultSet rs = st.executeQuery(sql);
			
			
			
			while(rs.next()) {//
				// rs > sacando los datos
				Integer id = rs.getInt(1);//tomar la primer columna
				
                                String nombre = rs.getString(2);
				String apellido = rs.getString(3);
				String email = rs.getString(4);
				String tema = rs.getString(5);
				Date fecha_alta = rs.getDate(6);
				
				//campos crear un objeto????
				Orador oradorFromDb = new Orador(id,nombre,apellido,email,tema,fecha_alta);
				
				//agrego a la lista 
				list.add(oradorFromDb);
			}			
			
			//cierro la conexion
			con.close();
		} catch (SQLException e) {
			// ERRORES
			e.printStackTrace();
		}
		return list;
	}

	/*crear un orador en la db*/
	public void crearOrador(String nombre, String apellido, String email, String tema) {
		
		Connection con = AdministradorDeConexiones.getConnection();
		
		if(con != null) { 
			// insert en la db > SQL: INSERT INTO....
			String sql = "INSERT INTO ORADORES (nombre,apellido,email,tema,fecha_alta) ";
			sql += "VALUES('"+nombre+"','"+apellido+"','"+email+"','"+tema+"',CURRENT_DATE)";
			
			//control de errores
			try {
				Statement st = con.createStatement();			
				st.execute(sql);
				
				//cierre de conexion
				con.close();
				
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	public void actualizarOrador(Integer id_orador, String nombre, String apellido, String email, String tema) {
		Connection con = AdministradorDeConexiones.getConnection();
		if(con != null) { 
			String sql = "UPDATE ORADORES "
					+ " set nombre='"+nombre+"',"
					+ " apellido='"+apellido+"',"
                                        + " email='"+ email+"',"
					+ " tema='"+ tema +"'"
					+ " WHERE id_orador = "+id_orador+"";		
		
			try {
				Statement st = con.createStatement();			
				st.executeUpdate(sql);
				con.close();
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

        public Integer eliminarOrador(Integer id) {
        Connection conn = null;
        PreparedStatement stmt = null;
        int registros = 0;
        
        try{
            conn = AdministradorDeConexiones.getConnection();
            String sql= SQL_DELETE + "("+id+")";
            stmt = conn.prepareStatement(sql);
            //stmt.setInt(1, id);
            registros = stmt.executeUpdate();
        } catch(SQLException | NullPointerException ex) {
            ex.printStackTrace(System.out);
        } finally {
            try {
                stmt.close();
                conn.close();
            } catch(SQLException | NullPointerException ex) {
                ex.printStackTrace(System.out);
            }
        }
        
        return registros;
    }
}
