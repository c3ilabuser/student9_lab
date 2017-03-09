#Cloud Compass Computing, Inc.<br>Digital Literacy Course<br><br>DevOps for Product Owners - Session 2 Exercise  

##Introduction

Since the first release of your Awesome ToDo App, you're DevOps team has improved your pipeline by adding some test(s) after deployment and manual approval step before deploying to Prodution.  This involved adding the Jenkins to the pipeline to run the steps, and using Jenkins to add some automated testing, and the prod approval step.  Incidentally - the test your testers added was to make sure the the app really is "Awesome".

In this exercise, you will be going through a set of steps to change your app, make sure it passes post-dev deployment tests and promote it to Production.
  
As with the last exercise, this one makes use of a basic "ToDo List" web application.  In the course of this exercise, you will experience (some of this is review from the past exercise):
 
* how to access and navigate in Github - a version control system used for most Open Source solutions
* how code is stored and organized on GitHub in repositories - "repos"
* how edits to source code can trigger builds and deployments in a DevOps environment such as OpenShift.
* how a DevOps pipeline can incorporate automated testing to prevent apps with coding errors from being deployed to production
* how a DevOps pipeline can incorporate an interactive approval step to add a measure of human control to production deployments  

Each student will have the use of their own repository and pipeline for this exercise, but please ensure that you access your *assigned repo and pipeline only* to avoid causing confusion for another student.

Before proceeding, make sure you have the label provided with your workbook, as it has the password details that you'll need in the steps below.

##Access your deployed ToDo List web application
 
The starting point of the exercise is that a version of the ToDo application has been deployed for each student. Your student number for the exercises is on the cover of your workbook.

To view your version of the ToDo application:

* Ctrl-Click your link (with your student number) from the list below to open the link in a new tab.
* Enter some items in the ToDo list.

Congratulations, your life is now 17% more organized!

* Student 1 - http://lab-student1-lab.apps.cloudcompass.ca
* Student 2 - http://lab-student2-lab.apps.cloudcompass.ca
* Student 3 - http://lab-student3-lab.apps.cloudcompass.ca
* Student 4 - http://lab-student4-lab.apps.cloudcompass.ca
* Student 5 - http://lab-student5-lab.apps.cloudcompass.ca
* Student 6 - http://lab-student6-lab.apps.cloudcompass.ca
* Student 7 - http://lab-student7-lab.apps.cloudcompass.ca
* Student 8 - http://lab-student8-lab.apps.cloudcompass.ca
* Student 9 - http://lab-student9-lab.apps.cloudcompass.ca
* Student 10 - http://lab-student10-lab.apps.cloudcompass.ca
* Student 11 - http://lab-student11-lab.apps.cloudcompass.ca
* Student 12 - http://lab-student12-lab.apps.cloudcompass.ca
* Student 13 - http://lab-student13-lab.apps.cloudcompass.ca
* Student 14 - http://lab-student14-lab.apps.cloudcompass.ca
* Student 15 - http://lab-student15-lab.apps.cloudcompass.ca
* Student 16 - http://lab-student16-lab.apps.cloudcompass.ca
* Student 17 - http://lab-student17-lab.apps.cloudcompass.ca
* Student 18 - http://lab-student18-lab.apps.cloudcompass.ca
* Student 19 - http://lab-student19-lab.apps.cloudcompass.ca
* Student 20 - http://lab-student20-lab.apps.cloudcompass.ca

##Access your repository on GitHub

Time to add the awesome.

You will be provided a GitHub username+password, and (on the workbook cover label) the name of a repository that they will use for this part of the exercise.  It's numbered to match your student number.

Each instance of the deployed ToDo application has a distinct repository in GitHub to allow students to work independently.

The steps to find your way to your assigned GitHub repository are as follows:

* Ctrl-Click this link to open a new tab in github: https://github.com/C3IDigitalLiteracyLab
* If you're a keener and have already logged into GitHub with your own personal account, sign out and go back to the page
* Click Sign In - top right - and enter the username and password provided to you.
* You should be back to the screen you were on, but now logged into github.

