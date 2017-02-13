# Electro Sounds

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->


- [Semester 2](#semester-2)
- [Sessions](#sessions)
  - [Session 1: The Basics](#session-1)
  - [Session 2: From Sketch to Video](#session-2)
  - [Session 3: Algorithms and Data](#session-3)
  - [Session 4: Generative Music Video proposal](#session-4)
  - [Session 5: Open Session and Independent Work](#session-5)
- [Assignments](#assignments)
- [Keywords](#keywords)
- [Resources](#resources)
  - [Frameworks](#frameworks)
  - [Readings](#readings)
  - [Getting Started](#getting-started)
  - [Talks](#talks)
  - [Inspiration](#inspiration)
  - [Misc](#misc)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->


## Semester 2

Creative Coding has become a well known term within various arts, design and music communities around the world. In addition to the traditional and established means and skills for creative expression within education and the industry, coding as a a skill has seen continuous growth.

Since the early 2000s various coding frameworks and communities have been established and have created a vast amount of learning tools and creative outcomes generated through the use of code and other forms of technology. Being code literate has become a welcoming skill for a range of practices and professions within the creative industries and others.

With an initial focus on generating screen-based outcomes, the range of applications and artistic expressions has heavily diversified into outcomes that involve sound, interactivity, cutting-edge technologies, physical objects, data and much more.

This semester we will look into the skills and strategies necessary to  generating sound and images using code and algorithms. You will make use of and create your own generative systems with a range of coding techniques and good ideas. To get started, a quote by Philip Galanter from his paper _What is Generative Art?_ 	

> Generative art refers to any art practice where the artist uses a
system, such as a set of natural language rules, a computer
program, a machine, or other procedural invention, which is set
into motion with some degree of autonomy contributing to or
resulting in a completed work of art.

_P. Galanter, "What is Generative Art? Complexity theory as a
context for art theory," in International Conference on Generative
Art, Milan, Italy, 2003._

In this class we will focus on the technical aspects of coding but it is highly recommended to dive into the subject with an open mind for cultural, theoretical and contextual discussions to shape your artistic thinking and making. A range of examples and starting points are given to you in class and in this document.

## Sessions
There will be 5 sessions this semester. Each week we will meet for 3 hours, optional and upon appointment you can book individual tutorials (up to 30 minutes) with me.

### Session 1

**Getting Started: Week 1-4**. Getting to know the Processing Environment. throughout this session you will learn a range of programming principles that will help you to create generative visual through the use of code.

  - What is an API?
  - Where to find documentation?
  - How to save and organize your documents?

To successfully complete all required assignments, the following concepts must be understood and practiced. You will find an example for each item inside the sessions folder.

  - Blocks, Functions, Scope
  - Variables and Data Structures
  - Loops
  - Conditionals
  - Objects
  - Various drawing techniques
  	- Shape primitives
  	- Lines and Curves
  	- Custom shapes
  	- Transformations
  	- Pixel manipulation
  - Shaders
	  - what is a shader?
	  - a simple shader example, a filter.
  - Libraries
	  - how to extend Processing with Libraries
		  - controlP5
		  - midimapper
		  - VideoExport



*Assignment A* due in week 4.

### Session 2

**From Sketch to Video: Week 5** In this session you will familiarize yourself with different recording methods to capture the visual output of your Processing sketches.

  - saveFrame, how to use Processing's saveFrame function and the [MovieMaker](https://www.youtube.com/watch?v=ud1WQgQzFWU) Tool
  - Syphon, how to use [Syphon recorder](http://syphon.v002.info/recorder/) to record Processing sketches

### Session 3

**Algorithms and Data: Week 6-7**. This session will explore the beauty of algorithms and data

  - Linear, Random and Noise  
  	- random walk
  	- Perlin and Simplex Noise
  - Data Driven
  - Particles and Complexity
  - Glitch

In this session we will also look at different forms of data input and how this lead to visual output by analyzing, evaluating and translating data. We will briefly look at the MIDI and OSC protocol and will look at the Duration app, a timeline editor for creative coding, which can be used to synchronize tracks with Processing generated visuals. [Duration](https://vimeo.com/59654979)

*Assignment B* due in week 9.

### Session 4

**Generative Music Video proposal: Week 9-10**. For this session you will work on a written proposal for your generative music video. Details and structure will be given to you in class.

*Assignment C* due week 11

### Session 5

**Open Session: Week 11-15**.
  - work on your *Assignment D* project, class attendance is required.
  - individual tutorials upon appointment


**Assignment D** due Monday of week 16


## Assignments
This semester you will learn about generative systems and processes, the following 4 assignments will help you exercise and practice various coding techniques covered in class.

  1. **Assignment A** Create a series of 3 sketches that resemble one work of each of the following artists: Frieder Nake, Sol Lewitt, Ryoji Ikeda.
    - Sketch size is 960x540px
    - Add reference image to the sketch folder

  2. **Assignment B** Use a selection of your current Processing sketches which use code to animate abstract, geometric visuals. Add your own sound track that supports the visuals and create a 15 seconds long generative video.
     - Sketch size is 1280x720px (720p)
     - Video format and quality follows the vimeo compression guidelines [link](https://vimeo.com/help/compression)

  3. **Assignment C** Choose one Processing project from the Processing Exhibition that relates to the concept of Generative Art (see References to get to know more about Generative Art) and describe in 150 words why you like the project. Then describe in your own words (150) how the project works technically. Create a Processing sketch that visually-animated illustrates one aspect of the project you have chosen.
    - Description: use the markdown format and export your document as pdf
    - Structure your text properly and include 2 project images and 1 sketch still
    - Include references into your document

  4. **Assignment D** Create a 120 seconds music video using your own sound track and a range of coding techniques you have learned so far. Combine at least one of each of the following categories: **A** algorithmic, generative, interactive, geometric **B** camera reactive, audio reactive, shaders, **C** midi, live performance, projection mapping, animated-gifs **D** mellow, calm, suspense, frantic
    - Sketch format is 1280x720px (720p)
    - Sketch and process archived on github
    - Video available on vimeo, follow the vimeo compression guidelines
    - Proposal
    - Project title
    - Project description (elaborate on the techniques used, give examples)
    - Process documentation


All assignments accumulate to one final project. All assignments must be documented on your blog.



## Keywords

  - Generative Art
  - Generative Process
  - Data, Parameters
  - Input, Process, Output
  - Systems
  - Code
  - Creative Coding
  - Computational
  - Algorithm
  - Glitch


## Resources

### Frameworks

In this class we will focus on [Processing](http://www.processing.org) as our learning tool. Processing comes in various flavors, the most prominent and the original version is written in Java hence the java like syntax, and you can make use of existing Java libraries and code. [P5js](http://www.p5js.org) is the Javascript sister project that allows you to create Processing sketches that can run inside a browser. This project is relatively young and currently supports 2D visuals and only to a certain extend 3D graphics. The syntax is slightly different from the Java version but similar in vocabulary.

Other frameworks for creative coding include
  - [Open Frameworks](http://www.openframeworks.cc/)
  - [vvvv](https://vvvv.org/)
  - [cinder](https://libcinder.org/)

### Readings
  - [What is Generative Art] [1], Philip Galanter
  - [The Jacob’s Ladder of coding]  [2], Karsten Schmidt
  - [Closed Systems: Generative Art and Software Abstraction] [3], Marius Watz
  - [Ten Questions concerning Generative Computer Art] [4]
  - [Vehicles] [5], Valentino Braitenberg

### Getting Started
- Daniel Shiffman's [Processing Tutorials](https://www.youtube.com/user/shiffman/playlists) on youtube, episodes 0-17
- [The Nature of Code](http://natureofcode.com/) by Daniel Shiffman also available as [video tutorials](https://www.youtube.com/user/shiffman/playlists), Processing Tutorials, The Nature of Code.
- [Processing Reference](https://processing.org/reference/)
- [Processing Tutorials](https://processing.org/tutorials/)
- [Processing Forum](https://forum.processing.org/two/discussions)
- Getting started with p5.js including browser based examples. [First steps with p5.js](http://creative-coding.decontextualize.com/) by [Allison Parrish](http://www.decontextualize.com/)


### Talks
- [eyeo festival](https://vimeo.com/eyeofestival)
- [resonate festival](https://vimeo.com/resonateio)
- Karsten Schmidt, The Tower of Babel. Resonate Festival 2013. [link](http://resonate.io/main/2013/08/19/the-tower-of-babel-karsten-schmidt-at-resonate-2013/)

### Inspiration

|     |     |  |
| ------------- | ------------- | ------------- |
| [Sol Lewitt](https://www.google.com.sg/search?q=sol+lewitt&source=lnms&tbm=isch&sa=X)| [Casey Reas](http://reas.com)|  [Generator X](http://www.generatorx.no/) |
| [Frider Nake](http://dada.compart-bremen.de/item/agent/68)       | [Marius Watz](http://mariuswatz.com/)| [Data is Nature](http://www.dataisnature.com/)   |
| [Manfred Mohr](http://www.emohr.com/)         | [Karsten Schmidt](http://thi.ng/)| [Creative Applications](http://www.creativeapplications.net/)   |
| [Vera Molnar](http://www.veramolnar.com/)     | [Memo Akten](http://www.memo.tv/category/work/by-type/) | [Generative Design](http://www.generative-gestaltung.de/)   |
| [Carsten Nicolai](http://www.carstennicolai.de/)  | [Joanie Lemercier](http://joanielemercier.com/) |  [Triangulation](http://www.triangulation.jp/)  |
| [turux](http://www.turux.org/)   | [lia](http://liaworks.com/) | [Holo Magazine](http://holo-magazine.com/2/)|
| [dextro](http://dextro.org/)  | [Reza Ali](http://www.syedrezaali.com/) |  [onformative](http://www.onformative.com/)  |
|[Paul Prudence](http://www.paulprudence.com/)|[patatap](http://www.patatap.com/) |[visual complexity](http://www.visualcomplexity.com/vc/)|

### Misc

  1. To keep your code organized and in one place, consider to use [Github](https://www.github.com/) (create an account for free) to host your code repositories. Github offers a GUI [desktop app](https://desktop.github.com/) that makes it very easy to create and update repositories. Please read through
    1. [Getting your project on Github](https://guides.github.com/introduction/getting-your-project-on-github/) using the github Desktop application
    2. [Github's Clone to Desktop](http://joe.blog.freemansoft.com/2014/04/github-clone-to-desktop-with-windows.html) shows you how to clone a repository to your local desktop using Github's Desktop application. This is very useful to for example keep track of the class repository which will continuously be updated as we proceed.
  2. Some exercises require you to write short texts, do consider to write these texts in markdown, a very simple formatting syntax for writing text inside simple text editors like TextEdit, Sublime Text, or Atom. On osx add a markdown quickview (for example [qlmarkdown](https://github.com/toland/qlmarkdown/releases) but there are more out there) to see your document rendered in markdown when quick-viewing it.
  3. Some insightful tips about being a beginner, intermediate or advanced programmer: [A guide on how to be a programmer](https://github.com/braydie/HowToBeAProgrammer)
  4. To convert a video to another format, consider using the open source video transcoder [handbrake](https://handbrake.fr/)
  5. To familiarize yourself with the markdown format, visit the [howtomarkdown](http://howtomarkdown.com/) page. To write and edit markdown documents use the markdown editor [MacDown](http://macdown.uranusjr.com/). Otherwise use TextEdit (make sure your document is in _Plain Text_ mode, Format → Make Plain Text) or use a text editor like [Atom](https://atom.io/) or [Sublime Text](http://www.sublimetext.com/). Also see point 2 above to view markdown documents using quickview (quickview: on osx select a document and press the space bar).



[1]: http://www.philipgalanter.com/downloads/ga2003_paper.pdf "What is Generative Art?"
[2]: https://medium.com/@thi.ng/the-jacob-s-ladder-of-coding-4b12477a26c1#.7of8hi3bv "The Jacob’s Ladder of coding"
[3]: http://mariuswatz.com/wp-content/uploads/2012/03/201005-Marius-Watz-Closed-Systems.pdf "Closed Systems: Generative Art and Software Abstraction"
[4]: http://www.csse.monash.edu/~jonmc/research/Papers/TenQuestionsLJ-Preprint.pdf "Ten Questions concerning Generative Computer Art"
[5]: https://mitpress.mit.edu/books/vehicles "Vehicles: Experiments in Synthetic Psychology"
