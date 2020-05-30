#!/usr/bin/python3
from flask import Flask, render_template, request
import os, geoip2.database
import requests, time
import MySQLdb

ASSET = os.path.join('static', 'asset')
app = Flask(__name__)
app.secret_key = '\xfd{H\xe5<\x95\xf9\xe3\x96.5\xd1\x01O<!\xd5\xa2\xa0\x9fR"\xa1\xa8'
app.config['UPLOAD_FOLDER'] = ASSET

@app.errorhandler(404)
def page_not_found(error):
    return render_template('404.html', title='Page Not Found'), 404

@app.route('/', methods=['GET', 'POST'])
def index():
    db = MySQLdb.connect(host='localhost',database='weather',user='root',password='')
    cursor = db.cursor()
    title = "Forecast | Home Page"
    IP = '182.1.91.44'
    #IP = request.remote_addr
    userAgent = request.headers.get('User-Agent')
    reader = geoip2.database.Reader('GeoLite2-City.mmdb')
    respons = reader.city(IP)
    reader2 = geoip2.database.Reader('GeoLite2-Country.mmdb')
    respons2 = reader2.country(IP)
    #cities = respons.city.name
    cities = 'Surabaya'
    logo_filename = os.path.join(app.config['UPLOAD_FOLDER'], 'logo-01.png')

    url = 'http://api.openweathermap.org/data/2.5/weather?q={}&units=metric&appid=fd952edc09b134bbf1466897d5bc68ee'
    weather_data = []
    geo_data = []
    data_chart = []

    geo = {
        'countryName': respons2.country.name,
        'province': respons.subdivisions.most_specific.name,
        'cityAccess': respons.city.name,
        'IPAddress': IP,
        'userAgent': userAgent
    }

    r = requests.get(url.format(cities)).json()

    weather = {
        'city': cities,
        'temperature': r['main']['temp'],
        'humidity': r['main']['humidity'],
        'wind': r['wind']['speed'],
        'country': r['sys']['country'],
        'description': r['weather'][0]['description'],
        'icon': r['weather'][0]['icon'],
        'date': time.strftime('%d-%m-%Y',  time.gmtime(r['dt'])),
        'day': time.strftime('%A', time.gmtime(r['dt'])),
        'time': time.strftime('%H:%M %p',  time.gmtime(r['dt'])),
    }

    query = "INSERT INTO weather VALUES (NULL, '" + str(r['main']['temp']) + "' ,'" + str(r['main']['humidity']) + "', '" + str(r['dt']) + "', '" + cities + "', '" + r['sys']['country'] +"')"
    cursor.execute(query)
    db.commit()
    query = "SELECT temperature, humidity, time FROM weather WHERE city = "+" '%s' " % cities
    cursor.execute(query)
    mydata = cursor.fetchall()
    db.close()

    for dat in mydata:
        data = {
            'temp': dat[0],
            'hum': dat[1],
            'hour': str(time.strftime('%H:%M%p',  time.gmtime(dat[2]))),
        }
        data_chart.append(data)
        print(data_chart)

    #for temp in mydata:

    weather_data.append(weather)
    geo_data.append(geo)
    #print(weather_data)
    #print(geo_data)
    return render_template('index.html', weather_data=weather_data,data_chart=data_chart,geo_data=geo_data,title=title,logo_filename=logo_filename)

@app.route('/City', methods=['GET', 'POST'])
def city():
    db = MySQLdb.connect(host='localhost',database='c14170015',user='root',password='')
    cursor = db.cursor()
    query = "SELECT city FROM ip_country"
    cursor.execute(query)
    mydata = cursor.fetchall()
    errmsg = None
    title = "Forecast | City Page"
    weather_data = []
    logo_filename = os.path.join(app.config['UPLOAD_FOLDER'], 'logo-01.png')
    url = 'http://api.openweathermap.org/data/2.5/weather?q={}&units=metric&appid=fd952edc09b134bbf1466897d5bc68ee'
    if request.method == 'POST':
        weather_data.clear()
        new_city = request.form.get('cityname')
        cities = str(new_city)
        if cities != '':
            r = requests.get(url.format(cities)).json()
            if r['cod'] != 200:
                errmsg = 'Data Not Found'
            else:
                weather = {
                    'city': cities,
                    'temperature': r['main']['temp'],
                    'humidity': r['main']['humidity'],
                    'wind': r['wind']['speed'],
                    'country': r['sys']['country'],
                    'description': r['weather'][0]['description'],
                    'icon': r['weather'][0]['icon'],
                    'date': time.strftime('%d-%m-%Y', time.gmtime(r['dt'])),
                    'day': time.strftime('%A', time.gmtime(r['dt'])),
                    'time': time.strftime('%H:%M %p', time.gmtime(r['dt'])),
                }
                weather_data.append(weather)
        else:
            for city in mydata:
                cities = city[0]
                r = requests.get(url.format(cities)).json()
                if r['cod'] != 200:
                    errmsg = 'Data Not Found'
                else:
                    weather = {
                        'city': cities,
                        'temperature': r['main']['temp'],
                        'humidity': r['main']['humidity'],
                        'wind': r['wind']['speed'],
                        'country': r['sys']['country'],
                        'description': r['weather'][0]['description'],
                        'icon': r['weather'][0]['icon'],
                        'date': time.strftime('%d-%m-%Y', time.gmtime(r['dt'])),
                        'day': time.strftime('%A', time.gmtime(r['dt'])),
                        'time': time.strftime('%H:%M %p', time.gmtime(r['dt'])),
                    }
                    weather_data.append(weather)
    else:
        weather_data.clear()
        for city in mydata:
            cities = city[0]
            r = requests.get(url.format(cities)).json()
            if r['cod'] != 200:
                errmsg = 'Data Not Found'
            else:
                weather = {
                    'city': cities,
                    'temperature': r['main']['temp'],
                    'humidity': r['main']['humidity'],
                    'wind': r['wind']['speed'],
                    'country': r['sys']['country'],
                    'description': r['weather'][0]['description'],
                    'icon': r['weather'][0]['icon'],
                    'date': time.strftime('%d-%m-%Y', time.gmtime(r['dt'])),
                    'day': time.strftime('%A', time.gmtime(r['dt'])),
                    'time': time.strftime('%H:%M %p', time.gmtime(r['dt'])),
                }
                weather_data.append(weather)
    db.close()
    return render_template('city.html', weather_data=weather_data,title=title,logo_filename=logo_filename,errmsg=errmsg)

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=60015, debug=True)