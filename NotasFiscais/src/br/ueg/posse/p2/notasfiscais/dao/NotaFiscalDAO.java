package br.ueg.posse.p2.notasfiscais.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.ueg.posse.p2.notasfiscais.db.Database;
import br.ueg.posse.p2.notasfiscais.modelo.NotaFiscal;

public class NotaFiscalDAO {

	private Connection conexao = null;

	public NotaFiscalDAO() throws SQLException {
		conexao = Database.getConnection();
	}

	public void grava(NotaFiscal notafiscal) throws SQLException {
		String sql = "insert into notasfiscais(idPrestador,idCliente,data,valor,aliquota,imposto,servico,idUsuario)"
				+ "values(?,?,?,?,?,?,?,?)";
		PreparedStatement stmt = conexao.prepareStatement(sql);
		stmt.setInt(1, notafiscal.getIdPrestador());
		stmt.setInt(2, notafiscal.getIdCliente());
		stmt.setString(3, notafiscal.getData());
		stmt.setDouble(4, notafiscal.getValor());
		stmt.setDouble(5, notafiscal.getAliquota());
		stmt.setDouble(6, notafiscal.getImposto());
		stmt.setString(7, notafiscal.getServico());
		stmt.setInt(8, notafiscal.getIdUsuario());

		stmt.execute();
		stmt.close();
	}

	public void excluir(NotaFiscal notafiscal) throws SQLException {
		String sql = "DELETE FROM notasfiscais WHERE id = ?";
		PreparedStatement stmt = conexao.prepareStatement(sql);
		stmt.setInt(1, notafiscal.getId());

		stmt.execute();
		stmt.close();
	}

	public void altera(NotaFiscal notafiscal)
			throws SQLException{
		    String sql = "update notasfiscais set data=?,valor=?,aliquota=?,imposto=?,servico=?  where id=?";
	
			PreparedStatement stmt =
			conexao.prepareStatement(sql);
			stmt.setString(1, notafiscal.getData());
			stmt.setDouble(2, notafiscal.getValor());
			stmt.setDouble(3, notafiscal.getAliquota());
			stmt.setDouble(4, notafiscal.getImposto());
			stmt.setString(5, notafiscal.getServico());
			stmt.setInt(6, notafiscal.getId());
			stmt.execute();
			stmt.close();
		}

	
	public void fechaConexao() throws SQLException {
		conexao.close();
	}

	public List<NotaFiscal> getlista() throws SQLException {
		List<NotaFiscal> notasfiscais = new ArrayList<>();
		String sql = "select * from notasfiscais";
		try (PreparedStatement stmt = conexao.prepareStatement(sql)) {
			stmt.execute();
			ResultSet rs = stmt.getResultSet();
			while (rs.next()) {
				NotaFiscal notafiscal = new NotaFiscal();
				notafiscal.setId(rs.getInt("id"));
				notafiscal.setIdPrestador(rs.getInt("idPrestador"));
				notafiscal.setIdCliente(rs.getInt("idCliente"));
				notafiscal.setData(rs.getString("data"));
				notafiscal.setValor(rs.getDouble("valor"));
				notafiscal.setAliquota(rs.getDouble("aliquota"));
				notafiscal.setImposto(rs.getDouble("imposto"));
				notafiscal.setServico(rs.getString("servico"));
				notafiscal.setIdUsuario(rs.getInt("idUsuario"));

				notasfiscais.add(notafiscal);
			}
			return notasfiscais;
		}
	}

	public List<NotaFiscal> buscaPorId(int id) throws SQLException {
		List<NotaFiscal> notasfiscais = new ArrayList<>();
		String sql = "select * from notasfiscais where id = ?";
		PreparedStatement stmt = conexao.prepareStatement(sql);
		stmt.setInt(1, id);
		stmt.execute();
		ResultSet rs = stmt.getResultSet();
		while (rs.next()) {
			NotaFiscal notafiscal = new NotaFiscal();
			notafiscal.setId(rs.getInt("id"));
			notafiscal.setIdPrestador(rs.getInt("idPrestador"));
			notafiscal.setIdCliente(rs.getInt("idCliente"));
			notafiscal.setData(rs.getString("data"));
			notafiscal.setValor(rs.getDouble("valor"));
			notafiscal.setAliquota(rs.getDouble("aliquota"));
			notafiscal.setImposto(rs.getDouble("imposto"));
			notafiscal.setServico(rs.getString("servico"));
			notafiscal.setIdUsuario(rs.getInt("idUsuario"));

			notasfiscais.add(notafiscal);
		}
		return notasfiscais;
	}

	public List<NotaFiscal> getLista() throws SQLException {
		List<NotaFiscal> notasfiscais = new ArrayList<>();

		String sql = "select * from notasfiscais";
		try (PreparedStatement stmt = conexao.prepareStatement(sql)) {
			stmt.execute();
			ResultSet rs = stmt.getResultSet();
			while (rs.next()) {
				NotaFiscal notafiscal = new NotaFiscal();
				notafiscal.setId(rs.getInt("id"));
				notafiscal.setIdPrestador(rs.getInt("idPrestador"));
				notafiscal.setIdCliente(rs.getInt("idCliente"));
				notafiscal.setData(rs.getString("data"));
				notafiscal.setValor(rs.getDouble("valor"));
				notafiscal.setAliquota(rs.getDouble("aliquota"));
				notafiscal.setImposto(rs.getInt("imposto"));
				notafiscal.setServico(rs.getString("servico"));
				notafiscal.setIdUsuario(rs.getInt("idUsuario"));

				notasfiscais.add(notafiscal);
			}
			return notasfiscais;
		}
	}
}

