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
    "Computer Engineering",                // major
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
    "Software Lead",                     // title
    "WHOOP VEX U Robotics Team",                       // company
    "College Station, TX",                         // location
    datetime(year:2025, month:9, day:1),    // start-date
    "Present"                 )[
    - Managed software members and delegated scoped projects with written requirements, references, and timelines: LVGL PID auto-tuner, LIDAR MCL localization simulator, velocity controller for holonomic drivetrains, and a logging system with graphing support
    - Rewrote our team's ReveilLib library to include motion profiling, path following, holonomic motions, ray-casting localization, and a universal chassis controller
    - Built #link("https://whooprobotics.github.io/WHOOPsim/")[WHOOPSim] which allows drivers to control a simulated robot with a VEX controller
  ]                // end-date
  // More experiences ...
]

#custom-title("Projects")[
  #project-heading(
    "mikLib",      // name
    "C++, VEXcode",
    "https://github.com/EthanMik/mikLib"
  )[
  - Open-source library for VEXcode adding odometry, motion control, and an on-brain custom UI framework for real-time PID tuning and autonomous selection
  - Implemented two-tracker IMU odometry, wall resetting, with turn, swing and drive to point, drive to pose, and holonomic motions
  - Implemented reusable PID class and motion chaining, which values can be individually passed into each drive motion; SD-card save/load for tuning constants and selected autonomous
  - Documented with setup tutorials, Doxygen, and a Docusaurus website; actively maintained and updated
  - 600+ downloads on Github, with discord community for support and development
  ]  
  #project-heading(
    "Wall Reset Simulator",      // name
    "Javascript, HTML, CSS",
    "https://github.com/EthanMik/Wall-Reset-Simulator"
  )[
  - Built a browser-based simulator to validate a wall-reset localization algorithm, using virtual lasers to estimate robot pose from distances to field walls
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
    - Placed 1st in CS3 winter scene competition
  ]
  #project-heading(
    "mikGen",
    "React, TypeScript, Tailwind",
    "https://mikgen.com"
  )[
    - Open-source web-based path planner, autonomous simulator, and code generator for VEX Robotics, supports mikLib, ReveilLib, LemLib, JAR-Template, EZ-Template and custom libraries
    - Segment-based path building (move to point/pose, turn/swing, drive/strafe) with animated robot playback that runs each library's real constants and backend for accurate simulation
    - Library-specific code export/import via clipboard or file, undo/redo with auto-save, box selection, snap-to-grid and magnet snapping, ghost robots, and numbered paths
    - Built as a React and TypeScript offline PWA, with a Docusaurus getting-started guide
  ]
]

// Use `skills` function to create list with custom rules surrounding indentation and alignment.
// It is specifically for lists directly inside the custom-title section.
#custom-title("Skills")[
  #skills()[
    - *Programming Languages* C++, Javascript, Typescript, Java, Python, C\#  
    - *Technologies* Git, GitHub, Linux, CMake, React, Vite, Tailwind, Unity, VS Code, Fusion 360
    - *Interests* Mountain biking, Lego, Origami
  ]
]
