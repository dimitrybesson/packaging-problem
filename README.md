Instructions
============

To download dependencies run:
  `bundle`

To run tests run:
  `rake`

Description
============

The program is designed to calculate the price of a repackaging job. It takes 3 input values: base price, number of workers, and type of product. A flat markup is added to the base price given a flat markup rate. Further markup is added based on the number of workers, the type of product, and respective markup rates. The flat markup is calculated first, and all additional markups are added on top of the new price.

Assumptions
===========

1. I assume that all three input values are needed to calculate total price. Missing input values do not default to zero, and will raise an exception when calling get_total_price. This may be less convenient, because now you have to specify zero values, but I think it keeps things cleaner in cases when people forget to input a value by mistake.

2. Negative values are not allowed as input. Negative inputs are set to nil and raise exception when calling get_total_price.

Motivations
===========

This was a great learning experience. I got to:
  * Learn about testing
  * Practice TDD
  * Think about designing a scalable program
  * Attempt to write clean and readable code
  * Think about public vs private methods

For the future, I will benefit from learning about:
  * Good testing approaches
  * Code coverage with testing
  * Private methods and whether/how to test them
  * How to validate input data more efficiently

Any and all feedback is greatly appreciated!
--------------------------------------------
