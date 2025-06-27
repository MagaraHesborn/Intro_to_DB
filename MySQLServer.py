import mysql.connector

#create database

def create_database():
    try:
        connection = mysql.connector.connect(
            host="localhost"
            user="root"
            password="48Alxintranet#"
        )

        if connection.is_connected():
            cursor = connection.cursor()
            cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
            print("Database 'alx_book_store' created successfully!")

    except mysql.connector.Error as e:
        print(f"MySQL connection error: {e}")
    
    finally:
        cursor.close()
        connection.close() 

if __name__ == "__main__":
    create_database()
