// We remove the margins to allow the rectangle to occupy the border.
#set page(margin: 0pt)

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
          #link("https://linkedin.com")[Diego Couto García]
        ]),

        // Description
        block([
          #set text(size: 10pt)
          #set par(leading: 1em, spacing: 2em)

          #rect(height: 0.2em, fill: rgb("#d9dcd6"))
          Soy un físico interesado en la informática, 
          linux, open source and homelabbing.
          
          Actualmente estoy terminando el Grado en Física de la Universidad
          Santiago de Compostela.

          #rect(height: 0.2em, fill: rgb("#d9dcd6")) // Rectangular separator
        ]),

        block([ 
          // Function to change the functionality of emph, to change font
          // weight and italize
          #show emph: it => {
            text(weight: 600, it.body)
          }
          #set par(leading: 1em, spacing: 1.2em)

          #emph[Español]: nativo \ 
          #emph[Gallego]: nativo \ 
          #emph[Inglés]: fluído (estudiando C1) \ 
          #emph[Alemán]: básico (estudiando A2) \ 
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

      = Sobre mí

      Soy un estudiante de física apasionado por la informática.
      Llevo 7 años utilizando Linux de forma diaria y estoy muy familiarizado
      con su funcionamiento y con el uso de la terminal.

      Disfruto de programar y de hacer proyectos de homelabbing. Esta
      página web está programada por mí y hosteada en una Raspberry Pi, al
      igual que múltiples servicios que tengo para uso personal.

      Tengo también interés en otros campos, como puede ser la música. Pero en
      general disfruto mucho de aprender cosas nuevas y adquirir nuevas
      habilidades.

      = Educación

      *Grado en Física en la Universidade de Santiago de Compostela* (Septiembre
      2021 - Actualidad)
      
      - Escribiendo el TFG en la simulación del fluido del oído interno para el
        tratamiento de vertigo 

      - Realizadas simulaciones de la dinámica de gases
        nobles en Fortran

      = Experiencia

      *Prácticas en Eptisa A Coruña* (Junio 2025 - Jul 2025)

      - Automaticé el enrutamimento de vehículos de gestión de residuos
        utilizando algortimos de Machine Learning
      
      - Recogí datos en campo utilizando QField y los procesé utilizando QGIS

      = Proyectos

      #link("https://astranet.clubeastra1.com")[*Astranet*] (Noviembre 2025 -
      Actualidad)

      - Foro creado para la comunidad de un club de filosofía
      - Construído con Discourse (utilizando Docker)
      - Hosteado en un ordenador personal utilizando Cloudflare

      #link("https://github.com/dcoutogarcia/cv-webpage")[*CV-Webpage*] (Enero
      2026 - Actualidad)

      - Construído para aprender las bases de HTML, CSS y el diseño web.
      - Hosteado en una Raspberry Pi utilizando Cloudflare

      #link("https://github.com/fisicaUSC/revista")[*Revista Momentum*]
      (Septiembre 2025 - Actualidad)

      - Revista de la Facultad de Física de la USC. Creada y mantenida por
        estudiantes
      - Edición de artículos y mantenimiento del código en LaTeX

      = Habilidades
 
      *Lenguajes de programación*: Python (Pandas, Numpy, SciKitLearn...),
      Fortran, Bash

      *Software*: Star-CCM+, Docker, Git, LaTeX, QGIS

      = Cursos

      *Introducción a la Computación Cuántica* (Febrero 2025 - Marzo 2025)
     - 5º puesto en el HaQathon por la implementación de algoritmos de Quantum
       Machine Learning utilizando Qiskit

     *Curso A1 de Alemán* (2025)
     - Cursado en la Escola de Linguas Modernas, USC

  ])
)
