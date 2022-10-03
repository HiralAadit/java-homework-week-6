Feature: Demo Nopcommerce's top menu acceptance criteria
  As user would like to check acceptance criteria of Nopcommerce top menu
  Background: User is on given URL

    When User type URL http://demo.nopcommerce.com
    And  User click on Enter button
    Then User is on given URL

      Scenario: Verify that user can navigate to books category
      When User is on given URL
      And  User Click on Books tab on Top Menu
      Then User is navigated to Books Category page

      Scenario: Verify that user can navigate to books category page with filters and list of products
        When  User is on given URL
        And   User Click on Books tab on Top Menu
        And   Check Filter and List Tab
        Then  Books category page is displayed with filter and list tabs

        Scenario: Verify that user can see 'Sort by' filter on book category page
          Given User is on Books Category page
          When  User is on Books Category page
          And   User is on Books Category page
          And   Check 'Sort by' filter is present
          Then  'sort by' filter is available on Book Category page

          Scenario: Verify that user can see 'Display; filter on Book Category page
            Given User is on Books Category page
            When  User is on Books Category page
            And   Check 'Display' filter is preset
            Then  'Display' filter is available on Book Category

            Scenario: Verify that user can see 'Grid' tab on Book Category page
              Given User is on Books Category page
              When  User is on Books Category page
              And   Check 'Grid' tab is present
              Then  'Grid' tab is present

              Scenario: Verify that user can see 'List' tab on book Category page
                Given User is on Books Category page
                When  User is on Books Category page
                And   Check 'List' tab is present
                Then  'List' tab is available on Book Category page

                Scenario: Verify that user can see 'Name: A to Z'Selection is present in 'Sort by' filter
                  Given User is on Books Category page
                  When  User is on Books Category page
                  And   Check on 'Sort by' filter
                  And   CHeck that 'Name A to Z' selection is present
                  Then  'Name: A to Z' selection is present in 'Sort by' filter

                  Scenario: Verify that user can see 'Name: A to Z' is first option in 'Sort By' filter
                    Given User is on Book Category page
                    When  User on Books Category page
                    And   User click on 'Sort By' filter
                    And   Check that 'Name A to Z' is first in order
                    Then  'Name : A to Z' is first option in order

                    Scenario: Verify that user can see 'Name A to Z' filter is functioning as expect.(Note:
                              Products are filtered in alphabetical order)
                      Given User is on Book Category page
                      When  User on Books Category page
                      And   User click on 'Sort By' filter
                      And   Check that 'Name A to Z' filter
                      Then  All product are displayed in alphabetical order




















