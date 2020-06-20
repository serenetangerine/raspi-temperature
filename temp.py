#!/usr/bin/env python3

import pymysql
from db_config import con
from sense_hat import SenseHat


def readTemp():
    sense = SenseHat()
    sense.clear()
    temp = sense.get_temperature()
    return temp


def writeTemp(temp):
    with con:
        cursor = con.cursor()
        query = 'INSERT INTO temperature VALUES (NOW(), "%s");' % (temp)
        cursor.execute(query)


if __name__ == '__main__':
    writeTemp(readTemp())
