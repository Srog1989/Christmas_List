Atlassian has an amazing write up on Agile Development and more specifically, how to create user stories. Do see this article to learn their approach. The typical approach is something along the lines of:
* 		Who is your User?
* 		What is their pain point?
* 		How do they use our solution to overcome this problem?
In other words
* 		As a <type of user>
* 		I want <some goal>
* 		So that <some reason>

Choosing Your Models; Modeling Your Data
* 		What are all the models associated with my app? 
*Admin = Santa
- Users(Elves), recipient, gifts
* 		How are they related to one another?
-  Users (Elves)
- 	has many presents
- 	users have many recipients thru presents
- 
- Presents - join
- 	user_id
- 	recipient_id
- 
- Recipient(kids)
- 	has presents
- 	has many users thru presents


Figuring out what models are necessary, and how they are associated to one another could very well be the hardest part of your portfolio project -- Which is why planning is paramount! Let’s consider the app we have in mind for Daniel. What are some models, model attributes and model relationships that would be necessary for this app?
User:
* 		user_name : string
* 		email : string
* 		password_digest : string
* 		has_many :presents
* 		has_many :recipients, through :presents
Presents:
* 		title : string
*                 cost: integer
*                 age_range: integer???
* 		category : string
*                 Brand: string
* 		user_id : integer
* 		recipeient_id : integer
* 		belongs_to :user
* 		belongs_to :recipient
Recipient:
* 		name : string
* 		email : string
*                  Behavior :boolean 
* 		has_many :presents
*                 Has many users through presents 

There are a few other models to take into consideration, but this is a great starting point! (In this small example, we have already set up a many to many relationship between users and sections -- one of the requirements for your rails project!)


IDEA-  Set Santa as admin, he’s able to query the database and see which kids are on naughty or nice list. Kids behavior is tracked on a scale 1-10 1-5is naughty, 6-10nice. Elves are able to set kids behavior. 