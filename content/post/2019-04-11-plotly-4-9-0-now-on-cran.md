---
title: plotly 4.9.0 now on CRAN
author: Carson Sievert
date: '2019-04-11'
slug: plotly-4-9-0-now-on-cran
categories:
  - plotly
  - R
  - interactive graphics
tags: []
---

I'm excited to announce **plotly** 4.9.0 is now on CRAN! Go ahead and upgrade via:

```r
install.packages("plotly")
```

This release is about 8 months in the making and includes many [bug fixes](https://github.com/ropensci/plotly/blob/master/NEWS.md#bug-fixes), some [new features](https://github.com/ropensci/plotly/blob/master/NEWS.md#new-features--improvements), and a couple slightly [breaking changes](https://github.com/ropensci/plotly/blob/master/NEWS.md#changes). Over this time, I've mainly focused on getting a new draft of my new book, <https://plotly-r.com>, and some of these additions to **plotly** are in support of that new content. This post highlights the most important release features, but I highly recommend going over [the full release report](https://github.com/ropensci/plotly/blob/master/NEWS.md) as well.

## New shiny events

This release exposes a handful of new plotly events in shiny. [See here](https://github.com/ropensci/plotly/blob/master/NEWS.md#new-features--improvements) for the full list of new events, [this section of my book](https://plotly-r.com/linking-views-with-shiny.html#shiny-plotly-inputs) to learn about how to leverage plotly events in shiny, and my [RStudio webinar](https://resources.rstudio.com/webinars/accessing-and-responding-to-plotly-events-in-shiny-carson-sievert) for a tutorial on how to create scalable crossfiltering applications with these new events (like in the video below).

<iframe src="https://player.vimeo.com/video/318129502?title=0&byline=0&portrait=0" width="640" height="258" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe>

Also, see the [advanced applications section of the plotly book](https://plotly-r.com/linking-views-with-shiny.html#drill-down) for some new drill down examples.

## New version of plotly.js

This new version of the R package upgrades the underlying plotly.js library from v1.42.3 to v1.46.1. This includes many bug fixes and new features, some of which I don't mention here or in the R package's NEWS, but you can see [plotly.js' release page](https://github.com/plotly/plotly.js/releases) for more info. That being said, here's a breakdown of the most important items:

### New trace types

This release includes 3 new trace types: isosurface, sunburst, and waterfall. To get idea of what possible, you can search the plotly.js tests via <https://rreusser.github.io/plotly-mock-viewer> (the corresponding JSON source behind these example can be found [here](https://github.com/plotly/plotly.js/tree/master/test/image/mocks)). 

* Isosurface

<iframe src="https://player.vimeo.com/video/329848156?title=0&byline=0&portrait=0" width="640" height="480" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe>

* Sunburst

<iframe src="https://player.vimeo.com/video/329850403?title=0&byline=0&portrait=0" width="640" height="480" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe>

* Waterfall

```r
plot_ly() %>%
  add_trace(
    type = "waterfall",
    x = c(0, 1, 2, 3, 4, 5),
    y = c(1, 0.5, 0.7, -1.2, 0.3, 0.4)
  )
```

<img src="/img/waterfall.png" width="100%"/>

I suspect soon <https://plot.ly/r> will have more R examples of these traces, but for now you can see some examples here

<https://github.com/ropensci/plotly/blob/master/tests/testthat/test-plotly-isosurface.R>
<https://github.com/ropensci/plotly/blob/master/tests/testthat/test-plotly-sunburst.R>
<https://github.com/ropensci/plotly/blob/master/tests/testthat/test-plotly-waterfall.R>


## New hovertemplate attribute

One of the more difficult things about **plotly** and plotly.js is about the various ways to control tooltips. [This new special topic in my book](https://plotly-r.com/controlling-tooltips.html#tooltip-text) attempts to cover all these approaches, as well as the new [`hovertemplate`](https://plot.ly/r/reference/#scatter-hovertemplate) approach. This new attribute allows you to reference supplied (e.g., `x` in the Figure below) or computed variables in the tooltip (e.g., `y` in the Figure below). It also allows you to control the formatting (using d3-format's syntax `%{variable:d3-format}`) and the `<extra>` bit of the tooltip that usually displays the trace `name`.

```r
plot_ly(x = rnorm(100, 0, 1e5)) %>%
    add_histogram(
        histnorm = "density",
        hovertemplate = "The density between <br> (%{x}) is %{y:.1e} <extra>That's very <br> small!</extra>"
    )
```

<img src="/img/hovertemplate.png" width="100%"/>

## New title placement API

Previously plot title's were created by providing a string to [`layout.title`](https://plot.ly/r/reference/#layout-title). This will continue to work, but `layout.title` now accepts a list object, which adds the ability to move the title's location.

```r
library(plotly)
plot_ly(x = 1, y = 1) %>%
  layout(title = 
    list(
      text = "My title", 
      x = 1, 
      font = list(
        family = "Roboto", 
        color = "#1E86FF", 
        size = 18
      )
    )
  )
```

<img src="/img/title.svg" width="100%"/>

Since plotly.js now supports this feature, `ggplotly()` will now automatically pick up on the title alignment

```r
library(plotly)
p <- qplot(1:10) + 
  ggtitle("My amazing plot!") +
  theme(
    plot.title = element_text(
      family = "Roboto", 
      color = "red", 
      size = 16
    )
  )
ggplotly(p)
```

<img src="/img/ggtitle.svg" width="100%"/>


