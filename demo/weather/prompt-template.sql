CONCAT(
    'Measurements from a weather station in Compton, GB were taken ',
    'every two minutes between ',
        DATE_FORMAT(`start`, 'yyyy.MM.dd HH:mm:ss'), ' and ',
        DATE_FORMAT(`end`, 'yyyy.MM.dd HH:mm:ss'),
    '\n\n',
    'Temperature ranged between ',
        CAST(ROUND(`temperature min`, 1) AS STRING), ' and ',
        CAST(ROUND(`temperature max`, 1) AS STRING), ' degrees Celsius. ',
    'The average (mean) temperature was ',
        CAST(ROUND(`temperature average`, 1) AS STRING), ' degrees. ',
    'The population standard deviation of temperature measurements was ',
        CAST(ROUND(`temperature standard deviation population`, 3) AS STRING),
    '\n\n',
    'Pressure ranged between ',
        CAST(`pressure min` AS STRING), ' and ',
        CAST(`pressure max` AS STRING), ' millibars. ',
    'The average (mean) pressure was ',
        CAST(ROUND(`pressure average`, 0) AS STRING), ' millibars. ',
    'The population standard deviation of pressure measurements was ',
        CAST(ROUND(`pressure standard deviation population`, 3) AS STRING),
    '\n\n',
    'Humidity ranged between ',
        CAST(`humidity min` AS STRING), ' and ',
        CAST(`humidity max` AS STRING), ' percent. ',
    'The average (mean) humidity was ',
        CAST(`humidity average` AS STRING), ' percent. ',
    'The population standard deviation of humidity measurements was ',
        CAST(`humidity standard deviation population` AS STRING),
    '\n\n',
    'Wind speed ranged between ',
        CAST(ROUND(`wind speed min`, 1) AS STRING), ' and ',
        CAST(ROUND(`wind speed max`, 1) AS STRING), ' metres per second. ',
    'The average (mean) wind speed was ',
        CAST(ROUND(`wind speed average`, 1) AS STRING), ' metres per second. ',
    'The population standard deviation of wind speed measurements was ',
        CAST(ROUND(
            IF(`wind speed standard deviation population` > 0,
                    `wind speed standard deviation population`,
                    0),
            3) AS STRING),
    '\n\n',
    'Cloudiness measurements (as a percentage of sky covered) ranged between ',
        CAST(`cloudiness min` AS STRING), ' and ',
        CAST(`cloudiness max` AS STRING), ' percent. ',
    'The average (mean) cloudiness was ',
        CAST(`cloudiness average` AS STRING), ' percent. ',
    'The population standard deviation of cloudiness measurements was ',
        CAST(`cloudiness standard deviation population` AS STRING),
    '\n\n',
    'Generate a short, non-technical, easy to understand explanation of these ',
    'weather measurements for this 1 hour period. ',
    'Explain what the measurements indicate, such as by describing how it would ',
    'have felt to someone outside during this time.',
    '\n\n',
    'Use language that is suitable for a weather report in a newspaper, but ',
    'write in past tense as this is a historical report of previous weather.',
    '\n\n',
    'Avoid using technical or statistical jargon. ',
    'Do not include statistical terms such as population standard deviation in your summary.'
)