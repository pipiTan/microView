package edu.hhu.tanzhiye.dao.impl;

import edu.hhu.tanzhiye.dao.AdminDao;
import edu.hhu.tanzhiye.entity.Admin;
import edu.hhu.tanzhiye.entity.User;
import edu.hhu.tanzhiye.util.JDBCUtil;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import java.sql.SQLException;

public class AdminDaoImpl implements AdminDao {

    private QueryRunner queryRunner = new QueryRunner(JDBCUtil.getDruidDataSource());

    @Override
    public Admin selectByActAndPwd(String account, String password) {
        String sql = " select * from t_admin where account=? and password=? ";
        Admin admin = null;
        try {
            admin = queryRunner.query(sql, new BeanHandler<>(Admin.class), account, password);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return admin;
    }
}
