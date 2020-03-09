library(magrittr)
source('utils.r')

context( "Additional Classes")
test_that( "Additional Classes", {
  x <- rnorm(5)
  class(x) <- c("something", class(x))
  x %<>% sticky()
  x %>% class %>% expect_equal( c('sticky', 'something', 'numeric' ) )
})