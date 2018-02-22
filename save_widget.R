# save widgets in a more responsible fashion 
# (non-standalone and share dependencies across widgets)

save_widget <- function(w, ...) {
  withr::with_dir(
    "static",
    htmltools::save_html(
      w, ...,
      libdir = "html-dependencies"
    )
  )
}