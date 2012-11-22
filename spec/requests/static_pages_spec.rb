require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
  	before { visit root_path }

    it "should have the h1 'Misfortune Cookies'" do
      page.should have_selector('h1', text: 'Misfortune Cookies')
    end

    it "should have the base title" do
      page.should have_selector('title',
                        text: "Misfortune Cookies")
    end
  end
end