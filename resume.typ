#import "@preview/simple-technical-resume:0.1.1": *

// Put your personal information here
#let name = "Ethan Mikolaycik"
#let phone = "+1 (737) 239-6840"
#let email = "mikolaycikethan@gmail.com"
#let github = "EthanMik"
#let linkedin = "ethan-mikolaycik-470806383"

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
  linkedin-user-id: linkedin,
  github-username: github
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
    datetime(year: 2029, month: 5, day: 1)   // end-date
  )[
   
  ]
  // More educational qualifications ... 
]

#custom-title("Experience")[  
  #work-heading(
    "Regional Manager",                     // title
    "Dunder Mifflin",                       // company
    "Scranton, PA",                         // location
    datetime(year:2013, month:5, day:1),    // start-date
    "Present"                               // end-date
  )[
    - Led a team of 10+ employees, boosting office productivity and morale
    - Maintained the highest sales average, outperforming competitors despite market challenges
    - Implemented innovative security measures to protect the office from threats, including criminal activity and wildlife intrusions
    - Successfully negotiated client contracts, increasing annual revenue by 20%
  ]
  // More experiences ...
]

#custom-title("Projects")[
  #project-heading(
    "mikLib",      // name
  )[
  - Open-source C++ library for VEXcode adding odometry, motion control, and an in-brain UI for real-time PID tuning and autonomous selection
  - Implemented two-tracker IMU odometry, wall resetting, with drive algorithms, turn/swing to heading, drive to point/inches, drive-to-pose via boomerang, pure-pursuit path following
  - Built reusable PID class and motion chaining to compose complex autonomous routines with minimal code; added SD-card save/load and live PID graphs
  - Over 5 high school robotics teams are competing with mikLib
  ]
  // More projects ...
]

// Use `skills` function to create list with custom rules surrounding indentation and alignment.
// It is specifically for lists directly inside the custom-title section.
#custom-title("Skills")[
  #skills()[
    - *Professional Skills:* Sales Expertise, Leadership, Conflict Resolution, Strategic Planning, Negotiation
    - *Personal Traits:* Hardworking, Alpha Male, Jackhammer, Merciless, Insatiable
    - *Specialized Talents:* Karate (Black Belt), Jujitsu, Werewolf Hunting, Table Making
  ]
]
