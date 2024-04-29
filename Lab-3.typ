#import "Class.typ": *


#show: ieee.with(
  title: [#text(smallcaps("Lab #3: Web Application with Genie"))],
  
  abstract: [
    #lorem(10).
  ],
  
  authors:
  (
    (
      name: "Abdelbacet Mhamdi",
      department: [Senior-lecturer, Dept. of EE],
      organization: [ISET Bizerte --- Tunisia],
      profile: "a-mhamdi",
    ),

    
    (
      name: "Hamouda Sfaxi",
      department: [Dept. of EE],
      organization: [ISET Bizerte --- Tunisia],
      profile: "Hamoudasfaxi",
    ),
    (
      name: "Salah Med Nabil",
      department: [Dept. of EE],
      organization: [ISET Bizerte --- Tunisia],
      profile: "med-nabil",
    ),
    
  

  )
  // index-terms: (""),
  // bibliography-file: "Biblio.bib",
)

= Exercise
In this lab, We will create a basic web application using *Genie* framework in Julia. The application will allow us to control the behaviour of a sine wave, given some adjustble parameters. We are required to carry out this lab using the REPL as in @fig:repl.

#figure(
	image("Images/REPL.png", width: 100%, fit: "contain"),
	caption: "Julia REPL"
	) <fig:repl>

#exo[Sine Wave Control][We provide the Julia and HTML codes to build and run a web app that allows us to control the amplitude and frequency of a sine wave. *Plotly* is used to plot the corresponding graph. We also added a slider to change the number of samples used to draw the figure. The latter setting permits to grasp the influence of sampling frequency on the look of our chart.]



#let code=read("../Codes/web-app/app.jl")
#raw(code, lang: "julia")


#let code=read("../Codes/web-app/app.jl.html")
#raw(code, lang: "html")

```zsh
julia --project
```

```julia
julia> using GenieFramework
julia> Genie.loadapp() # Load app
julia> up() # Start server
```

We can now open the browser and navigate to the link #highlight[#link("localhost:8000")[localhost:8000]]. We will get the graphical interface as in .

#figure(
	image("Images/Genie-sinewave.png", width: 100%),
	caption: "Genie -> Sine Wave",
) <fig:genie-webapp>

 We add Phase and Offset in app.jl.HTML: 

#figure(
	image("Images/Adding Phase.png", width: 100%),
	caption: "Adding Phase",
) <fig:genie-webapp>

#figure(
	image("Images/Adding Offset.png", width: 100%),
	caption: "Adding Offset",
) <fig:genie-webapp>
 

Now We add phase and Offset in app.jl

#figure(
	image("Images/New sine Wave.png", width: 100%),
	caption: "app.jl",
) <fig:genie-webapp>

We can now open the browser and navigate to the  link #highlight[#link("localhost:8000")[localhost:8000]]

#figure(
	image("Images/Sine Wave.png", width: 100%),
	caption: "Genie -> Sine Wave",
) <fig:genie-webapp>
