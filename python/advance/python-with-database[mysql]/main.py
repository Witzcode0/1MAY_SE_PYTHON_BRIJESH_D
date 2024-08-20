from pyDB.createDatabase import create_database
from pyDB.createTable import create_table
from pyDB.insertData import insert_data
from pyDB.readData import read_data

# create_database()

# create_table()

# insert_data()

for row in read_data():
    print(row[0], row[1])