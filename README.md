 [ Simple Movie Collector ] 
 * README 
 demo @ https://simple-movie-collector.herokuapp.com/

"before start execute" 
| bundle exec rake webpacker:install
| rake db:migrate


current smc workflow 
* ## > document/readmap
* CRUD { movies, watchlist }
* Devise { implemented }
* Ransack { implemented }
* Change db to postgres(current:sqlite) { implemented }
* Image features { implemented }
* Bootstrapify { implemented }
* Build|Push to Heroku { implemented }
* tbd ... { ... }
* Dockerize { docker-compose }
* Rake, Associations, Configurations, Services...
This README would normally document whatever steps are necessary to get the
application up and running.


Things you may want to cover:
* Ruby version
* System dependencies
* Configuration
* Database creation
* Database initialization
* How to run the test suite
* Services (job queues, cache servers, search engines, etc.)
* Deployment instructions
* define yours...