Then (/^User login and navigate to "([^"]*)"$/) do |element|
begin
    steps %Q{
        Given User go to url "mekari_jurnal_url"
        When User login to mekari journal with "test_account"
        And User check and click "notification_modal_close_button" if exist
        And User click "#{element}"
    }
    end
end
