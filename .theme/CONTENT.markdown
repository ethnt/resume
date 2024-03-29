Clock
Instead of a normal, analog clock in each room at my high school, we have a television connected to the CCTV system. Normally, they are all tuned to channel 5, which is the "clock". Essentially, it is displaying a web page that consists of a marquee of news items along the top, a list of periods on the left, and the current time and date on the right. We have a computer dedicated to this: it's video output connects to the TV system.

A system similar to this was first created in 1997 by another student. Is solution was a batch script that prompted for you to input each period's name ("Period 1", "Homeroom", etc) and it's start and finish times. Once you completed entering all of the periods, it would generate an HTML file that you would browse to on the clock computer and open. To enter marquee items, you'd have to edit the HTML manually.

There are several issues with this system. For one, once you create the schedule, it was extremely difficult to edit: it would write very time-specific JavaScript to handle highlighting the current period. It is also very un-intuitive, and requires some knowledge of HTML to use. And lastly, to use a different schedule, you'd need to disconnect the computer from the TV system, make your changes, and reconnect it, resulting in precious seconds of downtime.

Since I had had some background with web development, I decided to create a better one. The concept is fairly simple—themes to change the background of the clock, a schedule with periods, marquee items, and notices. There is a web-based back end that can create these items, and one page that is public to the school through the TV system.

So in September of my sophomore year, I had a barely functioning prototype working, written in Ruby (with Sinatra) and a flat-file SQLite database. From there, I continued to iterate, completely rewriting the codebase twice. Now, I'm using a variety of technologies: I'm still using Ruby (instead this time with Padrino), but I'm now using MongoDB for a database, Compass as a CSS framework, and CoffeeScript to write JavaScript.

The most recent addition is the use of responsive web design: it adapts to the screen size. For example, if you're on an iPhone, you'd see a one-column layout (with the time on top of the periods) instead of the normal two. This has allowed me to make the site an iPhone web app: if you visit the clock on your iPhone and add it to the homescreen, it would function like a native iPhone app.

GitHub: https://github.com/eturk/clock
Visit the online version: http://fhsclock.com


Noted (senior project)
For my capstone project, I'm creating a website called Noted which helps students manage and collaborate on research projects. At school, we currently use a product that does something similar, but in a very non-intuitive way.

Since we use MLA citations, you need to be very specific on what type of source you're using. So, to create a source with the existing product, you have to go through several steps to figure out what type of source you're actually trying to cite. Once you've got that sorted out, you need to fill out a large amount of required information about the source.

Instead of this, my plan is to have a single search box: you can search for a book, or journal, or put in a URL, and it'll gather information and cite it for you.

Other features include easier collaboration with students, the ability to "publish" your finished paper online, Dropbox integration for storing files, and more. While I haven't implemented any of this at the moment, I plan to have a private beta working by March 2013.

The goal is to have a functioning product, but moreover to have it be financially self-sufficent. This'll be a challenge, given how much juggernauts like Pearson and Blackboard dominate the educational market, but hopefully I'll get enough of a footing for it to pay for its own servers.