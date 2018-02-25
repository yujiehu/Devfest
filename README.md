# Real Time Alerts Map for 2018 Devfest

## Inspiration
We're inspired by the 311 Requests operated by NYC Open Data. It collects data points everyday about the complaints across the whole city. NYC Open Data offers the datasets to the public. We hope to make a product that can quickly alert people about the public safety issues. 

## What it does
The real-time map utilizes natural language processing provided by Google Cloud to extract the location and public safety event from the message people sent to a phone number. Then the public safety events will show up in an interactive map with different colors indicating the severity.

## How we built it
We built the real-time map by integrating Twilio API (SMS) to get the text message, using google cloud natural language processing API to extract location and event, using google map API to convert location into longitude and latitude, and using Shiny App (also Leaflet package in R) to create the interactive map website. 

## Challenges we ran into
The largest challenge is that we are trying to learn how to code during the hackathon since we are not computer science degree students. Also, it is hard to utilize APIs following the guidelines. We came across a huge issues about using ngrok when dealing with Twilio API. 


## Accomplishments that we're proud of
Having this idea and getting these things done in a short period of time without much coding background.


## What we learned
We have learned a lot about using APIs, debugging, and visualization.


## What's next for Real-Time Map
We hope to scale the real-time map by creating a database. Also, it is important for us to improve the UI/UX visualization since it is a big issue for engaging end users. We will make the front-end on our own. Besides, NLP provided by google is not quite accurate, which is also a big limitation.




+ [Shiny App](https://alanchi.shinyapps.io/Devfest21018/)
+ [Vedio Pitch](https://columbiasps.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=918bb995-4274-4c69-8929-a88b00f16174)
+[Google Doc](https://docs.google.com/presentation/d/1v0rXxBpFeuvytjcCCCqhFC007k4OHAcXfcH1tnfX3yw/edit#slide=id.g31f6091a37_0_13)
