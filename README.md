<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://webgeopagos.qudimar.com/Assets/images/logo-2.png" width="400"></a></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/dt/laravel/framework" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/v/laravel/framework" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/l/laravel/framework" alt="License"></a>
</p>

## Sobre el Poroyect

Proyecto challenge para geopagos, consiste en una API la cual permite arrojar resultados de disitntos torneos (femenino y masuculino) armando la logica de cada ronda, para asi dar con un jugador ganador, se utilizo laravel

## API

Podras encontrrar la documentacion detallada sobre la API aqui: [documentation](https://laravel.com/docs), de todos modos a continuacion dejo los fumdanos basicos de la api

## API URL PROD

-    [https://apigeopagos.qudimar.com/api/v2/players](https://apigeopagos.qudimar.com/api/v2/players)
// Devuelve todos los jugadores enlistados

-    [https://apigeopagos.qudimar.com/api/v2/tournaments](https://apigeopagos.qudimar.com/api/v2/tournaments)
// Devuelve todos los torneos disponbiles en este caso 2 (femeninos y masculinos )

-    [https://apigeopagos.qudimar.com/api/v2/start/male](https://apigeopagos.qudimar.com/api/v2/start/male)
// Devuelve los resultados de la simulacion del torneo ya sea /male o /female tanto los resultados de cada ronda, como al propio winner
