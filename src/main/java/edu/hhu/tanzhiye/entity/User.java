package edu.hhu.tanzhiye.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;


@NoArgsConstructor
@AllArgsConstructor
@Data
public class User {

    private Integer id;
    private String name;
    private String account;
    private String password;
    private Boolean gender;
    private String phone;
    private String email;
    private Date birthday;
    private String introduction;
}
