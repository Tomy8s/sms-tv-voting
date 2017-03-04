# SMS TV Voting
<https://sms-tv-voting.herokuapp.com/>

## How to run
_requires Postgres_

+ Download and run `bundle install`

+ Import from `votes/votes.txt` with `rake log_votes`  

+ Start the server with `rails s` from `/votes`

+ Navigate to <localhost:3000> and click the campaigns to see the vote breakdown

## How I built it

1. Initialize Rails App.  

2. Write rake file to import data.  
I decided to start here as the app can do nothing without data. Without a nice front end, some data manipulation is still possible.  
I wanted to ask for a file location, but it wouldn't work, so I hard coded it in.  

3. Create a UI.  
By creating the Presentation layer before exploring the model and controller, I hoped to get an idea of the useful functionality that was necessary in other places. Initial thoughts were making an AJAX call to the server to return the campaign results in a collapsable div under each campaing name would look nice. However for the moment, I decided to save time and effort and link to a new page.  

4. Wire it all together!  
For some time I considered creating a table of campaigns to iterrate through for display on the index page, linked to seperate tables storing the results for each campaign. In the end I decided that an MVP could be acheived more quickly by manipulating the data stored in one table (votes), though this might not scale well. The final structure is thus:  

+ One postgres database with one table - 'votes'  
+ One model, interacting with the DB via the ActiveRecord class Vote  
+ One controller - CampaignsController
+ Two views - Campaign#index and Campaign#show

## Next steps

+ CSS to make it pretty!

+ Ask for location of votes file  

+ Tidy up methods chained to methods, by writing bespoke methods in the model layer

+ Load each campaign's results in page via AJAX

+ Create new tables that record totals, so as not to itterate over thousands of records on each page request