* Click the link below corresponding to your student number:
 
 * Student 1 - https://github.com/C3IDigitalLiteracyLab/student1_lab
 * Student 2 - https://github.com/C3IDigitalLiteracyLab/student2_lab
 * Student 3 - https://github.com/C3IDigitalLiteracyLab/student3_lab
 * Student 4 - https://github.com/C3IDigitalLiteracyLab/student4_lab
 * Student 5 - https://github.com/C3IDigitalLiteracyLab/student5_lab
 * Student 6 - https://github.com/C3IDigitalLiteracyLab/student6_lab
 * Student 7 - https://github.com/C3IDigitalLiteracyLab/student7_lab
 * Student 8 - https://github.com/C3IDigitalLiteracyLab/student8_lab
 * Student 9 - https://github.com/C3IDigitalLiteracyLab/student9_lab
 * Student 10 - https://github.com/C3IDigitalLiteracyLab/student10_lab
 * Student 11 - https://github.com/C3IDigitalLiteracyLab/student11_lab
 * Student 12 - https://github.com/C3IDigitalLiteracyLab/student12_lab
 * Student 13 - https://github.com/C3IDigitalLiteracyLab/student13_lab
 * Student 14 - https://github.com/C3IDigitalLiteracyLab/student14_lab
 * Student 15 - https://github.com/C3IDigitalLiteracyLab/student15_lab
 * Student 16 - https://github.com/C3IDigitalLiteracyLab/student16_lab
 * Student 17 - https://github.com/C3IDigitalLiteracyLab/student17_lab
 * Student 18 - https://github.com/C3IDigitalLiteracyLab/student18_lab
 * Student 19 - https://github.com/C3IDigitalLiteracyLab/student19_lab
 * Student 20 - https://github.com/C3IDigitalLiteracyLab/student20_lab

* You should see a list of files. These are the contents of the repository.
* Congratulations! You have now completed GitHub Competency Level 1! 

##Edit a source code file

Each of the files listed in the repository you navigate to above are a part of the ToDo application, or some form of supporting material.  You will be making a change to the contents of one of these files, and then watching how it propagates through the build and deployment tooling.
 
To perform your edits:

* Locate the file "index.html" in the repository's file list and click it. The screen will update and display the contents (code) of the file.
* Switch to to the tab showing your ToDo app. Notice the title of the app is "todos" and the prompt is "What needs to be done?". So sad.  We want to change these to something awesome.
* Switch back to your GitHub tab.
* Find the Edit (pencil) button at the top-right of the area showing the source code and click it. You're now in Edit mode.
* Go to line 16 in the source code and change the text `<h1>todos</h1>` to `<h1>awesome list</h1>`
* Go to line 18 in the source code and change the text `placeholder="What needs to be done?"` to `placeholder="How to be awesome..."`
* Scroll to the very bottom of the page and in the "Update" field of the Commit changes" section, type something like "make app more awesome" and then click the green "Commit changes" button underneath.
* Congratulations, you're now a junior front-end dev!
  
##Follow build and deploy process

The GitHub repository containing the file you edited above is connected to an automated pipeline that will build, test, and deploy a new version of your ToDo app for every change you make to your GitHub repository.

In this exercise, we're going to explore the pipeline that has been set up, and make sure it's working properly.

* Ctrl-Click the link below corresponding to your student number:

 * Student 1 - https://jenkins-lab-tools.apps.cloudcompass.ca/blue/organizations/jenkins/lab-tools-student1-lab-lab-pipeline/activity
 * Student 2 - https://jenkins-lab-tools.apps.cloudcompass.ca/blue/organizations/jenkins/lab-tools-student2-lab-lab-pipeline/activity
 * Student 3 - https://jenkins-lab-tools.apps.cloudcompass.ca/blue/organizations/jenkins/lab-tools-student3-lab-lab-pipeline/activity
 * Student 4 - https://jenkins-lab-tools.apps.cloudcompass.ca/blue/organizations/jenkins/lab-tools-student4-lab-lab-pipeline/activity
 * Student 5 - https://jenkins-lab-tools.apps.cloudcompass.ca/blue/organizations/jenkins/lab-tools-student5-lab-lab-pipeline/activity
 * Student 6 - https://jenkins-lab-tools.apps.cloudcompass.ca/blue/organizations/jenkins/lab-tools-student6-lab-lab-pipeline/activity
 * Student 7 - https://jenkins-lab-tools.apps.cloudcompass.ca/blue/organizations/jenkins/lab-tools-student7-lab-lab-pipeline/activity
 * Student 8 - https://jenkins-lab-tools.apps.cloudcompass.ca/blue/organizations/jenkins/lab-tools-student8-lab-lab-pipeline/activity
 * Student 9 - https://jenkins-lab-tools.apps.cloudcompass.ca/blue/organizations/jenkins/lab-tools-student9-lab-lab-pipeline/activity
 * Student 10 - https://jenkins-lab-tools.apps.cloudcompass.ca/blue/organizations/jenkins/lab-tools-student10-lab-lab-pipeline/activity
 * Student 11 - https://jenkins-lab-tools.apps.cloudcompass.ca/blue/organizations/jenkins/lab-tools-student11-lab-lab-pipeline/activity
 * Student 12 - https://jenkins-lab-tools.apps.cloudcompass.ca/blue/organizations/jenkins/lab-tools-student12-lab-lab-pipeline/activity
 * Student 13 - https://jenkins-lab-tools.apps.cloudcompass.ca/blue/organizations/jenkins/lab-tools-student13-lab-lab-pipeline/activity
 * Student 14 - https://jenkins-lab-tools.apps.cloudcompass.ca/blue/organizations/jenkins/lab-tools-student14-lab-lab-pipeline/activity
 * Student 15 - https://jenkins-lab-tools.apps.cloudcompass.ca/blue/organizations/jenkins/lab-tools-student15-lab-lab-pipeline/activity
 * Student 16 - https://jenkins-lab-tools.apps.cloudcompass.ca/blue/organizations/jenkins/lab-tools-student16-lab-lab-pipeline/activity
 * Student 17 - https://jenkins-lab-tools.apps.cloudcompass.ca/blue/organizations/jenkins/lab-tools-student17-lab-lab-pipeline/activity
 * Student 18 - https://jenkins-lab-tools.apps.cloudcompass.ca/blue/organizations/jenkins/lab-tools-student18-lab-lab-pipeline/activity
 * Student 19 - https://jenkins-lab-tools.apps.cloudcompass.ca/blue/organizations/jenkins/lab-tools-student19-lab-lab-pipeline/activity
 * Student 20 - https://jenkins-lab-tools.apps.cloudcompass.ca/blue/organizations/jenkins/lab-tools-student20-lab-lab-pipeline/activity

