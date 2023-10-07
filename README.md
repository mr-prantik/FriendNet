# FriendNet
This is a social media application built using Django and Python. It provides users with the ability to create accounts, connect with friends, share posts, and interact with each other's content.

## Features

- User Registration: Users can create an account by providing their username, email, and password.
- User Authentication: Secure authentication system to protect user accounts and data.
- User Profile: Users can create and manage their profiles, including adding a profile picture and updating personal information.
- Friends: Users can connect with other users by sending and accepting friend requests.
- News Feed: Users can view a personalized news feed that displays posts from their friends.
- Post Creation: Users can create and share posts, including text, images, and videos.
- Like and Comment: Users can interact with posts by liking and commenting on them.
- Search: Users can search for other users and posts based on usernames or keywords.

## Installation

+ Fork this repository

+ Clone the repository
  ```
  git clone git@github.com:[YOUR USERNAME]/FriendNet.git
  ```
  
+ Install the requirements
  ```
  pip install -r requirements.txt
  ```
  
+ Make the required migrations
  ```
  python manage.py makemigrations
  ```
  ```
  python manage.py migrate
  ```

+ To run the development server
  ```
  python manage.py runserver
  ```

+ Open your web browser and visit http://localhost:8000 to access the application.

## Usage

Once the application is up and running, users can access the registration page to create a new account. After logging in, they can start using the social media features such as creating posts, connecting with friends, and interacting with content.

## [Contribution](./docs/contribution.md)

## Acknowledgments

This application was built using Django, a high-level Python web framework. Special thanks to the Django community for their contributions and support.






  
