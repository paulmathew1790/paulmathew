import mysql.connector

conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="Pmatt1790@#",   # Replace with your password
    database="cloudfirst"
)

print("Wassup myy sql connection is successful")

cursor = conn.cursor()

cursor.execute("""
CREATE TABLE IF NOT EXISTS students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    age INT,
    marks INT
)
""")

print("Table created.")

query = "INSERT INTO students (name, age, marks) VALUES (%s, %s, %s)"

values = ("Paul", 22, 90)

cursor.execute(query, values)

conn.commit()

print("Record inserted.")

cursor.execute("SELECT * FROM students")

rows = cursor.fetchall()

for row in rows:
    print(row)

cursor.close()
conn.close()

print("Connection closed.")