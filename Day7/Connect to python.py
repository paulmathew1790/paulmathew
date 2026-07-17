import mysql.connector

conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="password",   # Replace with your password
    database="cloudfirst"
)

print("Connected Successfully!")

conn.close()