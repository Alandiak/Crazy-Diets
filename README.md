# Crazy Diets

There are many crazy fad diets that are "shown" to give people massive results.
Modern scientists and nutrition experts reject them all.
This app gives people the ability to see which is best by vote.

## How to run
To run this project, open a new flutter project application in Android Studio and add these files. Make sure to call it "crazy_diets". Delete the "tests" file. Then run it on the simulated "sdk phone  x86 arm (mobile)".

To get the simulated phone: In tools > AVD Manager, click "+ Create Virtual Device..." then in the "phone" category add the Nexus 6P.

Once running, click on the "Sign in with Google" to get started. The first tab is diets that you have liked. The second tab is all the known diets, feel free to click on them. Also in that tab you can add new diets by clicking the "+" icon at the bottom right.

## Inspiration
Within the past year, I have become committed to rock climbing.
It is an excellent sport but has obvious physical limitations.
The skinner a person the greater the advantage they have.
I originally attempted cutting the amount of food I intake and eating healthier to become lighter.
Unfortunately, I would not be able to resist the temptation of eating out with my friends,
leading to over the course of 3 months only dropping 2 pounds.

I decided to go extreme on what is considered a "fad" diet.
I went on keto for a bit over 2 weeks, and in that short period of time, I lost 10+ pounds.
I have never been so happy in my life, or as good at rock climbing.
To me sacrificing my normal eating habits for 2 weeks instead of 10 months was worth every moment.
I believe that some "fad" diets help reach your goal, whether it is gaining muscle or losing weight,
faster than the traditional methods.
Therefore I decided to build this mobile application so users can vote on what "fad" diets actually work.

## What it does
- The app allows users to look through a list of diets and like which ones that they are interested in.
- Each diet has a description of how it works to reach a goal, and a process to follow to participate in the diet.
- Users can rate diets, therefore, providing feedback to other users.
- Users are allowed to create new diets that others can view and rate.

## How we built it
I built the mobile application using Android Studio.
Using Flutter gives it the ability to run on Android and IOS mobile devices.
I used interactive GUIs and routes to give the user the ability to travel between them.

First I created the login page to give the user a friendly welcome.
Upon clicking the "Sign in" button, a route is activated to bring the app to the home GUI of the app.
A class called Global was created, which housed static variables so I can keep track of all the lists and diets.
