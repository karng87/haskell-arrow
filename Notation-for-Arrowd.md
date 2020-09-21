# [CATEGORY](https://ncatlab.org/nlab/show/category+theory)

- A category consists of a collection of things and binary relationships (or transitions) between them, such that these
relationships can be combined and include the “identity” relationship “is the same as.” 

# [ABSTRACT](http://www.staff.city.ac.uk/~ross/papers/notation.html)

The categorical notion of monad, used by Moggi to structure denotational descriptions, has proved to be a powerful tool for structuring combinator libraries. Moreover, the monadic programming style provides a convenient syntax for many kinds of computation, so that each library defines a new sublanguage.  Recently, several workers have proposed a generalization of monads, called variously “arrows” or Freyd-categories.
The extra generality promises to increase the power, expressiveness and efficiency of the embedded approach, but
does not mesh as well with the native abstraction and application. Definitions are typically given in a point-free style,
which is useful for proving general properties, but can be
awkward for programming specific instances.
In this paper we define a simple extension to the functional
language Haskell that makes these new notions of computation more convenient to use. Our language is similar to the
monadic style, and has similar reasoning properties. Moreover, it s extensible, in the sense that new combining forms
can be defined as expressions in the host language.
