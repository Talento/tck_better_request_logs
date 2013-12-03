# TckBetterRequestLogs

[![Build Status](https://travis-ci.org/the-cocktail/tck_better_request_logs.png)](https://travis-ci.org/the-cocktail/tck_better_request_logs)

Al añadir la gema crea un nuevo log al final de cada petición con información adicional.

## Installation

Add this line to your application's Gemfile:

    gem 'tck_better_request_logs'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tck_better_request_logs

## Usage

Actualmente genera un log al finalizar la petición, similar al Completed de Rails por defecto, pero añadiendo la ruta de la petición completada y el formato solicitado. Por ejemplo:

    TCK Request Completed status=200 path=[/path/requested] format=html (views=1440ms | db=90ms) in 2063ms
