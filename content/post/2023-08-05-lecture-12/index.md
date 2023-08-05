---
title: Lecture 12
author: Point Estimation and Confidence Intervals
date: '2023-08-05'
slug: lecture-12
categories:
  - R
tags: []
---

## \# WEB SCRAPING USING R

### Accessing data from websites

- Data Scientists need the skill to get the right data for the problem that they want to solve.

- In many practical situations, an already prepared database may not exist, and they may have to pull data from the right sources.

- ## For this purpose, Web Scraping and APIs are used.

  ### Web Scraping

- Although many websites contain some important data, the users cannot download them directly.

- Most of these websites don't provide APIs, and one way to get this data is to manually copy and paste, which is a tedious and time-consuming method.

- Instead, web-scraping can be done, which is an automatic process of data extraction from websites.

- Using web-scraping one can convert the data that present in unstructured format (HTML tags) over the web to the structured format which can easily be accessed and used.

- Web Scraping is done with the help of software called web scrapers.

- They automatically load and extract data from the websites based on user requirements.

- A web page may have text, images, links etc., and the main languages used to build web pages are called Hypertext Markup Language (HTML), Cascasing Style Sheets (CSS) and Javascript.

- A knowledge of HTML and CSS will be an added advantage for web-scraping.

- ## To view the underline codes on a web page in Chrome, simply click Ctrl+Shift+C in Windows which opens up the Elements console.

  ### **API (Application Program Interface)**

- An API is a set of methods and tools that allows to query and retrieve data dynamically.

- Some companies provide free APIs to access the information they stored in their servers.

- For example, Twitter, Facebook, Reddit, Spotify provide free APIs.

- To get information easily from IMDB website, there is a new package called `omdbapi`, which can be downloaded from github as below:  
  `devtools::install_github("hrbrmstr/omdbapi")`

  The functions related to this R package is given below:

  - `find_by_id`: To search IMDB ID

  - `find_by_title`: OMDB movie title search

  - `get_actors`: Get actors from an omdb movie

  - `get_countries`: Get countries from an omdb object

  <!-- -->

  - `get_directors`: Get directors from an omdb object

  - `get_genres`: Get genres from an omdb object

  - ## `get_writers`: Get writers from an omdb object

    ### More Details

- Web Scraping: <https://www.scrapingbee.com/blog/>

- Web Scraping with R: <https://steviep42.github.io/webscraping/book/>

- Web Scraping in R: <https://www.scraperapi.com/blog/web-scraping-with-r/>

- Introduction to Data scraping with R : <https://stat2labs.sites.grinnell.edu/Handouts/rtutorials/IntroDataScraping.html>

- Facebook API: <https://elfsight.com/blog/2020/10/how-to-get-and-use-facebook-api/>

- The twitter API in R : <https://dgarcia-eu.github.io/SocialDataScience/2_SocialDynamics/027_rtweet/rtweet.html>

<!-- -->

- Pulling tweets in to R: <https://towardsdatascience.com/pulling-tweets-into-r-e17d4981cfe2>

- EarthLab Twitter data: <https://www.earthdatascience.org/courses/earth-analytics/get-data-using-apis/use-twitter-api-r/>

- Accessing weather data: <https://github.com/hrbrmstr/weathe>
