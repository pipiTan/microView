package edu.hhu.tanzhiye.dao.impl;

import edu.hhu.tanzhiye.dao.UserDao;
import edu.hhu.tanzhiye.entity.User;
import edu.hhu.tanzhiye.util.JDBCUtil;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import javax.management.Query;
import java.sql.SQLException;

public class UserDaoImpl implements UserDao {

    private QueryRunner queryRunner = new QueryRunner(JDBCUtil.getDruidDataSource());

    @Override
    public void insert(User user) {
        String sql = " insert into t_user(name, account, password, gender, phone, email, birthday, introduction) "  +
                " values " +
                " (?,?,?,?,?,?,?,?) ";
        Object[] paramArray = new Object[] {
                user.getName(),user.getAccount(),user.getPassword(),user.getGender(),
                user.getPhone(),user.getEmail(),user.getBirthday(),user.getIntroduction()
        };
        try {
            queryRunner.update(sql, paramArray);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public User selectByActAndPwd(String account, String password) {
        String sql = " select * from t_user where account=? and password=? ";
        User user = null;
        try {
            user = queryRunner.query(sql, new BeanHandler<>(User.class), account, password);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return user;
    }
}
