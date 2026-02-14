#set page(margin: 0pt)

#grid(
  columns: (35%, auto),
  rows: (100%),
  
  // Sidebar
  block(
    fill: rgb("#16425b"),
    height: 100%,
    inset: 2em,
    stroke: black,
    [
      #set text(fill: rgb("#d9dcd6"),
                font: "Playfair Display")

      #grid(columns: (auto),
            align: center,
            gutter: 2em,

        // Photo
        figure(
        block(image("media/diego.jpg", width: 80%),
          clip: true,
          radius: 100pt,
          stroke: black),
        ),

        // Name
        block([
          #set text(size: 18pt, weight: "bold")
          #set par(leading: 1em)
          Diego Couto García
        ]),

        // links
        block([
          #rect(height: 0.2em, fill: rgb("#d9dcd6"))

          #set text(size: 10pt)
          #set par(leading: 1em)
          #set align(left)
          #box(image("media/location.svg"), height: 1em) Santiago de Compostela 

          #box(image("media/mail.svg"), height: 1em) 
          #link("mailto:mail@diegocoutogarcia.com")[mail\@diegocoutogarcia.com]

          #box(image("media/web.svg"), height: 1em) 
          #link("https://diegocoutogarcia.com")[diegocoutogarcia.com]

          #box(image("media/github.svg"), height: 1em)
          #link("https://github.com/dcoutogarcia")[dcoutogarcia]

          #box(image("media/linkedin.svg"), height: 1em)
          #link("https://linkedin.com")[Diego Couto García]
        ]),

        block([
          #set text(size: 10pt)
          #set par(leading: 1em, spacing: 2em)

          #rect(height: 0.2em, fill: rgb("#d9dcd6"))
          I'm a physicist interested in computer 
          sciences, linux, open source and homelabbing.

          Currenty studying the last year of my Physics degree in
          Santiago de Compostela.

          #rect(height: 0.2em, fill: rgb("#d9dcd6"))
        ]),

        block([ 
          #show emph: it => {
            text(weight: 600, it.body)
          }
          #set par(leading: 1em, spacing: 1.2em)


          #emph[Spanish]: native  

          #emph[Galician]: native 

          #emph[English]: fluent (studying a C1) 

          #emph[German]: basic (studying a A2) 
        ])
      )
    ],
  ),
  
  // Main text
  block(
    inset: 2em,
    [
      #show heading: set text(fill: rgb("#2f6690"))
      #show heading.where(level: 1): set text(size: 15pt)
      #show heading.where(level: 2): set text(size: 10pt)
      #set text(font: "Lato", size: 10pt)
      #show link: underline
      
      #show heading.where(level:2): it => pad(left: 5pt * it.level,
      "- " + it.body)




      = About me

      #pad(x: 10pt)[  
      I'm a Physics student passioned for Computer Sciences. 
      I've been using Linux daily for the last 7 years, and I'm used 
      to its inner workings and the use of the terminal.

      I enjoy programming and homelabbing. This webpage it's made 
      and selfhosted my me. I also have multiple services for personal 
      use (ex. Nextcloud).

      I'm also passionate about other fields, like music. I love learning new
      things and perfecting my skills.]

      = Projects

      #pad(x: 10pt)[  
      - #link("https://astranet.clubeastra1.com")[Astranet]: forum 
        for the community of a Philosophy club. Built on 
        #link("https://discourse.org")[Discourse] (using Docker) and 
        hosted on a personal computer using Cloudflare.

      - #link("https://github.com/dcoutogarcia/cv-webpage")[CV-Webpage]: this 
        webpage. Thought as a project to learn web design, HTML, CSS and Typst.

      - #link("https://github.com/fisicaUSC/revista")[Momentum Magazine]: 
        faculty's magazine (Física USC). Editing articles in LaTeX.]

      = Education

        == University
          
          #pad(x: 20pt)[  
          - Degree in Physics in Universidade de Santiago de 
            Compostela (2021-2026). (Currently finishing my 
            Undergraduate Thesis).
          
          - Undergraduate Thesis: Study of the dynamics of cavities 
            similar to the utricle in diagnostic manouvers in 
            otorhinolaryngology. Simulations of the Inner Ear in Star-CCM+.]


        == Languages

          #pad(x: 20pt)[  
          - _Spanish_: native.
          - _Galician_: native.
          - _English_: currently preparing the title C1 in Cambridge.
          - _German_: currently studying a A2 course.]

        == Courses
          #pad(x: 20pt)[  
          - Quantum Computing (Feb-Mar 2025). 5th place in the HaQaton.
          - LaTeX Course (March 2022).
          - A1 German Course (2025) in the Escola de Linguas Modernas, USC.]

      = Experience
        #pad(x: 10pt)[  
        - Internship in Eptisa A Coruña (Jun-Jul 2025).
          Route Optimization for Garbage Trucks using Machine 
          Learning algorithms. Coordination of the Project.]

      = Skills
        #pad(x: 10pt)[  
        - Linux (7 years of experience). Advanced terminal usage. 
          Basic knowledge of system administration.

        - Docker (used in my homeserver and in the Astranet), git and Github 
          (Momentum Magazine).

        - LaTeX and Typst (Momentum Magazine, Web-CV).

        - Office and Excel.

        - Advanced knowledge of Python. Data Analysis, Machine Learning.

        - Experience in Fortran coding simulations.

        - Experience on fluid simulation in Star-CCM+.]
  ])
)
