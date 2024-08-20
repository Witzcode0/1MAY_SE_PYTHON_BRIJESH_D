from  .dbConnection import db, cursor

def insert_data():
    Query = """
    INSERT INTO students (name, age)
    VALUES
    ('John Doe', 25),
    ('Jane Smith', 30),
    ('Mike Johnson', 22),
    ('Emily Davis', 28),
    ('Chris Brown', 31),
    ('Sarah Wilson', 27),
    ('David Clark', 29),
    ('Laura Lee', 26),
    ('Paul Walker', 32),
    ('Anna Scott', 24);
    """
    cursor.execute(Query)
    db.commit()
