#!/bin/bash

city_id=524901

api_key=4aa2ff77361f6c42861fad82eb2e55ff

unit=metric

lang=en

url="api.openweathermap.org/data/2.5/weather?id=${city_id}&appid=${api_key}&cnt=5&units=${unit}&lang=${lang}"
curl ${url} -s -o ~/.config/conky/Betelgeuse/.cache/weather.json

exit
