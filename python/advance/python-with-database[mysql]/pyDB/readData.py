from  .dbConnection import db, cursor
def read_data():
    cursor.execute("SELECT * FROM students")
    rows = cursor.fetchall()
    
    # for row in rows:
    #     print(row)
    
    return rows
