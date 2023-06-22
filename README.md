<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://webgeopagos.qudimar.com/Assets/images/logo-2.png" width="400"></a></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/dt/laravel/framework" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/v/laravel/framework" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/l/laravel/framework" alt="License"></a>
</p>

## Sobre el Poroyect

Proyecto challenge para Geopagos, consiste en una API la cual permite arrojar resultados de distintos torneos (femenino y masculino), armando la lógica de cada ronda, para así dar con un jugador ganador, se utilizó Laravel PHP para llevarlo a cabo.

## FRONTEND

A fines de darle valor agregado al proyecto, se desarrolló un frontend a modo de aplicación web, para poder consumir la API y así, quede demostrado el posible correcto uso de la API desde un 'externo' en este caso una web.<br>

<b>VISITA LA WEB AQUI ->:</b> [https://webgeopagos.qudimar.com/](https://webgeopagos.qudimar.com/)<br>

![image](https://github.com/MarkDituri/api_geopagos/assets/87947352/04efedc6-f2ff-4ec0-b009-e9fbf49ea858)
<br>

## API 

Podrás encontrar la documentación detallada sobre la API aquí: [documentation](https://laravel.com/docs), de todos modos a continuación dejo los fundamentos básicos de la API

-    [https://apigeopagos.qudimar.com/api/v2/players](https://apigeopagos.qudimar.com/api/v2/players)
// Devuelve todos los jugadores enlistados

-    [https://apigeopagos.qudimar.com/api/v2/tournaments](https://apigeopagos.qudimar.com/api/v2/tournaments)
// Devuelve todos los torneos disponibles en este caso 2 (femeninos y masculinos )

-    [https://apigeopagos.qudimar.com/api/v2/start/male](https://apigeopagos.qudimar.com/api/v2/start/male)
// Devuelve los resultados de la simulación del torneo, ya sea /male o /female tanto los resultados de cada ronda, como al propio winner

## Sobre la logica de los torneos

En la base de datos se encuentran registrados un total de 32 jugadores, distribuidos equitativamente entre 16 mujeres y 16 hombres. Cada jugador participará en su respectivo torneo, el cual se llevará a cabo mediante rondas sucesivas para determinar el ganador de cada etapa. Antes de iniciar las rondas y obtener los resultados, se realiza una función de "suffle()" en la lista de jugadores. Este proceso simula un sorteo y reordena aleatoriamente los enfrentamientos y cruces en cada ronda, asegurando que la configuración sea diferente en cada ocasión. Como resultado, el ganador de cada ronda puede variar.

Durante la evaluación de cada ronda, se utiliza la función "compareSkills()" para comparar los diferentes habilidades de los jugadores. Se siguen las siguientes directrices: tanto los hombres como las mujeres poseen los siguientes atributos de habilidad: 'force', 'speed', 'response' y 'luck'. Sin embargo, en el torneo femenino, solo se considera la habilidad 'response', mientras que en el torneo masculino se toman en cuenta tanto 'force' como 'speed'. Al comparar los valores iniciales de habilidad de cada género, se realiza un balance y se suma a este resultado total la variable 'luck'. De esta manera, se simula la influencia de la suerte, la cual puede afectar positiva o negativamente las rondas de cada enfrentamiento. 
