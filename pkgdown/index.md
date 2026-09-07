# plotrr

<div class="repllm-hero">
<p class="eyebrow">Research software · R package</p>
<p class="hero-title">Explore the groups.<br>See the structure.</p>
<p class="hero-summary">Visual exploratory data analysis for nested and hierarchical data.</p>
<p class="hero-links"><a class="hero-primary" href="#quick-start">Get started ↗</a><a href="reference/index.html">Explore the reference →</a></p>
<p class="hero-meta">Charles Crabtree and Michael J. Nelson</p>
</div>

[![plotrr: Human > AI 👤>🤖](reference/figures/provenance.svg)](https://thelatentreview.com/provenance/)

## Quick start

```r
install.packages("plotrr")
library(plotrr)

# One bivariate plot for each cylinder group.
bivarplots("wt", "mpg", "cyl", mtcars)
```

For the development version, use `remotes::install_github("lobsterbush/plotrr")`.

## Explore within groups

Pooled relationships can hide variation between groups. plotrr produces a
separate plot for each group so you can inspect that structure before modelling.

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

**Human > AI 👤>🤖** — declared by Charles Crabtree: human led, with meaningful
AI contributions to the work and ideas. This declaration covers the package
and its documentation. The documentation build used OpenAI Codex.

The label and mark follow [The Latent Review’s provenance standard](https://thelatentreview.com/provenance/),
shared under [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/).
The software remains MIT licensed.

## Help and development

Report bugs or request features in the [issue tracker](https://github.com/lobsterbush/plotrr/issues).
The [source and README](https://github.com/lobsterbush/plotrr) include installation
requirements and local documentation build instructions.
