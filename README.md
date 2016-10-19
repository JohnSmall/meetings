# README
* Ruby version
2.3.1
* System dependencies
It's currently using Postgresql, so you'll need to have that set up on your machine.
Then you need to have RVM set up, go to [Intall RVM](https://rvm.io/rvm/install) and follow the instructions
Once you've done that cd into the rails root directory, where this file is kept, this will create an RVM configuration, then

1. `gem install bundler`
2. `bundle`
3. You then need to have database.yml, secrets.yml, set up. Copy from database.yml.example, secrets.yml.example and edit as required.
4. `rails db:create:all`
5. `rails db:migrate`
6. `rake` to run all tests
7. `rails s`
8. Point your browser at localhost:3000 and you should be good to go
