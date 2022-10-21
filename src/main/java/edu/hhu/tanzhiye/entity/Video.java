package edu.hhu.tanzhiye.entity;

//create table t_user(
//        id int primary key auto_increment,
//        name varchar(32),
//        account varchar(32),
//        password varchar(32),
//        gender boolean,
//        phone varchar(32),
//        email varchar(32),
//        birthday date,
//        introduction text
//        );

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Video {
    private Integer id;
    private String name;
    private String type;
    private String author;
    private int timeSize;
    private String description;
    private String uriPath;
}
