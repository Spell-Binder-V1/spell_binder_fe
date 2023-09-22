# Spellbinder 

*An application developed with Ruby on Rails*

Welcome to SpellBinder, the enchanting online haven for Magic: The Gathering enthusiasts. Dive into the vast world of MTG with our comprehensive card dictionary, where you can explore and discover the most elusive spells, creatures, and artifacts.

:magic_wand: Unleash Your Magic: Whether you're a seasoned veteran or just starting out, our user-friendly platform empowers you to explore, search, and curate your own collection of MTG cards effortlessly.

:sparkles: Deck Crafting Magic: Sign up for a free account and embark on your journey to deck mastery. Craft and save your custom decks with precision and ease, harnessing the power of thousands of cards to build the ultimate strategy.

:star2: Community of Players: Join a vibrant community of fellow MTG enthusiasts, share your deck creations, and seek advice from experienced players. Collaborate, discuss strategies, and take your MTG prowess to new heights.

:crystal_ball: Your Magic Awaits: SpellBinder is your portal to the mystical world of Magic: The Gathering. Discover, create, and conquer with us!

## Authors
- Matt Lim [GitHub](https://github.com/MatthewTLim) | [LinkedIn](https://www.linkedin.com/in/matthew-lim-va/)
- Derek Chavez [GitHub](https://github.com/DChavez18) | [LinkedIn](https://www.linkedin.com/in/derek-chavez/)
- Gabe Torres [GitHub](https://github.com/Gabe-Torres) | [LinkedIn](https://www.linkedin.com/in/gabe-torres-74a515269/)
- Brad Milton [GitHub](https://github.com/brad2412) | [LinkedIn](https://www.linkedin.com/in/bradley-milton-01a814132/)
- Jeff Nelson [GitHub](https://github.com/jpnelson85) | [LinkedIn](https://www.linkedin.com/in/jeff-nelson-307aba45/)

## Summary 
- [Getting Started](#getting-started)
- [Screen Shots](#screen-shots)
- [Reflection](#reflection)
- [Developed With](#developed-with)
- [API JSON Contract](#api-json-contract)
- [Diagram between backend and frontend](#diagram-between-backend-and-frontend)
- [BACKEND REPO LINK](https://github.com/Spell-Binder-V1/spellbinder_be)
## Getting Started 

**Schema**

```ruby
ActiveRecord::Schema[7.0].define(version: 2023_09_20_172759) do
  enable_extension "plpgsql"

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "uid"
    t.string "provider"
  end

end
```


**Gems**

```ruby 
gem "bootsnap", require: false
gem 'pagy'

gem 'omniauth'
gem 'omniauth-google-oauth2'
gem 'omniauth-rails_csrf_protection'
gem "dotenv-rails"
gem "faraday"
gem 'bootstrap', '~> 5.3.1'
group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "pry"
  gem "rspec-rails"
  gem "capybara"
  gem "factory_bot_rails"
  gem "shoulda-matchers"
  gem "launchy"
  gem "faker"
  gem "webmock"
  gem "simplecov"
end
```

**Installing**
 - Fork and clone this repo
  - Run `bundle install`
  - Run `rails db:{create,migrate,seed}`
  - Run `rails s` to start the server
  - Open your browser and navigate to `localhost:5000`

## Screen Shots

**Dash Board**

![Alt text](image-8.png)

---

**Sign Up**

![Alt text](image-6.png)

**Collections**

![Alt text](image.png)

![Alt text](image-1.png)

---
**Welcome page**

![Alt text](image-2.png)

---
![Alt text](image-3.png)

---
**Random**

![Alt text](image-4.png)

---
**Add Card to Deck**

![Alt text](image-8.png)

## Diagram between backend and frontend

![Alt text](image-5.png)


## Reflection

During the development of our Ruby on Rails application Spellbinder, we had the opportunity to work on an exciting and challenging project that combined aspects of web development, including API integration, database design, user authentication, and frontend development/backend development. This reflection highlights key aspects of our work and the lessons learned during the development of Spellbinder.

<u> API Integration: </u>

One of the core features of our application was to dynamically fetch and manipulate card data from the Magic: The Gathering API.
Implementing this functionality required a understanding of API requests, JSON parsing, and data storage.
It was challenging to create a system that could store card information in real-time while minimizing API requests to avoid store all the cards in the database.

<u>Creating Endpoints: </u>

One of the standout features of our application was the ability to generate custom API endpoints.
This required careful consideration of routing and MVC design.
We implemented a system that allowed users to define their own endpoints based on specific search criteria, collections, and random card selection.
This added a unique dimension to our application and demonstrated the power of Rails in creating APIs, and manipulating data.

<u>Frontend Development: </u>

Developing the frontend of our application was equally crucial as our backend development.
We created a separate frontend app that interacted with our Rails API from the backend.
This frontend was responsible for presenting the data to users in an user-friendly manner.
We used modern frontend technologies like Bootstrap and CORS to create a responsive and interactive user interface.

<u>User Authentication:* </u>

To enable users to create accounts and save their decks, we implemented user authentication through Google OAuth and OmniAuth.
This involved building a secure authentication system, including user registration, login, and password functionality.
It was important to ensure data security and protect user accounts so that users could safely store their decks and card collections.

<u>Database Design: </u>

Our database consisted of two main tables: users and decks.
The decks table contained card data as an attribute, and held a hash that stored the cards in the main board, side board, and maybe board arrays.
We used database migrations and models to define the structure of our database, ensuring efficient storage and retrieval of information and deletion of data.

<u>Lessons Learned: </u>

**Throughout this project, We learned several valuable lessons:**

API: We gained experience in handling API requests and parsing JSON data. I learned how to use the Faraday gem to make API requests and how to parse the JSON data into Ruby objects. We also learned how to use the JSONAPI gem to format the JSON data into a format that was easy to manipulate and use in the frontend. 

Flexibility in Routing: Building dynamic endpoints required a deep understanding of Rails routing and controller customization. It underscored the importance routing and MVC design in creating a scalable application.

Frontend-Backend Separation: Separating the frontend and backend allowed us to create a more maintainable and scalable application. It also improved collaboration among frontend and backend teams, allowing us to work on different aspects of the application simultaneously.

User-Centric Design: Prioritizing user needs and designing a user-friendly interface was critical for the success of our application. 

Data Security: Implementing user authentication highlighted the importance of data security and user privacy. 

Planning: Planning and communication were crucial for the success of our project. We learned the importance of planning and creating a roadmap for our project, and we learned how to effectively communicate and collaborate as a team and areas where we could of improved as a team.

In conclusion, working on this Ruby on Rails application was a challenging yet awarding experience. It brought together various aspects of web development, challenging us to create a dynamic application. The project allowed us to expand our knowledge and skills in API integration, database design, frontend development, and user authentication, and it provided valuable lessons that will guide us in future endeavors.




### Developed With
---
<img src="https://static.wikia.nocookie.net/mtgsalvation_gamepedia/images/f/f8/Magic_card_back.jpg/revision/latest?cb=20140813141013" width="50" alt="Magic Logo"><img src="https://user-images.githubusercontent.com/127896538/267407283-0389dace-15c6-493c-a3b7-3a833f0a20f2.png" width="50" alt="Rails Logo"><img src="https://raw.githubusercontent.com/devicons/devicon/55609aa5bd817ff167afce0d965585c92040787a/icons/figma/figma-original.svg" width="50" alt="Figama Logo"><img src="https://raw.githubusercontent.com/devicons/devicon/55609aa5bd817ff167afce0d965585c92040787a/icons/heroku/heroku-original-wordmark.svg" width="50" alt="heroku Logo"><img src="https://raw.githubusercontent.com/devicons/devicon/55609aa5bd817ff167afce0d965585c92040787a/icons/github/github-original.svg" width="50" alt="github Logo"><img src="https://user-images.githubusercontent.com/127896538/267406979-5e0db686-91a1-42ee-9bda-675a5c5c2266.png" width="50" alt="Ruby Logo"><img  src='https://raw.githubusercontent.com/devicons/devicon/master/icons/postgresql/postgresql-original-wordmark.svg' width='50' alt='sql'><img src="https://static.wikia.nocookie.net/mtgsalvation_gamepedia/images/f/f8/Magic_card_back.jpg/revision/latest?cb=20140813141013" width="50" alt="Magic Logo">
