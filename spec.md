 X Using Ruby on Rails for the project
    -set up with rails new in terminal pushed to github 
 x Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes)
     User has_many :photos, has_many :comments
     Photo has_many :comments  
x Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User)
    Photo belongs_to :user 
    Comment belongs_to :user belongs_to :photo 
 x Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients)
    User has_many :photos, through: :comments 
    Photo has_many :users, through: comments 
X  Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients)
 X The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)
 -User can submit a comment 

 X Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
 - validations for User and Photo and Comment

 X Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
 -index page has a search bar to search photos by description 

 
 X Include signup (how e.g. Devise)
X Include login (how e.g. Devise)
X Include logout (how e.g. Devise)
 
 X Include third party signup/login (how e.g. Devise/OmniAuth)-- GOOGLE OMNIAUTH like in the video. 
 X Include nested resource show or index (URL e.g. users/2/recipes) 
 X Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
 X Include form display of validation errors (form URL e.g. /recipes/new)
Confirm:

 X The application is pretty DRY
 X Limited logic in controllers
 X Views use helper methods if appropriate - before action in the controllers where you are repeating code 
X  Views use partials if appropriate Photo and Comment, Possibly new user? 