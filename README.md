# rfareto

RFareto is a tool for visualizing [r5r](https://github.com/ipeaGIT/r5r) fare results using [Fareto](https://github.com/conveyal/fareto). It is primarily intended for debugging. It currently requires the `fareto` branch of `r5r`.

## Usage

This package exports two functions: `setup_rfareto()` and `fareto()`. First, run `rfareto_instance = setup_rfareto()` once, then run `fareto(rfareto_instance, fareto_results)` to open the visualizer. To get `fareto_results`, use the `fareto_debug(...)` function in `r5r`. See `fareto.Rmd` for complete usage.

`rfareto` uses the static file loading functionality of Fareto to visualize results. As such, dragging the pins on the map will not do anything.

## Installation

Use the `fareto` branch of `r5r`. This requires Java building, not recommended for inexperienced users. Then:

`devtools::install_github("mattwigway/rfareto")`