# Executive Summary

Project Title: fozziejoin: A High-Performance Package for String Distance Joins in R

This proposal requests support for the continued development and publication of `fozziejoin`, a new R package designed to replace and significantly outperform the widely used [@fuzzyjoin] package for approximate string matching.

`fozziejoin` currently implements 9 of the 10 string distance algorithms supported by [@fuzzyjoin], and demonstrates consistent improvements in both runtime and memory usage across platforms (Windows and Linux).
In benchmark tests, `fozziejoin` delivers superior performance for all implemented algorithms — with speedups exceeding 100× in cases such as Hamming distance.
Benchmarks are based on [@fuzzyjoin]'s own motivating example: matching common misspellings of words in Wikipedia articles against the English language dictionary provided by [@qdapDictionaries].

These gains stem from a Rust-based backend that bypasses the [@stringdist] package.
While [@stringdist] computes all pairwise distances, most are discarded by downstream filtering.
`fozziejoin` avoids this overhead by returning only the distances that satisfy the `max_distance` threshold, dramatically reducing computation and enabling scalable approximate joins.

The goals of this proposal are:

- To implement the `soundex` string distance algorithm, a `semi` join type, and finalize the core functionality of all supported string distance algorithms.

- To ensure fozziejoin closely mirrors [@fuzzyjoin]’s function signatures and output structures for easy migration.

- To complete and polish package documentation, including vignettes.

- To publish the initial version of `fozziejoin` on CRAN.

If successful, `fozziejoin` will support scalable record linkage in large administrative datasets, with applications in public health, social science, and government analytics.
The project is committed to open development and welcomes input from the R community.
