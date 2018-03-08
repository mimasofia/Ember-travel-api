TravelDoc

The app:
This app is designed for any one whoe wants to plan a trip. The idea was that when a person plans a trip they have to pack and many times its hard to remember what a person needs to take a specific place. This app is designed to help with that. The user add places they want to visit. Then when they click on the place name they are directed to a place where they can add items they want/ need to take on the trip. For example, someone wants to go to Spain, they would need a Passport which you wouldn't need if you where goingto somewhere more local. You can remove items from the list and add new ones as well as add new places to vist that would have their own individual list of items

Technologies:
For the backend I used Ruby and Ruby on Rails

Unsolved Issues:
For this project I wasn't sure if the user needed to be tied to both resources. The way I have it know its that a user has many places and a place has many items. So the Items are technically protected because they are tied to places.

Planning:
I started planing this app a day before we were official starting it. I did wireframes and user stories as well as an ERD. I started out in the backend setting up my resources. I did `places` resource first. Making sure I could do all CRUD actions on that single resource. Then I linked it to the user and made sure things were unique to each user. After I had test all that I added a second resource that belonged to `places`. I tsted out all CRUD on that resource before I linked it to `places` and after it was linked as well. For the backend I used the issue queue as well.

Routes:
/places to get all the places a user has made with a INDEX method
/places/:id to get one place the user has made with a SHOW method
/places to create a new place with a POST method
/place/:id to delete a place with a DELETE method
/places/:id to patch a place with a UPDATE method

Any dependency came with the template which was installed with bundle install

Back-end Deploy:https://ancient-waters-79238.herokuapp.com/
Front-end Repo:https://github.com/mimasofia/travel-ember-frontend
Front-end Deployed:https://mimasofia.github.io/travel-ember-frontend/
ERD:https://git.generalassemb.ly/storage/user/8896/files/e4f0bfc4-1fe2-11e8-9c60-ebe76e3e6b36
