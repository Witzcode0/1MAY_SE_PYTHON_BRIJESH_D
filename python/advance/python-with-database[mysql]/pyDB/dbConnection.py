import mysql.connector

db = mysql.connector.connect(
    user= 'root',
    password= 'root',
    host= 'localhost',
    database= 'school'  # replace with your database name
)

cursor = db.cursor()