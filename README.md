
# Application Name: MixWater

MixWater is a simple application written in Swift using UIKit and the MVVM design pattern. Its main purpose is to calculate the amount of hot water that needs to be mixed with cold water to achieve a specific temperature.


## Features
The MixWater application allows users to input four values:

- Water Quantity: The desired quantity of water.
- Water Temperature: The target temperature for the water.
- Hot Water Temperature: The temperature of the available hot water for mixing.
- Cold Water Temperature: The temperature of the available cold water for mixing.

Based on these values, the application calculates the amount of hot water needed to mix with the cold water to achieve the desired temperature. The result is displayed to the user.

Additionally, the application includes safeguards to prevent incorrect temperature values from being entered, ensuring the validity of the input data.
## Technologies and Tools

MixWater was developed using the following technologies and tools:

**Swift Package Manager:** Used for dependency management and packages.

**UIKit:** Utilized for building the user interface.

**MVVM (Model-View-ViewModel):** Employed as the architectural pattern for the application.

**Navigation Controller:** Utilized for navigation between views.

**Auto Layout:** Utilized for flexible and responsive interface layout.
## How to Run the Application

To run the MixWater application, follow these steps:


1. Clone the WodaMix repository to your local machine.

```bash
  git clone https://github.com/saladaczia/MixWater.git
```

2. Open the terminal and navigate to the cloned repository directory.

```bash
  cd <path-to-directory>

```

3. Install dependencies using Swift Package Manager.

```bash
  swift package resolve

```

4. Open the MixWater.xcodeproj project file in Xcode.
5. Build and run the application on a simulator or a connected device.



## Summary

MixWater is a Swift-based application developed using the MVVM design pattern and UIKit. Its purpose is to calculate the amount of hot water required to mix with cold water in order to achieve a desired temperature. The application includes safeguards against incorrect temperature values and utilizes Swift Package Manager, Navigation Controller, and Auto Layout.


## Screenshots

![App Screenshot](https://github.com/saladaczia/MixWater/blob/main/MixWater/Supporting%20Files/1.png?raw=true)

![App Screenshot](https://github.com/saladaczia/MixWater/blob/main/MixWater/Supporting%20Files/2.png?raw=true)

![App Screenshot](https://github.com/saladaczia/MixWater/blob/main/MixWater/Supporting%20Files/3.png?raw=true)
