# General Project Documentation


## R7	Identification of the problem you are trying to solve by building this particular marketplace app.

If you are in the business of making money from cars you look for opportunities. Whether that be repairing rare vehicles to their former glory, or just repairing a modern vehicle and selling it on again for a profit. Where do you look? 

You can keep an eye on facebook marketplace but the largest radius you have for searching is 200 kilometers from your current location.  You can join specific and private facebook groups but who says the person selling the car in Adelaide is going to put it in a group you will see.  

The largest car sales platform in Australia, www.carsales.com.au is designed for selling the best on themarket for the best dollar possible, and that reflects in the high advertising charge.

There is no one specific website people can go to to search and find project cars with the intention of adding value to them.

My website is called www.REVonate.com

The cars can be modern cars that need mechanical repair to be roadworthy, older vintage cars that need full restoration or cars that are repairable write offs or statutory writeoffs.  


## R8	Why is it a problem that needs solving?

Currently people need to search through any number of private and localised facebook groups, or national auction sites. The main websites like carsales.com are only selling functioning and roadworthy vehicles that people are wanting to sell for top dollar. By marketing a brand like Revonate.com, we can resolve this issue and bring a value-adding community together under one roof.

## R9	A link (URL) to your deployed app (i.e. website)

https://revonate.herokuapp.com

## R10	A link to your GitHub repository (repo).

https://github.com/LeithPrice/revonate

## R11	Description of your marketplace app (website), including:
- Purpose
 The purpose of the app, is to bring together all different parts of the automotive community that buy and sell vehicles that profit can be made from. 

- Functionality / features
 Current - The website allows buyers and sellers to look at the posted listings in a table format without logging in. Once you log in, or sign up, you are able to further this experience by purchasing any listings and create listings. When creating listings you are able to upload a photo of the vehicle, and once saved, come back to edit in the future if need be. Lastly you are able to access all vehicles your account has ever bought or sold.

 Future - There are plans to add search functions, payment functions, private message functions and more dynamic styling and design.

 Security - Authentication security proticals are in place using the DEVISE gem. THis has in place username and password logon, session expiration, password recoverability, and too many wrong passwords lead to lockout. Authorisation protocols are also inplace to ensure edit and delete functions for listings are only authorised for the original author.

- Sitemap

![Revonate Sitemap](docs/Revonate_Sitemap.png)

- Screenshots

![Homepage](docs/WEBSITE_SCREENSHOTS/HOME_SCREENSHOT.png)

![Sign up](docs/WEBSITE_SCREENSHOTS/SIGNUP_SCREENSHOT.png)

![Listing index](docs/WEBSITE_SCREENSHOTS/LISTINGS_INDEX_SCREENSHOT.png)

![Listing ](docs/WEBSITE_SCREENSHOTS/LISTING_SCREENSHOT.png)

![Bought page](docs/WEBSITE_SCREENSHOTS/ORDER_SCREENSHOT.png)

![Sell page](docs/WEBSITE_SCREENSHOTS/PURCHASE_SCREENSHOT.png)

![Edit page](docs/WEBSITE_SCREENSHOTS/EDIT_SCREENSHOT.png)

- Target audience

 The target audience is any one who has or is looking for a car that is not in 100% condition, cosmetically or mechanically. And with some labour and parts, a profit can be made by adding value to the vehicle.

- Tech stack (e.g. html, css, deployment platform, etc)

  - Ruby Language
  - Rails Platform
  - Javascript
  - HTML
  - CSS
  - SCSS
  - GitHub Version control
  - Heroku deployment service
  - PostgreSQL Database
  - Trelloboard software for workflow management
  - App.diagrams.net for Sitemaps
  - Lucidchart ERD diagrams software
  - Balsamiq Wireframes software
  - Keynote Presentation software
  
## R12	User stories for your app

- As John the farmer, I want to advertise my 40 year old vintage car in the right place to as many buyers as possible so i can feel confident i get the best possible dollar for it.

- As Dave the local mechanic, i want to purchase a modern car that needs my repair skills, so i can make some money on the side after hours.

- As Bill the local pensioner, i want to sell my modern car that needs expensive repairs i cant afford so i dont get nothing for it giving it to a scrap yard.

- As Jenny a car restorer, i want to go to one place to find all the latest Barn-find cars, so i can snap up a good vehicle for restoration.

- As Wendy the Vehicle parts exporter, i want to buy Cars that are only good for parts(stat writeoffs) so i can strip themn down and send the parts over seas.

- As Samuel the Mechanical workshop owner, i want to buy cars that are Repairable writeoffs so i can keep my staff busy when its quiet and make a profit flipping cars.

## R13	Wireframes for your app

![Homepage](docs/WIREFRAMES/WIREFRAME_MAINPAGE.png)

![Login](docs/WIREFRAMES/WIREFRAMES_LOGIN.png)

![listings](docs/WIREFRAMES/WIREFRAMES_LISTINGS.png)

![individual listing](docs/WIREFRAMES/WIREFRAMES_INDIVIDUALLISTING.png)

![bought](docs/WIREFRAMES/WIREFRAMES_BOUGHT.png)

![sold](docs/WIREFRAMES/WIREFRAMES_SOLD.png)

![orderscreen](docs/WIREFRAMES/WIREFRAMES_ORDERSCREEN.png)

## R14	An ERD for your app

