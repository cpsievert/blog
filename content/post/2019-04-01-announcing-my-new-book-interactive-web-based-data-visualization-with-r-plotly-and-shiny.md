---
title: 'Announcing my new book: Interactive web-based data visualization with R, plotly, and shiny'
author: Carson Sievert
date: '2019-04-01'
slug: announcing-my-new-book-interactive-web-based-data-visualization-with-r-plotly-and-shiny
categories: []
tags: []
---

[My online book](https://plotly-r.com) (previously known as _plotly for R_, now titled _Interactive web-based data visualization with R, plotly, and shiny_) has received a **major** update with heaps of new examples and content! [A print/pdf version](https://plotly-r.com/plotly_book.pdf) of the book is now under review and should become available in the coming months. In the meantime, please do [send me feedback](mailto:cpsievert1@gmail.com) or any comments as I would appreciate your input during the review process! 

For those already somewhat familiar with the book, here is some highlights of the biggest additions and changes:

1. A new top-level [Introductory chapter](https://plotly-r.com.com/introduction.html) helping to explain what's in and not in the book.

2. Chapters are now organized into 6 parts: Creating views, Publishing views, Combining multiple views, Linking multiple view, Custom behavior with JavaScript, and Various special topics.

3. The 'plotly cookbook' chapter has expanded into several chapters (Part I: Creating Views), complete with a new [Overview Chapter](https://plotly-r.com.com/overview.html), a much more complete [Chapter on scatter traces](https://plotly-r.com.com/scatter-traces.html), and much more on [mapping functionality](https://plotly-r.com.com/maps.html). 

4. Lots of new examples and documentation of **plotly**'s ability to [link views client-side](https://plotly-r.com.com/client-side-linking.html) as well as [server-side with **shiny**](https://plotly-r.com.com/linking-server-side.html)

5. Lots of new examples and documentation about writing custom event handlers in `JavaScript` (see Part V: Custom behavior with `JavaScript`).

6. Updated examples and writing in the Chapters [Arranging views](https://plotly-r.com/arranging-views.html) and [Animating views](https://plotly-r.com/animating-views.html)

7. Part VI includes a handful of new topics addressing functionality that currently isn't well documented elsewhere, including everything you need to know about working with [tooltips](https://plotly-r.com.com/controlling-tooltips.html), [colors](https://plotly-r.com.com/working-with-colors.html), [symbols](https://plotly-r.com.com/working-with-symbols.html), the [modebar](https://plotly-r.com.com/control-modebar.html), and more!

8. A new [RStudio cloud project](https://bit.ly/plotly-book-cloud) for running the code examples in the book.

Some of this content assumes you are running the development version of a few packages, so if you want to run the code examples locally, you can install all the packages (and their correct versions) with:

```r
remotes::install_github("cpsievert/plotly_book")
```