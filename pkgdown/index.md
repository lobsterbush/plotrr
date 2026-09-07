# plotrr

<div class="repllm-hero">
<p class="eyebrow">Research software · R package</p>
<p class="hero-title">Look within groups.</p>
<p class="hero-summary">We built plotrr to help inspect relationships within groups before fitting a model to the pooled data.</p>
<p class="hero-links"><a class="hero-primary" href="#quick-start">Get started ↗</a><a href="reference/index.html">See the functions →</a></p>
<p class="hero-meta">Charles Crabtree and Michael J. Nelson</p>
</div>

[![plotrr: Human – AI (editor) 👤✏️🤖](reference/figures/provenance.svg)](https://thelatentreview.com/provenance/)

**Initial versions: entirely human-created.** AI was used only for later updates and code fixes.

## Quick start

```r
install.packages("plotrr")
library(plotrr)

# One bivariate plot for each cylinder group.
bivarplots("wt", "mpg", "cyl", mtcars)
```

For the development version, use `remotes::install_github("lobsterbush/plotrr")`.

## Explore within groups

A relationship in the whole sample can look different within a country or
school. We use these plots to see which groups follow the pattern and which
ones need a closer look.

| Task | Function |
| --- | --- |
| Compare two measures within each group | [`bivarplots()`](reference/bivarplots.html) |
| Inspect distributions as histograms | [`histplots()`](reference/histplots.html) |
| Compare distributions as violins | [`violinplots()`](reference/violinplots.html) |
| Make group-specific dot plots | [`dotplots()`](reference/dotplots.html) |
| Plot a relationship with marginal rugs | [`bivarrugplot()`](reference/bivarrugplot.html) |

Pass column names as strings and supply a data frame. Functions that produce
several plots print each plot in turn; consult the reference for each signature.


## Provenance

**Human – AI (editor) 👤✏️🤖**

We wrote every initial version ourselves, without AI. We've used AI only for
later updates and code fixes. I'm Charles Crabtree, and this is my account of
how the package was made.

The label and mark follow [The Latent Review’s provenance standard](https://thelatentreview.com/provenance/),
shared under [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/).
The software remains MIT licensed.

## Help and development

If something isn't working, please tell us in the [issue tracker](https://github.com/lobsterbush/plotrr/issues).
The [source and README](https://github.com/lobsterbush/plotrr) include installation
requirements and local documentation build instructions.
