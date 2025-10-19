#import "resume_config.typ": *

// Put your personal information here
#let name = "Ethan Mikolaycik"
#let phone = "+1 (737) 239-6840"
#let email = "mikolaycikethan@gmail.com"
#let github = "EthanMik"
#let linkedin = "ethanmik"
#let youtube = "@ethanmik2587"

// Since the following arguments are within the `with` block,
// you can remove/comment any argument to fallback to the preset value and/or
// remove it. 
#show: resume.with(
  top-margin: 0.45in,
  font: "New Computer Modern",
  personal-info-font-size: 9.2pt,
  author-position: center,
  personal-info-position: center,
  author-name: name,
  phone: phone,
  email: email,
  // linkedin-user-id: linkedin,
  github-username: github,
  youtube-username: youtube
)

// Use custom-title function instead of first-level headings to customize the
// size between two sections by specifying the `spacingBetween` argument.
// https://typst.app/docs/reference/layout/length/

#custom-title("Education")[
  #education-heading(
    "Texas A&M University",                    // institution
    "College Station, TX",                           // location
    "Bachelor of Science",                       // degree
    "Computer Science",                // major
    datetime(year: 2025, month: 8, day: 1),   // start-date
    "Present"   // end-date
  )[
   
  ]
  #education-heading(
    "Lake Travis High School",                    // institution
    "Austin, TX",                           // location
    "High School Diploma",
    "",                                  // degree
    datetime(year: 2021, month: 8, day: 1),   // start-date
    datetime(year: 2025, month: 5, day: 1)   // end-date
  )[
   - Published robotics tutorial series
  ]
  // More educational qualifications ... 
]

#custom-title("Experience")[  
  #work-heading(
    "Software Developer",                     // title
    "WHOOP VEX U Robotics Team",                       // company
    "College Station, TX",                         // location
    datetime(year:2025, month:9, day:1),    // start-date
    "Present"                               // end-date
  )[
    - Designed and planned a web path-planning app with slider-based simulation, X/Y field mirroring, and one-click auton code export
    - Building app in React Typescript with Tailwind CSS
    - Planned integration with existing motion library so each planned path is stored in current repository
  ]
  // More experiences ...
]

#custom-title("Projects")[
  #project-heading(
    "mikLib",      // name
    "C++, VEXcode",
    "https://github.com/EthanMik/mikLib"
  )[
  - Open-source library for VEXcode adding odometry, motion control, and an on-brain custom UI framework for real-time PID tuning and autonomous selection
  - Implemented two-tracker IMU odometry, wall resetting, with turn, swing and drive to point, drive to pose, and follow path drive motions
  - Implemented reusable PID class and motion chaining, which values can be individually passed into each drive motion; SD-card save/load for tuning constants and selected autonomous
  - Documented with setup tutorials and Doxygen-style comments; actively maintained
  - Used by 5+ high school robotics teams in competition
  ]  
  #project-heading(
    "Wall Reset Simulator",      // name
    "Javascript, HTML, CSS",
    "https://github.com/EthanMik/Wall-Reset-Simulator"
  )[
  - Built a browser-based simulator to validate a wall-reset localization algorithm, using virtual lasers to estimate robot (x, y, θ) from distances to field walls
  - Implemented configurable front/left/right/rear lasers with sensor offsets, live visibility toggles, and field switching
  - Deployed on GitHub Pages with documentation
  ]
  #project-heading(
    "Scene Maker",
    "Java AWT/SWING",
    "https://github.com/EthanMik/WinterScene"
  )[
    - Built a customizable scene maker; scene is built with background and particles, with velocity, size and amount parameters; snowflake and rain particles are pre-built
    - Snowflakes are procedurally generated, and can be selected to rotate along the x, y and z axes 
    - Placed 1st in the CS3 winter scene competition
  ]
  #project-heading(
    "Minigame Roulette",
    "C# Unity",
    "https://github.com/EthanMik/minigame-roulette"
  )[
    - Developed a Unity game that has a collection of randomized minigames, selected via a roulette wheel
    - Implemented game selection logic and unified scoring across multiple minigame types
    - Designed and programmed multiple interactive minigames with custom physics, movement, event handling and camera scripts
    - Added UI for real-time score display and transitions that contain minigame controls
  ]
]

// Use `skills` function to create list with custom rules surrounding indentation and alignment.
// It is specifically for lists directly inside the custom-title section.
#custom-title("Skills")[
  #skills()[
    - *Programming Languages* C++, Javascript, Typescript, Java, Python, C\#  
    - *Technologies* Git, GitHub, VEXcode, PROS, raylib, Unity, React, Java AWT/Swing, VS Code, Fusion 360
    - *Interests* Mountain biking, Lego, Origami
  ]
]
