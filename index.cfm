
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
 
    <title>Theme Template for Bootstrap</title>

   </head>

  <body>

    <!-- Fixed navbar -->
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Gavin Pickin</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="http://www.gpickin.com/" target="_blank">Blog</a></li>
            <li><a href="https://twitter.com/gpickin" target="_blank">Twitter</a></li>
            <li><a href="slides.pdf" target="_blank">Slides</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <div class="container theme-showcase" role="main">

      <!-- Main jumbotron for a primary marketing message or call to action -->
      <div class="jumbotron">
        <h2>The easy way to make your 
            CF App Pretty and Cool
            with VueJS and CF APIs
        </h2>
            <p><b>Presented by Gavin Pickin at Adobe CF Summit 2018</b><br>
                1:30 PM - 2:30 PM, October 3, 2018 (PDT)</p>
      </div>
    
      <div>
        <p>We all have those apps, we wrote them yesterday but they feel like they are a million years old. 
            Maybe they aren’t so pretty, they are using older javascript frameworks ( because you know there
             is a new good one weekly ) and you want to make your app better, but you can’t rewrite it from 
             scratch, and you can’t throw a single page app framework like React at it. This is where VueJS 
             fits in. Its surprisingly easy to get started with, and it suites traditional CF developers mindset, 
             and it’s normal JavaScript HTML and CSS with some time saving and cool automagical VueJS helpers 
             behind the scene. In this talk we'll see how you can take a older CF app and add some VueJS to it 
             with some CF APIs for data interaction, and give your older CF App some life, without all the 
             headaches you usually face.</p>
      </div>

      <div class="page-header">
        <h3>Demos</h3>
      </div>

      <div>
        <ul>
            <li><a href="roulette/index.html" target="_blank">Roulette Demo - Standalone VueJS App</a></li>
            <li><a href="jQueryVSVueJS/jquery.cfm" target="_blank">jQuery vs VueJS - jQuery Version</a></li>
            <li><a href="jQueryVSVueJS/vue-itemsVShow.cfm" target="_blank">jQuery vs VueJS - VueJS 3- Items VShow approach</a></li>
            <li><a href="jQueryVSVueJS/vue-itemsVIF.cfm" target="_blank">jQuery vs VueJS - VueJS 2 - Items VIf approach</a></li>
            <li><a href="jQueryVSVueJS/vue-filteredItemsMethod.cfm" target="_blank">jQuery vs VueJS 0 - VueJS - Filtered Items - Method approach</a></li>
            <li><a href="jQueryVSVueJS/vue-filteredItemsComputed.cfm" target="_blank">jQuery vs VueJS 1 - VueJS - Filtered Items - Computed approach</a></li>
        </ul>

      </div>


      <div class="page-header">
        <h3>Slides</h3>
      </div>
      
      <div>
        <p>Download Slides: <a href="slides.pdf" target="_blank">Slides.pdf</a></p>
      </div>

    </div> <!-- /container -->


    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
  </body>
</html>
