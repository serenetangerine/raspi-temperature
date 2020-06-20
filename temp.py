#!/usr/bin/env python3
import pymysql
from sense_hat import SenseHat


def readTemp():
    sense = SenseHat()
    sense.clear()
    temp = sense.get_temperature()
    return temp


def writeTemp(temp):
    con = pymysql.connect('localhost', 'user', 'password', 'database')
    with con:
        cursor = con.cursor()
        query = 'INSERT INTO temperature VALUES (NOW(), "%s");' % (temp)
        cursor.execute(query)


if __name__ == '__main__':
    writeTemp(readTemp())
