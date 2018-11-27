# Daily Swift Coding Challenge  💻 💪🏽

In order to get a better undertanding of the Swift programming language I took
the challenge of trying to solve coding challenges every day.

The challenges mainly comes from The Swift Coding Challenge written by Paul hudson.
I really recommend the book, as it tests your current knolwedge of the language.
The repo contains my own implementation of the solutions. The order does not particularly follows 
the book.

I intend to expand the sources of the challenges after finishing the book.
r/dailyprogrammer is also a great source for coding challenges.

The code mainly runs on macOSX platform


## How to test each code

#### cd into the challenge you want to test

``` cd Challenge3 ```

##### From the terminal

``` swift test ```

##### With Xcode
Xcode offers a nice user interface to play around and test the code.

As a reminder we're still in the folder containing all ```Challenge3``` files.
All basic packages have the following structure:

``` shell
.
├── Package.swift
├── README.md
├── Sources
│   └── Challenge3
│       └── Challenge3.swift
└── Tests
├── Challenge3Tests
│   ├── Challenge3Tests.swift
│   └── XCTestManifests.swift
└── LinuxMain.swift
```
To generate the Xcode project run the following command in the terminal.

```shell
swift package generate-xcodeproj
```

Then open the project with XCode and you can run the test directly from the test source file
by clicking on the little diamond button on the left of the class definition.

![run test](https://i.imgur.com/kzRmcmg.jpg)
