# Hello, MySQL World!

A simple application to demonstrate CMake and pkg-config for
libmysqlclient.

[The client library, part 4: How to write a simple MySQL client in C using CMake and pkg-config | MySQL Server Blog](https://mysqlserverteam.com/the-client-library-part-4-how-to-write-a-simple-mysql-client-in-c-using-cmake-and-pkg-config/)

## Dependencies

* CMake
* MySQL client library >= 5.7


```bash
$ docker-compose up -d
$ docker-compose exec client bash
root@fa4a2a76d818:/app# ./build/hello
Hello, MySQL World! Let's start by connecting to the database.

Server name: db
Server port: 3306
User name: root
Password: test
Database:

You're now connected to the server.

Query (or 'quit'): create database foo;
No result.

Query (or 'quit'): create table foo.bar (id int, name varchar(10));
No result.

Query (or 'quit'): insert into foo.bar values (1, 'Mike');
No result.

Query (or 'quit'): insert into foo.bar values (2, 'John');
No result.

Query (or 'quit'): select * from foo.bar;
[1] [Mike]
[2] [John]
```
