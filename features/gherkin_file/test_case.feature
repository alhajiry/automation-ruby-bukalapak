Feature: Test Bukalapak

    Scenario: When user without account Search Product and Add to Cart
        Given User go to url "bukalapak_url"
        When User search product "google_pixel_5"
        And User filter product with min value "idr_fifteen_million"
        And User click "product_first_index"
        And User click "add_to_card_button"
        Then "login_container" will be displayed
































