from .dbConnection import cursor

def create_table():
    table_name = input("Enter a table name: ").strip().lower()
    col_config = input(" columns: ").strip().lower()

    Query = "create table " + table_name + " (" + col_config + ");"
    cursor.execute(Query)
