Feature: Book category

  Background: I should be able to see homepage
    Given I enter URL "http://demo.nopcommerce.com/"
    And   I am on home page


    Scenario Outline: I should be able to see top menu tabs on homepage with categories
      When I am on homepage
      Then I should be able to see top menu tabs with "<categories>"
      Examples:
      |Categories                  |
      |Computer                    |
      |Electronic                 |
      |Apparel                     |
      |Digital downloads           |
      |Books                       |
      |Jewellery                   |
      |Gift card                   |

      Scenario Outline: I should be able to see book page with filters
        When I select book category from top menu tabs on homepage
        Then I should be navigated to book category
        And  I should be able to see "<filter>"
        Examples:
        | filters     |
        | Shirt by    |
        | Display     |
        | the Grid    |
        | List Tab    |


        Scenario Outline: I should be able to see list of each filter
          Given I am on book page
          When  I click on "<filter>"
          Then  I should be able to see "<list> in dropdown menu

          Examples:
          | Filter                 | List                                               |
          | sort by                | Name: A to Z, name: Z to A, Price : Low,Created on |
          | Display                | 3 , 6 , 9                                          |


           Scenario Outline: I should be able to choose any filter option with specific result
             Given I am on book page
             When  I click on "<filter>"
             And   I click on any "<option>"
             Then  I should be able to choose any filter option from the list
             And   I should be able to see "<result>"
             Examples:
             |filter        | option               |result                                            |
             |Sort by       | Name : A to Z        |sort product with the product name in alphabetical  order A to Z |
             |Sort by       | Name : Z to A        |sort product with the product name in alphabetical  order Z to A |
             |Sort by       | Price:low to high    |sort product with the price in descending order                  |
             |Sort by       | Price:high to low    |sort product with the price in ascending order                   |
             |Sort by       | Created on           |Recently added product should be show first                      |
             |Display by    | 3                    | 3 product in a page                                             |
             |Display by    | 6                    | 6 product in a page                                             |
             |Display by    | 9                    | 9 product in a page                                             |


             Scenario Outline: I should be able to see produt display format according display format type as per given
                               in picture srs document
               Given I am on book page
               When  I click "<display format icon>
               Then  I should be able to see product display formate accourding display format as per given picture in SRS document

               Examples:
               | Display format icon |
               | Grid                |
               | List                |
























