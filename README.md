# _Business Lookup API_
#### _By: **Isaac Overstreet**_

# Description 
_This API application is made to add businesses, with name, kind and content description to an API and use postman to GET, PUT, POST and DELETE results. Able to search for businesses by name as well. Paginated responses return 4 messages per page. Made for Epicodus Ruby week 6 solo project._

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
 




