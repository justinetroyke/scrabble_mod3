require 'rails_helper'

describe 'enter word and receive example sentences' do
  context 'As a guest user' do
    # As a guest user (no sign in required)
    it 'submit word and see example senteces with word submitted' do
      word = 'mindfulness'
      header = "Examples for using 'mindfulness'"

      visit '/'
      # When I visit "/"
      fill_in :word, with: word
      # And I fill in a text box with "mindfulness"
      click_on 'Submit'
      # And I click "Submit"
save_and_open_page
      expect(page).to have_content(header)
      # Then I should see a message that says "Examples for using 'mindfulness'"
      # expect(page).to have_content()
      # And I should see a list of sentences with examples of how to use the word
      # And I should see only sentences for usage in North America
      # And I should not see sentences for any other regions
    end
  end
end
