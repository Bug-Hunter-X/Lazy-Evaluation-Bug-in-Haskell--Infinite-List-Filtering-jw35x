# Lazy Evaluation Bug in Haskell

This repository demonstrates a common yet subtle bug in Haskell stemming from its lazy evaluation strategy. The bug arises when attempting to filter an infinite list, causing non-termination.

## The Problem

The `filterEven` function aims to extract even numbers from a list.  However, if provided an infinite list, the function never completes because it tries to evaluate the entire infinite input, rather than stopping after it finds the even numbers, as in strict evaluation languages.

## Solution

The solution involves using more controlled list processing techniques or forcing evaluation to a specific size. The corrected function uses the `takeWhile` function to process the list until a certain criteria is met.