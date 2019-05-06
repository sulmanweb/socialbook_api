# SocialBook API

## Built With
- Ruby 2.6.2
- Rails 5.2.3

## LICENSE
[MIT License](LICENSE)

## Creator
[Sulman Baig](https://sulmanbaig.com) ([https://sulmanbaig.com](https://sulmanbaig.com))

## Thanks To
- [@leemunroe](https://github.com/leemunroe) for [responsive-html-email-template](https://github.com/leemunroe/responsive-html-email-template) that we are using as email templates in this project

## To Use In Project
- Change the constant values according to your project needs @ [constants.rb](config/initializers/constants.rb)
- Change the messages accoring to your needs @ [en.yml](config/locales/en.yml) and other language files.
- Change the origin to limit the calling of requests from outside in file [cors.rb](config/initializers/cors.rb).
- For env variables create a copy of [/config/application.example.yml](config/application.example.yml) and paste in `config` folder with name `application.yml` and set the values according to your system and tools.

## To use in docker for devlopment
- Run in bash `docker-compose up --build`. Then press `^C`.
- Run in bash `docker-compose run rails db:create`
- Run in bash `docker-compose run rails db:migrate`
- Run in bash `docker-compose up`. Then press `^C` to close.
- Run in bash `docker-compose run rails console` to run console in docker.

## Rspec Testing
- Run in bash `bin/rspec` for spec testing.

## Contribution Guide

### Language
- english ([en.yml](config/locales/en.yml))

For other language translations, create new file of locale code and copy contents of en.yml and change the values according to the language.
 