# Flutterando Masterclass App

Project created to practice concepts learned following the [Flutterando Online Course](https://masterclass.flutterando.com.br).

### In the course we learned about:
 - Object Oriented Programming 
 - Flutter architecture and most common widgets
 - How to read a mockup to build screens efficiently
 - Implicit and controlled animations
 - Navigation
 - Design Patterns

   - Model
   - View
   - Controller
   - Presenter
   - ViewModel
   - Store
   - Prototype
   - Service
   - Repository
   - Dependencu Injection
 - Unity tests
 - Error treatment
 - SOLID

 ---

### Links

Youtube channel: [Link](https://www.youtube.com/c/Flutterando)

Linkedin: [Link](https://www.linkedin.com/company/theflutterando/)

Teacher: [Jacob Moura](https://www.linkedin.com/in/jacob-moura/)

## :satellite: Instalation

Clone: `git clone https://github.com/renanspvargas/masterclass_app.git`

Enter dir `cd masterclass_app`

Install Packages `flutter pub get`

## :fuelpump: Generating builds

If you want to build for another SO change your `flutter config`

Then run `flutter create .`

## :ferris_wheel: Structure 

The project is divided in **Features**, **Navigation** and **Utils**. The **Utils** folder contain the *Theme*, reference to *Assets* and common *Widgets*. The **Navigation** folder contains the *paths* and the *route generator* used in the *MaterialApp*. Finally, the **Features** folder contains all related to screens and activities made in this course.

For now there are two folders inside **Features**. Each feature has its own imports file to reference everything that is related to it. The **Main** refers to main screens, models and data. The same is valid for **Activities**.

The **Activities** resolution is separated by folders and they were made in the following order:

 - Mockup: We received a desing and had to create them in Flutter
 - Animation: Learning about different types of animations
 - Logic: We started learning about Design Patterns and had to develop a validator respecting the layers
 - Design Pattern: Focus on network and data related (see Dartion section to know about the mock)

## :nut_and_bolt: TODO
 - Change URLs referencing local servers acording to platform.
 - Study better ways to store the constant data on the app

## :zap: Dartion

Dartion is a package on Pub Dev: [Link](https://pub.dev/packages/dartion)

Its used to create a local server based on a json file that can be modified via http requests. Its usefull because helps us to focus on what really matters: Flutter.

There is everything you need to know about it in the package's page, but you can also check on this tutorial: [Youtube](https://www.youtube.com/watch?v=7dRtRxkJ4yQ)

-> The json file used for Design Pattern activities:
```json
{
    "users": [
        {
            "id": "0",
            "name": "Robert",
            "email": "robert@gmail.com",
            "password": "123"
        },
        {
            "id": "1",
            "name": "Carls",
            "email": "carls@gmail.com",
            "password": "1234"
        }
    ],
    "products": [
        {
            "id": "0",
            "name": "Flutter 2"
        },
        {
            "id": "1",
            "name": "React Native"
        },
        {
            "name": "Ionic",
            "id": "2"
        }
    ]
}

```

## :moyai: Local server URL

I made this project mostly using a Android Emulator, so to connect to localhosts like Dartion I used ```10.0.2.2``` because the emulator runs in a VM. In other cases we would normally use just the ```localhost:port```.
