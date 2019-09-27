![OsloMet logo](assets/oslomet.png)
# Technical task: Automated Software Testing

*A part of the OsloMet course: "ACIT 4410: Agile Service Delivery and Developer Operations"*

---

This is a part of the technical task in the OsloMet course mentioned above. In this task, I will create a framework which will test new code before releasing it for production. For this project I will be using GitHub, Docker and Jenkins. *Details below.*


## About

#### Description:
You are working for a company called StarFleet Design, a web-design company which predominantly build web-pages for other companies. All of the web-pages exists on a local GitLab server, having a Git repository for each site. Additionally, they have one web-server per site which runs on their own OpenStack cloud.

#### Current workflow:
Their current workflow for modifying a web-page for a customer is the following:

1. Check out the latest version from the Git server
1. Modify the HTML pages
1. When all the changes are made, use Git to add a new tag for the new version (v1, v2, v3 etc.)
1. Commit and push the changes to the Git server
1. Log in to the corresponding web-server and go to the folder which holds the HTML files and pull the latest tag.

#### Background:
Their current method works well for the developers. They can work from home and on the road because they have a local version of the site on their laptop they can work on. The only problem is **testing**: There has been too many situations lately where there has been a problem with the HTML code so the webpage has not shown the correct information. Customers are getting irritated.

#### The task:
Your task is to create a framework where new code can be tested before released to the production servers. *The focus is on automation.* The idea is that after **step 4**, a *Docker* container is created that will automatically configure itself as a test web-server and clone the desired version of the code from the Git server and install it. 

An external script will check that the web-server is working and look for a particular text in the web-page. After the test is complete, there should be a message at the end telling the user wether the test was a success or not. If the test was a success, a new docker container is deployed that will configure itself as a production web-server and deploy the latest correct version of the code. That is, if the test(s) are successful, why not just make sure the new version lands in production automatically? 

They have heard of **Jenkins** as a test-scheduling system and are interested in using that!

#### Note:
This solution will require a bit of scripting, Docker and Git as well as Jenkins automation. You are to demonstrate that your solution works.

Technically, a site would not break if there is an error in the HTML, but for this scenario we will pretend that it do!

## Expanding the task
In addition to testing for errors in the HTML, I will expand the project by using the Flask framework and check for errors in code associated with Flask.

#### Short about Flask
Flask is a microframework used to create web applications with Python. Compared to other frameworks like Django, Flask starts you off with as little functionality as possible, giving you the possibility to expand in which way you want.

#### Flask dependencies
Flask has the following dependencies
*(taken from: https://flask.palletsprojects.com/en/1.1.x/installation/)*:

+ Jinja: A web template for the Python language.
+ MarkupSafe: Included with Jinja. Avoids injection attacks by escaping untrusted input when rendering web templates.
+ Werkzeug: Implements a Web Server Gateway Interface. This is the standard interface between apps and servers for Python.
+ ItsDangerous: Used to sign data and ensures its integrity.
+ Click: a framework for writing command line applications. Provides the *flask* command.
