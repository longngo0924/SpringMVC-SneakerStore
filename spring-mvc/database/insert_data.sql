use springmvc;

insert into role(code,name) values ('ADMIN','quản trị');
insert into role(code,name) values ('USER','người dùng');

insert into user(username,password,status) values ('admin01','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG',1);
insert into user(username,password,status) values ('long.ngo','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG',1);

insert into role_user(roleid,userid) values (1,1);
insert into role_user(roleid,userid) values (2,2);

select * from user;
select * from role;
select * from role_user;