CREATE USER 'qazi'@'localhost' IDENTIFIED BY 'your_password';
GRANT ALL PRIVILEGES ON ESPN.* TO 'qazi'@'localhost';
FLUSH PRIVILEGES;
SHOW GRANTS FOR 'qazi'@'localhost';
