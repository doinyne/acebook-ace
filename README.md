# Acebook

### Overview
* Introduction
* Functionality
* Links
* Demo
* MVP Mockup
* Instructions for use
* User Stories
* Technologies

## Introduction

A social media application implementing CRUD operations inspired by Facebook. Users can go post images and comments with the ability to edit and delete these later on. All posts and comments are tied to a specific user so they can only be edited/amended by the owner

## Functionality

- Sign up:  A user can create a new account with the option of uploading a profile image. If one isn't uploaded a default one will be assigned.
- Log in: A signed up user can log in to the site.
- Log out: A logged in user can log out of the site.
- Create post: A logged in user can post to the communal wall with a text based comment, post an image or create a post with text and an image.
- Managing posts: A logged in user can edit or delete posts they have previously posted on the wall.
- Liking/unliking a post: A logged in user can like/unlike posts present on the communal wall.
- Commenting on a post: A logged in user can comment on posts present on the communal wall.
- Managing comments: A logged in user can delete comments they have previously made on posts.
- Chat rooms: Users can create a new chat room and send live messages to other logged in users.

## Links
- Link to our [Trello Board](https://trello.com/b/L3P4vDYK/acebook-team-name)

## Demo

![acebook1](https://user-images.githubusercontent.com/41869496/156927020-060be0d7-b04c-48f1-895f-e2d031c239a0.gif)
![acebook2](https://user-images.githubusercontent.com/41869496/156927021-9a07cfa0-9729-41a0-b908-ca188711fceb.gif)

## MVP Mockup 
![image](https://user-images.githubusercontent.com/75613073/145019013-674c2d06-2cb6-4165-9039-8a9b5a9912d5.png)

## Instructions for use

### Setup
First, clone this repository to a local directory. Enter in the command line:
```
$ git clone https://github.com/mhbae-dev/acebook-ace/
$ bundle install
$ bin/rails db:create
$ bin/rails db:migrate
$ bundle exec rspec # Run the tests to ensure it works
```
### Run
Open [http://localhost:3000](http://localhost:3000) to view it in your browser.
```
$ bin/rails server # Start the server at localhost:3000
```

### Test Coverage
```
$ bundle exec rspec
```

## User Stories
```
As a user 
So I can access content 
I would like to sign up for an account on Acebook

As a user 
So I sign up 
I would like to see a form on the page that takes email and password

As user 
So I can log in with my new account 
I would like to be redirected to login page

As a user 
So that I can use Acebook 
I would like to be able log in 

As a user 
So that I can login
I want a form that takes my email and password

As a user 
So that its easy to login 
I want the login form to be on the homepage

As a user
So that other people cant log in to my account 
I want my password to be checked against my email 

As a user 
So I can receive some personalistion
I want to see receive a welcome message with my details

As a user 
So that I can use Acebook 
I want to be taken to my dashboard once logged in 

As a User
I want to logout of Acebook
So that nobody can post using my login credentials

As a User
I want to access the logout button on the posts page
So that I can logout from Acebook after posting

As a User
I want to be redirected to the Homepage upon logging out
So that I can Login again If I wish to continue browsing and posting

As a user 
I should only be able to access root when I am logged out 
So that the site is secure 

As a user
I want to be able to make a post to Acebook
So that my post can be displayed

As a User
I want to be able to like/unlike a post 
So I can see how popular posts are

As a User 
So I can see how popular a post is
I want to be able to see how many likes a post has

As a user
So theres a true reflection of likes 
I want to only be able to like a post once

As a user
I want to be able to post a photo
So that my photo can be displayed

As a user
I want to add a post to the feed
So that my newest post is displayed at the top of the feed

As a user
I want to be able to comment on a post
So that my comment can be displayed

As a user
I want to see the time a post was uploaded comment was made
So that I see when a post and its comments were posted

As a user
I want to see the number of comments made on a Image posted
So that I see how interested people are in the image

As a user
I want to be able to see a users name and photo on a post
So that I can see who made a post

As a user
I want to be the only person able to delete and update my own post
So that I can control edits and deletes it

As a user
I want to be able to be the only person able to delete my comment
So that I can prevent others from deleting my comment

As a user
I want to be able to live message in a chatroom
So that I can tell my friends how cool Acebook is!
```

## Technologies Used
- Ruby
- Ruby on Rails
- Bootstrap
- Rspec
- Bcrypt
- Figma
- Git
