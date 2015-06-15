require "rails_helper"

RSpec.feature "Guest visits the news page" do
  scenario "and sees a headline" do
    visit root_path

    news_button.click

    expect(page).to have_content "This is a headline!"
  end

  def news_button
    first("#non-unique-id")
  end
end
