from .dbConnection import cursor

def create_database():
    database_name = input("Enter database name: ")
    Query = f"create database if not exists {database_name}"
    cursor.execute(Query)