* When prompted, log in using the OpenShift username (student + your number) and the password on your label.
  * Any thing that looks like the number one *IS* the number one.
* You should see a "pipeline" (#1) that appears to either be in progress (building / deploying / testing your app), or failed :(
* Click on the line of that pipeline, and, if it's still running, watch a minute or two until the test stage completes.  The test stage *should* fail and the pipeline has stops due to a failed test.  What went wrong?
* While there - click on the steps of the pipeline and expand the line(s) below to see a log of what happened on each step.

##Correct the application title

The test team knew that the title of the app had to be awesome, and you didn't have that in your app. Test Driven Development at work.  Write the test, it fails, write the code, it (hopefully) works.

To perform your fix:

* Switch to to the tab showing your ToDo app. Notice the title of the app in your browser tab doesn't show the awesomeness...it's something boring like "AngularJS • TodoMVC". Let's fix it.
* Switch back to your GitHub tab.
* Locate the file "index.html" in the repository's file list and click it. The screen will update and display the contents (code) of the file.
* Find the Edit (pencil) button at the top-right of the area showing the source code and click it. You're now in Edit mode.
* Go to line 5 in the source code and change the text `<title>AngularJS • TodoMVC</title>` to `<title>AngularJS • AwesomeTodoMVC</title>`
* Scroll to the very bottom of the page and in the "Update" field of the Commit changes" section, type something like "make title of app more awesome" and then click the green "Commit changes" button underneath.

##Verify test success and approve production deployment

* Flip back to your pipeline browser tab.  You should see a new line in the pipeline execution list.  Click into it.  This time, the test stage should succeed because you've corrected the title.
* This time, your test step should pass.
* Ready for Prod? You'll be prompted to approve the deployment (promotion) of the app to production.
* Click the approve button and watch the pipeline completes. 

##Want to see what OpenShift is doing?

* If you want to see what's happening with OpenShift on this, ctrl-click the link for your lab:

* https://master.labs.cloudcompass.ca:8443/console/project/student1-lab/overview
* https://master.labs.cloudcompass.ca:8443/console/project/student2-lab/overview
* https://master.labs.cloudcompass.ca:8443/console/project/student3-lab/overview
* https://master.labs.cloudcompass.ca:8443/console/project/student4-lab/overview
* https://master.labs.cloudcompass.ca:8443/console/project/student5-lab/overview
* https://master.labs.cloudcompass.ca:8443/console/project/student6-lab/overview
* https://master.labs.cloudcompass.ca:8443/console/project/student7-lab/overview
* https://master.labs.cloudcompass.ca:8443/console/project/student8-lab/overview
* https://master.labs.cloudcompass.ca:8443/console/project/student9-lab/overview
* https://master.labs.cloudcompass.ca:8443/console/project/student11-lab/overview
* https://master.labs.cloudcompass.ca:8443/console/project/student12-lab/overview
* https://master.labs.cloudcompass.ca:8443/console/project/student13-lab/overview
* https://master.labs.cloudcompass.ca:8443/console/project/student14-lab/overview
* https://master.labs.cloudcompass.ca:8443/console/project/student15-lab/overview
* https://master.labs.cloudcompass.ca:8443/console/project/student16-lab/overview
* https://master.labs.cloudcompass.ca:8443/console/project/student17-lab/overview
* https://master.labs.cloudcompass.ca:8443/console/project/student18-lab/overview
* https://master.labs.cloudcompass.ca:8443/console/project/student19-lab/overview
* https://master.labs.cloudcompass.ca:8443/console/project/student20-lab/overview

You will see that there are now two pods running - "Lab" (Dev) and "Lab-Prod" (Prod).  Hey, we just bought some more servers!

Feel free to poke around a bit.
