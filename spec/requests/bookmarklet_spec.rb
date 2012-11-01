require "spec_helper"

describe "the simple bookmarklet" do
  
  it "should add 'Foo vs. Baz' to the page", :js => true do
    visit "/"
    page.should have_content 'Drag this to your bookmark bar.'
    page.should_not have_content 'Foo vs. Baz'

    click_on 'Drag this to your bookmark bar.'

    page.should have_content 'Foo vs. Baz'
  end

end
