# Daily Swift Coding Challenge  💻 💪🏽 [![Build Status](https://travis-ci.com/cham-s/Daily-Swift-Coding-Challenge.svg?branch=master)](https://travis-ci.com/cham-s/Daily-Swift-Coding-Challenge) 

## Challenges done so far: [55](https://github.com/cham-s/Daily-Swift-Coding-Challenge/tree/master/challenges) ✅

In order to get a better undertanding of the Swift programming language I took
the challenge of trying to solve coding challenges every day.

Challenges come from:

* [Swift Coding Challenges By Paul Hudson](https://www.hackingwithswift.com)
* [reddit: r/dailyprogrammer](https://www.reddit.com/r/dailyprogrammer/)
* [exercism](https://exercism.io)

The code mainly runs on macOSX platform.


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
│   └── unique
│       └── unique.swift
└── Tests
├── Challenge3Tests
│   ├── uniqueTests.swift
│   └── XCTestManifests.swift
└── LinuxMain.swift
```
To generate the Xcode project run the following command in the terminal.

```shell
swift package generate-xcodeproj
```

Then open the project with XCode and you can run the test directly from the test source file
by clicking on the little diamond button on the left of the class definition.

![run test](https://i.imgur.com/XHaazAG.png)
