test_that("output is double",
          {
            X<-matrix(1,4,4)
            res<-Lambda(X,3)
            expect_type(res,"double")
          })


test_that("fail on non matrix input",
          {
            X<-"bachHa'"
            expect_error(Lambda(X,3))
            X<-3.14
            expect_error(Lambda(X,3))
          })


test_that("test for expected results",
          {
            X<-matrix(1:25,5,5)
            expect_equal(Lambda(X,3),8730)
          })
