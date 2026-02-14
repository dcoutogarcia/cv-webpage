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
          Soy un físico interesado en la informática, 
          linux, open source and homelabbing.
          
          Actualmente estoy terminando el Grado en Física de la Universidad
          Santiago de Compostela.

          #rect(height: 0.2em, fill: rgb("#d9dcd6"))
        ]),

        block([ 
          #show emph: it => {
            text(weight: 600, it.body)
          }
          #set par(leading: 1em, spacing: 1.2em)


          #emph[Español]: nativo

          #emph[Gallego]: nativo

          #emph[Inglés]: fluído (estudiando C1) 

          #emph[Alemán]: básico (estudiando A2) 
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

      #pad(x: 10pt)[ 
      Soy un estudiante de física apasionado por la informática.
      Llevo 7 años utilizando Linux de forma diaria y estoy muy familiarizado
      con su funcionamiento y con el uso de la terminal.

      Disfruto de programar y de hacer proyectos de homelabbing. Esta
      página web está programada por mí y hosteada en una Raspberry Pi, al
      igual que múltiples servicios que tengo para uso personal.

      Tengo también interés en otros campos, como puede ser la música. Pero en
      general disfruto mucho de aprender cosas nuevas y adquirir nuevas
      habilidades.]

      = Proyectos

      #pad(x: 10pt)[  
      - #link("https://astranet.clubeastra1.com")[Astranet]: foro
        para la comunidad de un club de filosofía. Construído con 
        #link("https://discourse.org")[Discourse] (using Docker) y
        hosteado en un ordenador personal utilizando Cloudflare.

      - #link("https://github.com/dcoutogarcia/cv-webpage")[CV-Webpage]: esta
        página web. Concebida como proyecto para aprender diseño, HTML, CSS y
        Typst.
 

      - #link("https://github.com/fisicaUSC/revista")[Revista Momentum]:
        revista de la facultad de Física de USC. Edición y mantenimiento del
        código de LaTeX.]

      = Educación

        == Universidad
          
          #pad(x: 20pt)[ 
          - Grado en Física por la Universidade de Santiago de Compostela 
            (2021-2026). (Actualmente terminando mi trabajo de fin de grado). 

          - Trabajo de Fin de Grado: Estudio de la dinámica de cavidades
            similares al utrículo frente a maniobras de diagnóstico en
            otorrinolaringología. Simulaciones del fluído del oído interno en
            Star-CCM+]
 

        == Idiomas

          #pad(x: 20pt)[  
          - _Español_: nativo.
          - _Gallego_: nativo.
          - _Inglés_: actualmente preparando un C1 de Cambridge.
          - _Alemán_: actualmente estudiando un curso A2.]

        == Cursos
          #pad(x: 20pt)[  
          - Computación cuántica (Feb-Mar 2025). 5º puesto en el HaQaton.
          - Curso de LaTeX (Marzo 2022).
          - Curso A1 de Alemán (2025). Escola de Linguas Modernas, USC.]

      = Experiencia
      #pad(x: 10pt)[  
      - Prácticas curriculares en Eptisa A Coruña (Jun-Jul 2025). Creación de
        un programa de automatización de rutas para recogida de basura
        utlizando algortimos de Machine Learning. Coordinación del proyecto.]

      = Habilidades
        #pad(x: 10pt)[  

        - Linux (7 años de experiencia). Uso avanzado de la terminal.
          Conocimiento básico de administración de sistemas. 

        - Docker (utlizado en mi homeserver y la Astranet), git y uso de Github
          (revista Momentum). 

        - LaTeX y Typst (revista Momentum y CV en pdf).

        - Ofimática y uso de Excel.

        - Conocimiento avanzado de Python. Análisis de datos, machine learning.

        - Experiencia en Fortran programando simulaciones.

        - Experiencia en simulación de Fluídos en Star-CCM+.]

  ])
)
