#### Set Path
> - export PATH=${PATH}:/usr/local/mysql/bin/

#### Login to Server - on terminal
###### This will promot you to enter sql server password
> - mysql -u root -p /current-password/

#### This will chnage the root user password
> - ALTER USER 'root'@'localhost' IDENTIFIED BY 'your-new-password';

#### To show list of databases, on SQL commandline interface
> - show databases;

#### To use the specific databse
###### You can pick one from the list of databases with above command.
> - use database-name;

#### To display all the tables in the database 
> - show tables;


#### Creating a database
> - create database /database-name/

#### Fundamental Datatypes with SQL we may encounter
> - INT
> - DECIMAL(M,N)
> - VARCHAR(10)
> - BLOB
> - DATE
> - TIMESTAMP