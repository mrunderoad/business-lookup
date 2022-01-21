# _Business Lookup API_
#### _By: **Isaac Overstreet**_

# Description 
_This API application is made to add businesses, with name, kind and content description to an API and use postman to GET, PUT, POST and DELETE results. Able to search for businesses by name as well. Paginated responses return 4 messages per page. Made for Epicodus Ruby week 6 solo project._

## Further Exploration Documentation
_Further exploration on this project was Pagination. Pagination is used to divide results by page and is fairly simple to implement into a project like this one. the definition for pagination is as follows: "The sequence of numbers assigned to pages in a book or periodical."

## Technologies Used

* _Ruby_
* _Gems_
* _RSpec_
* _Pry_
* _Postgres_
* _SQL_
* _Bundler_
* _IRB_
* _Rails_
* _ActiveRecord_
* _Faker_
* _FactoryBot_
* _Docker_
* _Pagination_

## API Endpoints 

| Usage | METHOD | URL | Params |
| :---  | :---:  | :--- | ---: |
| See all Businesses | GET | `localhost:3000/businesses` | _NA_ |
| See a specific Business | GET | `localhost:3000/business/:id` | _NA_ |
| Create a Business | POST | `localhost:3000/businesses` | _name, kind, content_ |
| Update a Business | PUT | `localhost:3000/businesses` | _name, kind, content_ |
| Delete a Business | DELETE | `localhost:3000/businesses/:id` | _NA_ |
| Search for Business by name | GET | `localhost:3000/businesses?name=` | _name_ |
| Paginate Business result | GET | `localhost:3000/businesses?page=` | _page_ |
| Delete all Businesses | DELETE | `localhost:3000/businesses/clear` | _NA_ |
| See a random Business | GET | `localhost:3000/businesses/random` | _NA_ |
##### Note for endpoints: Searching and paginating requires a name or page number after the = in the url.

## Responses 
_Expect responses for Businesses to look like this:_
```
{
  "id" : integer,
  "name" : string,
  "kind" : string,
  "content" : string
}
```

## Using this app without Docker

* _Run_ `git clone https://github.com/mrunderoad/business-lookup` _in your terminal to clone this repository to your device, then navigate to the project directory._
* _Run_ `bundle install` _to package all the Gems and setup the Gemfile.lock._ 
* _Run_ `rake db:setup` _to setup the database._
* _Run_ `rspec` _if you want to run the spec tests._
* _Run_ 'rails s` _to start a local server in your browser._
* _Open postman(If you dont have it installed click [here](https://www.postman.com/downloads/).) And use the custom endpoints listed above to make calls to the API._

## Using this app with Docker

* _Run_ `git clone https://github.com/mrunderoad/business-lookup` _in your terminal to clone this repository to your device, then navigate to the project directory._
* _Run_ `docker-compose run api bundle install` _to bundle the Gems and setup Gemfile.lock._
* _Run_ `docker-compose run api sh` _to start a shell inside the container._
* _Run_ `rake db:setup` _in the container shell to setup the database._
* _Run_ `rspec` _in the container shell to run the spec tests._
* _In your terminal run `docker-compose up --build` to bundle the app and startup database and server._
* _Open postman(If you dont have it installed click [here](https://www.postman.com/downloads/).) And use the custom endpoints listed above to make calls to the API._

## Known Bugs: 
 
 _None so far._

 ## License - [MIT](https://opensource.org/licenses/MIT)

 Copyright (c) _2022 Isaac Overstreet._




