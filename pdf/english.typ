// We remove the margins to allow the rectangle to occupy the border.
#set page(margin: 0pt)
#show heading: set par(leading: 0.65em)

// We make a main grid, one column for the blue section and one for the text
#grid(
  // Two columns (the blue occupies 35%) and one row
  columns: (35%, auto),
  rows: (100%),
  
  // Sidebar
  block(
    fill: rgb("#16425b"),
    height: 100%,
    inset: 2em, // Interior margin of the content block 
    stroke: black, // Border of the content block
    [
      #set text(fill: rgb("#d9dcd6"), font: "Playfair Display")

      // Inside this sidebar we make another grid to separate the contents
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

        // Links
        block([
          #rect(height: 0.2em, fill: rgb("#d9dcd6")) // Rectangular separator

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
          #link("https://linkedin.com/in/diego-couto-garcía-6a99503b7")[Diego Couto García]
        ]),

        block([
          #set text(size: 10pt)

          #rect(height: 0.2em, fill: rgb("#d9dcd6"))
          I'm a physicist interested in computer 
          sciences, linux, open source and homelabbing.

          Currenty studying the last year of my Bachelor's Degree in Physics
          in Santiago de Compostela.

          #rect(height: 0.2em, fill: rgb("#d9dcd6")) // Rectangular separator
        ]),

        block([
          // Function to change the functionality of emph, to change font
          // weight and italize
          #show emph: it => {
            text(weight: 600, it.body)
          }

          #emph[Spanish]: native \
          #emph[Galician]: native \
          #emph[English]: fluent (studying a C1) \
          #emph[German]: basic (studying a A2) \
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

      = About me

        I'm a Physics student passioned for Computer Sciences. I've been
        tweaking and learning Linux for the past 7 years and I'm skilled on the
        terminal.
        
        I enjoy coding and homelabbing. This webpage it's made and selfhosted
        my me. I also have multiple services for personal use (ex.
        #link("https://github.com/Nextcloud")[Nextcloud]), and a forum
        (#link("https://astranet.clubeastra1.com")[Astranet]).
        
        I'm also passionate about other fields, like music. I love learning new
        things and perfecting skills.
      
       = Education

       *Bachelor's Degree in Physics in Universidade de Santiago de
       Compostela* (September 2021 -- Present)

       - Doing Bachelor's Thesis on simulation of the fluids on the \
         inner ear for vertigo treatment

       - Simulated the dynamics of noble gases in Fortran

      = Experience

      Internship in Eptisa A Coruña (June 2025 -- July 2025)
      
      - Automated vehicle routing for garbage processing using machine learning

      - Collected data in field using QField and processed it using QGIS

      = Projects

      #link("https://astranet.clubeastra1.com")[*Astranet*]
      (November 2025 -- Present)
      - Forum for the community of a Philosophy club
      - Built on #link("https://discourse.org")[Discourse] (using Docker)
      - Hosted on a personal computer using Cloudflare

      #link("https://github.com/dcoutogarcia/cv-webpage")[*CV-Webpage*]
      (January 2026 -- Present)
      - Built for learning the basics of HTML, CSS and web design
      - Selfhosted on a Raspberry Pi using Cloudflare 

      #link("https://github.com/fisicaUSC/revista")[*Momentum Magazine*]
      (September 2025 -- Present):
      - Faculty's magazine, made by the students
      - Working on editing articles and formatting in Latex

      #link("https://github.com/dcoutogarcia/mca-tools")[*MCA-tools*]
      (March 2026 -- Present):
      - Data analysis tools to simplify gamma spectroscopy \
        with multichannel analyzer
      - Written in Python and hosted in GitHub

      = Skills

      *Programming Languages*: Python, Fortran, Bash Scripting

      *Software*: Star-CCM+, Docker, Git, LaTeX, QGIS

      = Languages
      *Spanish*: native \ 
      *Galician*: native \ 
      *English*: currently preparing the title C1 in Cambridge \ 
      *German*: currently studying a A2 course \ 

      = Courses

      *Introduction to Quantum Computing* (February 2025 -- March 2025)
      - 5th place in the HaQaton by implementing Quantum Machine \
        Learning algorithms using Qiskit

      *A1 German Course (2025)*
      - Coursed in the Escola de Linguas Modernas, USC

  ])
)
