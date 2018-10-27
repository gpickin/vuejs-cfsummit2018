# Presentation Demos for The easy way to make your CF App Pretty and Cool with VueJS and CF APIs

## Presented by Gavin Pickin at Adobe CF Summit 2018 on October 3rd

## Contents of this repo

At several points in the presentation I go to demo some code, and the code in this repo is a standalone version of the code. In the presentation, I jumped into a real legacy site, with a DB and shows different versions of code. To make the demos easier to try on your own, I have modified them somewhat to run on their own. 

For example, instead of DB Queries, I'm inserting serialized queries.

### Slides

The slides will be available in this repo as a PDF. 

### Roulette demo

This is a simple standalone version of a VueJS app. You can just double click on the html file in the folder to view this demo. If you use CommandBox ( used in the next demo ) you can click on the Roulette link to get to the demo from there as well.

### jQuery vs VueJS demo

This code shows 5 different pages, mixing the jQuery or VueJS into an existing 8 year old legacy app. Each version is primarily the same, but we're changing the way we work with the data, jQuery vs VueJS, and how you could do the same thing in VueJS. In my presentation, the benchmark we're testing is how long it takes to hide all 4000 ( approx ) table rows and then reshow them.

These examples are CFM pages, so you'll need to use CommandBox to run a `server start` from the root of this repo, which will spin up a new web server and open the index.cfm page. From there click on the link for each of the pages you wish to try.

Once you open the page, open your web developer tools console, and when you click the check box labeled `CHECKED`, you'll see a start time and end time in the console, giving you the time it took to hide the rows. Uncheck the check box labeled `CHECKED` and all the records will come back. In my slides I show the results I got, but you can see for yourself. 

Note: In my slides, i used the full legacy sites, so my times are inflated, vs standalone times. Showing the more in the Global and in the Dom, the slower things respond.

