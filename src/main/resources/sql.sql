drop table if exists t_admin;
drop table if exists t_user;
drop table if exists t_video;

create table t_admin
(
    id       int primary key auto_increment,
    name     varchar(32),
    account  varchar(32),
    password varchar(32)
);

insert into t_admin values  (1, '管理员', 'admin', '123456')

create table t_user(
    id int primary key auto_increment,
    name varchar(32),
    account varchar(32),
    password varchar(32),
    gender boolean,
    phone varchar(32),
    email varchar(32),
    birthday date,
    introduction text
);