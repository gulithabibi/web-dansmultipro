<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400"></a></p>


## Tutorial create api using sanctum package

## Sintax
- > composer create-project laravel/laravel example-app
- > php artisan serve
- > php artisan make:model Product
- > php artisan migrate
- > php artisan make:controller ProductController


## About Sanctum
Laravel Sanctum provides a featherweight authentication system for SPAs (single page applications), mobile applications, and simple, token based APIs. Sanctum allows each user of your application to generate multiple API tokens for their account. These tokens may be granted abilities / scopes which specify which actions the tokens are allowed to perform.


## Install Sanctum
- > composer require laravel/sanctum
- > php artisan vendor:publish --provider="Laravel\Sanctum\SanctumServiceProvider"


## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
