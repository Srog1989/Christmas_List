
Specifications for the Rails Assessment
Specs:
 [x] Using Ruby on Rails for the project. Rails is used for the project.

 [x] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes.) A user has_many presents.

 [x] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User) Present belongs_to Recipient. Present belongs_to User.

 [x] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients) Recipient has_many Users through Presents. User has_many recipients through presents.

 [x] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through 
 Ingredients, Item has_many Recipes through Ingredients) Recipient has_many users through presents. User has_many recipients through presents.

 [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity) Presents has submittable attributes; name, category, brand, cost.

 [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient,Item) Presents validates :name, :cost, :brand, :category, presence: true. Recipient validates :email, uniqueness: true, presence: true validates :name, presence: true. User validates :email, uniqueness: true, presence: true

 [x] Include a class level ActiveRecord scope method (model object & class method name. 
 Present class scope : 
 scope :order_recipients_by, -> { order(name: :asc) }
 Recipient class scope: 
 scope :order_recipients_by, -> { order(name: :asc) }

 [x] Include signup (how e.g. Devise) User controller handles singup functionality with new and create actions.

 [x] Include login (how e.g. Devise) Session controller handles log in with new and create actions

 [x] Include logout (how e.g. Devise) Sesssion controller handles logout with the destroy action.

 [x] Include third party signup/login (how e.g. Devise/OmniAuth) User is able to login via google by using Omniauth in the sessions controller.

 [x] Include nested resource show or index (URL e.g. users/2/recipes) users/2/presents

 [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new) User can create a new Present while creating a recipient at the same time. Present is  nested under User. e.g. users/2/presents/new

 [x] Include form display of validation errors (form URL e.g. /recipes/new)

Confirm:
 [x] The application is pretty DRY: refactored using helpers and partials to avoid duplicate code.
 [x] Limited logic in controllers

 [x] Views use helper methods if appropriate
 [] Views use partials if appropriate