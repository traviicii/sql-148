
# Introduction to MySQL and SQL Language

## Downloads and Installation
For full download and installation guide, please see [MySQL Installation Guide](mysql-install-guide.md)

#### MySQL
- **Download:** [MySQL Download](https://dev.mysql.com/downloads/mysql/)
- **Test Installation:**
  ```sql
  SHOW DATABASES;
  ```
  - This command lists all databases managed by the MySQL server.

#### MySQL Workbench
- **Download:** [MySQL Workbench Download](https://dev.mysql.com/downloads/workbench/)
- **Test Installation:** Open the application to ensure it launches correctly.
---

## SQL Commands
Reference: [W3 Schools - SQL Commands](https://www.geeksforgeeks.org/sql-ddl-dql-dml-dcl-tcl-commands/)
![](SQL-commands.png)

## Data Definition Language (DDL)
DDL consists of commands to create, modify, and remove database objects.

### CREATE
- **Purpose:** Used to create tables and databases.
- **Creating Databases:**
  ```sql
  CREATE DATABASE mydatabase;
  ```
  - [W3Schools - Creating Databases](https://www.w3schools.com/mysql/mysql_create_db.asp)

- **Creating Tables:**
  ```sql
  CREATE TABLE users (
      user_id INT AUTO_INCREMENT,
      username VARCHAR(50) NOT NULL,
      email VARCHAR(100) NOT NULL,
      created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
      PRIMARY KEY (user_id)
  );
  ```
  - [W3Schools - Creating Tables](https://www.w3schools.com/mysql/mysql_create_table.asp)

### ALTER
- **Purpose:** Used to alter the database structure, such as adding, removing, or modifying columns in a table.
- **Adding a Column:**
  ```sql
  ALTER TABLE users ADD last_login TIMESTAMP;
  ```
- **Modifying a Column:**
  ```sql
  ALTER TABLE users MODIFY COLUMN email VARCHAR(150) NOT NULL;
  ```
- **Dropping a Column:**
  ```sql
  ALTER TABLE users DROP COLUMN last_login;
  ```
  - [W3Schools - Altering Tables](https://www.w3schools.com/mysql/mysql_alter.asp)

### DROP
- **Purpose:** Used to remove objects from the database, such as columns, tables, or the entire database.
- **Dropping a Table:**
  ```sql
  DROP TABLE users;
  ```
  - [W3Schools - Drop Table](https://www.w3schools.com/mysql/mysql_drop_table.asp)
- **Dropping a Database:**
  ```sql
  DROP DATABASE mydatabase;
  ```
  - [W3Schools - Drop DB](https://www.w3schools.com/mysql/mysql_drop_db.asp)

### Workbench DDL Demo
- **Syntax:**
  - `;` is needed to end statements or queries.
  - `--` denotes a SQL comment.
- **Execution:**
  - Highlight the specific statement/query you wish to run to avoid accidental duplication or errors.

## Data Manipulation Language (DML)
DML consists of commands to add, update, and delete data entries.

### INSERT INTO
- **Purpose:** Adds specified values to the database.
- **Example:**
  ```sql
  INSERT INTO users (username, email) VALUES ('john_doe', 'john@example.com');
  ```
  - [W3Schools - Insert Into](https://www.w3schools.com/mysql/mysql_insert.asp)

### UPDATE
- **Purpose:** Allows you to update an entry in the database (e.g., changing a customer's email).
- **Example:**
  ```sql
  UPDATE users SET email = 'new_email@example.com' WHERE user_id = 1;
  ```
  - [W3Schools - Update](https://www.w3schools.com/mysql/mysql_update.asp)

### DELETE
- **Purpose:** Deletes a specific entity from the database.
- **Example:**
  ```sql
  DELETE FROM users WHERE user_id = 1;
  ```
  - [W3Schools - Delete](https://www.w3schools.com/mysql/mysql_delete.asp)

### Workbench DML Demo
- **Execution:**
  - Demonstrate how to insert, update, and delete data using MySQL Workbench.

## Data Query Language (DQL)
DQL consists of commands to extract data from the database in a refined way.

### SELECT, FROM
- **Purpose:** Allows us to select all (*) fields or specific fields from a specific table.
- **Example:**
  ```sql
  SELECT * FROM users;
  SELECT username, email FROM users;
  ```
  - [W3Schools - Select](https://www.w3schools.com/mysql/mysql_select.asp)

### WHERE
- **Purpose:** Allows us to filter records based on specified conditions.
- **Example:**
  ```sql
  SELECT * FROM users WHERE user_id = 1;
  ```
  - [W3Schools - Where](https://www.w3schools.com/mysql/mysql_where.asp)

### AND, OR, NOT
- **Purpose:** Used to create compound conditions (AND, OR) or to check for false conditions (NOT).
- **Examples:**
  ```sql
  SELECT * FROM users WHERE username = 'john_doe' AND email = 'john@example.com';
  SELECT * FROM users WHERE username = 'john_doe' OR email = 'john@example.com';
  SELECT * FROM users WHERE NOT username = 'john_doe';
  ```
  - [W3Schools - AND, OR](https://www.w3schools.com/mysql/mysql_and_or.asp)

### ORDER BY
- **Purpose:** Allows you to order the query result set.
- **Example:**
  ```sql
  SELECT * FROM users ORDER BY created_at DESC;
  ```
  - [W3Schools - Order By](https://www.w3schools.com/mysql/mysql_orderby.asp)

### LIKE
- **Purpose:** Allows you to search for data that matches a pattern.
- **Example:**
  ```sql
  SELECT * FROM users WHERE email LIKE '%example.com';
  ```
  - [W3Schools - Like](https://www.w3schools.com/mysql/mysql_like.asp)

## Additional Notes
- **DDL and DML Execution Tips:**
  - Always end SQL statements with a semicolon (`;`).
  - Use comments (`--`) to annotate and explain your SQL code.
  - Highlight the specific query to run in MySQL Workbench to avoid executing unintended commands.

### Further Reading
- [Introduction to SQL](https://www.w3schools.com/sql/)
- [MySQL Documentation](https://dev.mysql.com/doc/)
- [Lucidchart Tutorial](https://www.lucidchart.com/pages/tutorials)
