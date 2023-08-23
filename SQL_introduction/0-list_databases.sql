import mysql.connector

# Replace with your MySQL server credentials
db_config = {
    "host": "your_host",
    "user": "your_user",
    "password": "your_password",
    "port": 3306  # Change if your MySQL port is different
}

# Create a connection to the MySQL server
connection = mysql.connector.connect(**db_config)

# Create a cursor to interact with the database
cursor = connection.cursor()

# Execute the SHOW DATABASES query
cursor.execute("SHOW DATABASES")

# Fetch all the database names
database_names = cursor.fetchall()

# Print the list of databases
print("List of databases:")
for name in database_names:
    print(name[0])

# Close the cursor and the connection
cursor.close()
connection.close()