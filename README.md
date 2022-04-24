# Duck Debuggers: Peer Evaluation Application
## About the Project
This is Project 6 for the CSE 3901: Web Applications class during the Spring 2022 semester. For this project, we designed a peer evaluation web appliciton by using the
Ruby on Rails. This peer evaluation appliction have differnt views for instructors and students. Students can leave comments and scores to themselves and their groupmates. Instructor can assign student into groups and assign projects to groups. They can also edit students' information and review scores.


## Application Features
- Admin views and students view
  - Students and admins have different views. Admin can see all the users, groups, projects and reviews. Students can only see their own profile and the received reviews.
- Profile editing function
  - Students can edit their name and email; admin can edit user name, email, group name, and project information
- Review function
  - Students can leave comments and scores to their groupmates
### Built With
* HTML5
* CSS3
* Ruby v3.0.1
* Rails v7.0.2.3
### Other tools used
* VirtualBox
* Ubuntu
* VSCode
## Setup
1. Clone the repository
```
git clone https://github.com/cse3901-2022sp-giles/Project_6_Ruby_On_Rails_Duck_Debugg_newers.git
```

2. Move into the project folder
```
cd Project_6_Ruby_On_Rails_Duck_Debugg_newers
```

3. Update the required gems
```
bundle update
```

4. Update the required webpaker
```
rails webpacker:install
```

5. Run the database migration
```
rails db:migrate
```

6. Run the rails server
```
rails server
```

7. open the browser and type in the url
```
127.0.0.1/3000
```

## How to use our peer evaluation application
1. Click the sign up button on the main page
2. Sign up as one student (not clicking the admin checkbox)
3. Sign up a new admin account (clicking the admin checkbox)
4. Log in as admin.
5. Create a new group
6. Assign the student into the group
7. Create a new project
8. Assign the group to the project
9. Log out as admin
10. Log in as student
11. Now you can click the review button to leave reviews to yourself. If there are more than one studetn in the group, you can leave review to other groupmates.

### Notice:
**Students must be assigned to a group and project must be assigned to a group to use the review function** <br>
**Users are not allowed to delete themselves**

## Team Responsibility
### Dishon Mmanyi
- Logout
- Styling
- Student view


### Feifei Li
- Projects controller, view and model
- Styling
- Testing
- Documentation

### Kyle Stadler


### Nolan Song
- Login (User new/create and Sessions)
- Users edit/delete, add user to group
- Add multiple users via text area
- Search reviews by group
- Styling
