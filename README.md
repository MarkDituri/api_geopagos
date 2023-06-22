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

## API URL PROD

-    [https://apigeopagos.qudimar.com/api/v2/players](https://apigeopagos.qudimar.com/api/v2/players)
// Devuelve todos los jugadores enlistados

-    [https://apigeopagos.qudimar.com/api/v2/tournaments](https://apigeopagos.qudimar.com/api/v2/tournaments)
// Devuelve todos los torneos disponbiles en este caso 2 (femeninos y masculinos )

-    [https://apigeopagos.qudimar.com/api/v2/start/male](https://apigeopagos.qudimar.com/api/v2/start/male)
// Devuelve los resultados de la simulacion del torneo ya sea /male o /female tanto los resultados de cada ronda, como al propio winner

## Sobre la logica de los torneos

Existen 32 jugadores en la base de datos 16 mujeres y 16 hombres