The ERD shows two seperate database systems. one for the user and lsiting data that also has connections to categories and can end at orders table.

Secondly there are the 4 database tables for active storage and action text. These do not show a relationship with the previous database because teh connection happens in teh model and not in the database.

![ERD](docs/REVONATE%20ERD.png)

## R15	Explain the different high-level components (abstractions) in your app

The REvonate app is made in the Rails framework. In this framework,  the MVC architecture is adopted. MVC stands for Model, View and Controller. This framework splits up the app into to 3 different components.

Model represents all the database relationships and the data itself. Specifically the lines of code describe the table relationships to each other.

View represents the User Interface. All the html pages are in views folders and this is where the graphical layout of the information presented on the users computer screen is set.

Controllers represent the go between. Every database table has a controller and how that database and its information is dealt with is predetermined by the code written in the controllers. User input goes to controller who then deals with model to then return the info back to controller to pass on to views.

This structure makes the development and ongoing management of the app easier through compartmentalization. It assists for scalability when wanting to upgrade specific parts of the app and reusability when wanting to add or change the User interface by adding or changing the view componants alone..

Inheritence, is the process of taking on the class characteristics or attributes of other classes. This process creates consistancy and cements the relationships between the information in the app.

In the Model folder, all the user, listing, order and category models inherit characteristics from the application_record which intern inherits from the activerecord::base 

In the Controller Folder, all the pages, order and listings controller files inherit from the application_controller file. This intern inherits characteristics from the actioncontroller::base.


## R16	Detail any third party services that your app will use

DEVISE - Devise is a Ruby Gem that can be added to you GEMfile when designing your app. As the Industry accepted standard for authentication software when using Ruby on Rails framework, everything you need is in one easy Gem to install.  Easy to impliment, DEVISE has 10 modules of authentication, Helper methods to be added to any controller for easy authentication of users before each requested action is performed and automatic route creation by just defining Devise for which Model it is to apply to in config/routes.rb.

HEROKU - Heroku is a cloud based application platform that allows you to deploy an application you are designing to market. Know for its simplisity and scalability, it only takes a few lines of code to go from local repository to hosted app environment on the open internet.  This is best for people wanting to get to market sooner as Heroku using dynos which are basically virtual machines. The more you need, the more that are turned on. This is opposed to real world technologies like AWS where you are actually dealing with Real Servers.

## R17	Describe your projects models in terms of the relationships (active record associations) they have with each other

Relationships between Models can be defined many ways, however the many difference between relationships is how many associations records there are.  

For example the 3 main types of database associations are
 - one to one
 - one to many
 - many to many.

 Also when a database table has an association with another database table, the former database Primary key is used in the latter database as a foreign key. This association is referred to as 'belongs_to'

 The User model has "has_many" associations with listings, and with bought items and with sold items. 

 The Order model has "belong_to" aassociations with listings, but also with buyer and seller user_id.

 The Listings model has "belongs_to " associations with User and Category models.  In extra definition it also has "has_rich_text" associaiton to description and "has_one_attached" association with picture.



## R18	Discuss the database relations to be implemented in your application

The user database exist and can have relationships with all tables.

When listings are made then the user database has relationships with listings database. 

Categories database also has relationships with Listings database.

Once Purchases are made or sales are performed, relationships from listings, and user databases are then created to the orders table.


## R19	Provide your database schema design

```
  create_table "action_text_rich_texts", force: :cascade do |t|
    t.string "name", null: false
    t.text "body"
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "listings", force: :cascade do |t|
    t.integer "year"
    t.string "month"
    t.string "manufacturer"
    t.string "model"
    t.string "bodytype"
    t.string "state"
    t.integer "odometer"
    t.string "colour"
    t.integer "condition"
    t.integer "seats"
    t.integer "doors"
    t.boolean "sold", default: false
    t.integer "price"
    t.bigint "user_id", null: false
    t.bigint "category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_listings_on_category_id"
    t.index ["user_id"], name: "index_listings_on_user_id"
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "listing_id", null: false
    t.bigint "buyer_id", null: false
    t.bigint "seller_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["buyer_id"], name: "index_orders_on_buyer_id"
    t.index ["listing_id"], name: "index_orders_on_listing_id"
    t.index ["seller_id"], name: "index_orders_on_seller_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "username"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id" add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "listings", "categories"
  add_foreign_key "listings", "users"
  add_foreign_key "orders", "listings"
  add_foreign_key "orders", "users", column: "buyer_id"
  add_foreign_key "orders", "users", column: "seller_id"
```

## R20	Describe the way tasks are allocated and tracked in your project

I am using Trello board for project management. I separate tasks into three columns. To-do, Doing and Done.I wrote a list of all things to do at the start, put it in TO-DO. then added to it as i went, moved things to DOING when they were in progress and when finished, moved them to DONE.

https://trello.com/b/vSXGBxme/leithpricet2a2

![LeithPrice_T2A2](docs/TRELLOBOARD/TrelloBoardScreenshot_1.png)

![LeithPrice_T2A2](docs/TRELLOBOARD/TrelloBoardScreenshot_2.png)

![LeithPrice_T2A2](docs/TRELLOBOARD/TrelloBoardScreenshot_3.png)

![LeithPrice_T2A2](docs/TRELLOBOARD/TrelloBoardScreenshot_4.png)

![LeithPrice_T2A2](docs/TRELLOBOARD/TrelloBoardScreenshot_5.png)
