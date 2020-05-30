#!/usr/bin/python3
import MySQLdb

city = 'Sleman'
db = MySQLdb.connect(host='localhost' ,database='c14170015' ,user='root' ,password='')
cursor = db.cursor()
query = "SELECT city FROM ip_country"
cursor.execute(query)
mydata = cursor.fetchall()
query2 = "SELECT temperature, humidity, time FROM weather WHERE city = "+" '%s' " % city
cursor.execute(query2)
mydata2 = cursor.fetchall()
db.close()

for i in mydata:
    print(i[0])

for i in mydata2:
    print(i)