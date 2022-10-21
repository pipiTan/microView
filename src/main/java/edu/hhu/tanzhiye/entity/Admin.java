package edu.hhu.tanzhiye.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;


@NoArgsConstructor
@AllArgsConstructor
@Data
public class Admin {

    private Integer id;
    private String name;
    private String account;
    private String password;
}
