require "spec_helper"

describe "the xdm bookmarklet" do
  
  it "should add an iframe to the page", :js => true do
    visit "/"
    page.should have_content 'FooBaz XDM'
    page.should_not have_selector 'iframe'

    click_on 'FooBaz XDM'
    sleep(1)
    page.should have_selector 'iframe'
  end

end
