
# anime-facts-rest-api 🐱‍🚀

An API in Node.js that will return anime facts. [Check docs](https://chandan-02.github.io/anime-facts-rest-api/)

# Usage :

  > Note: This project is being hosted on Heroku with free dyno; so, there can/will be a delay for the first time you make a request, subsequent requests will be faster.

### Home Route
Get all the available anime's list : `https://anime-facts-rest-api.herokuapp.com/api/v1`
*returns* : 
```
{
	success:true,
	data: [
		{
			anime_id: 1,
			anime_name: "bleach",
			anime_img: "https://eaxmpleimage.com/"
		},
		{
			anime_id: 2,
			anime_name: "black_clover",
			anime_img: "https://eaxmpleimage2.com/"
		},
		...
	]
}
```
### Anime Facts Route 
Get all facts related to an Anime  : `https://anime-facts-rest-api.herokuapp.com/api/v1/:anime_name`
> Provide an anime name (from the available option) in place of `:anime_name`

***Example*** : 
`https://anime-facts-rest-api.herokuapp.com/api/v1/fma_brotherhood`
*returns* : 
```
{
	success:true,
	total_facts: 8,
	anime_img:"https://eaxmpleimage.com/",
	data: [
		{
			fact_id: 1,
			fact: "Ishvalans And Ametris Conflict Is Based On Hokkaido s Ainu People"
		},
		{
			fact_id: 2,
			fact: "Arakawa Actually Bought Military Prop Guns For Drawing References"
		},
		...
	]
}
```
### Specific Fact Route 
Get all facts related to an Anime  : `https://anime-facts-rest-api.herokuapp.com/api/v1/:anime_name/:fact_id`
> Provide an anime name & fact id (from the available option) in place of `:anime_name & :fact_id`

***Example*** : 
`https://anime-facts-rest-api.herokuapp.com/api/v1/fma_brotherhood/2`
*returns* : 
```
{
	success:true,
	data: {
			fact_id: 2,
			fact: "Arakawa Actually Bought Military Prop Guns For Drawing References"
		}
	
}
```

# Rebuild project :

- Clone the repo : `git clone https://github.com/chandan-02/anime-facts-rest-api.git`

- Install necessary dependencies : `cd anime-facts-rest-api` & `npm install`

- Create a database and tables in postgreSQL add data in them ( use data.sql ).

- Create an .env file and fill the required **postgres** details.

- Run : `npm run dev`