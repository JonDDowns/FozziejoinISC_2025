## Executive Summary
<!--
This section provides a condensed view of the entire proposal, one page long.
It should be a comprehensive high-level overview that captures the essence of the proposal, including its goals, methods, expected outcomes, deliverables, and budget.
-->

**Approximate string matching** is essential for record linkage in messy
datasets, but existing tools like `fuzzyjoin` can be **slow and
memory-intensive**.

This proposal supports the continued development of **`fozziejoin`**, a
high-performance R package that delivers **over 100× speedups** for certain
algorithms by replacing the `stringdist` backend with optimized Rust code.
Speedups are most pronounced on Linux systems.

`fozziejoin` already implements **9 of the 10 string distance algorithms**
supported by `fuzzyjoin`, with **consistent improvements across platforms**.

To complete its core functionality and prepare for CRAN submission, this
project will:

- **Add** the `soundex` algorithm and a `semi` join type
- **Align** function signatures and outputs with `fuzzyjoin` for easy migration
- **Finalize** documentation, including vignettes
- **Achieve** CRAN publication

If funded, `fozziejoin` will offer **scalable, open-source tools** for **public
health**, **social science**, and **government analytics**, with broad utility
for **large administrative datasets**.

The source code and development history are available at:  
https://github.com/JonDDowns/fozziejoin/tree/main
