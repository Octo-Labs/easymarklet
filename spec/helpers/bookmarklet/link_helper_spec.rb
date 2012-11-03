require 'spec_helper'

# Specs in this file have access to a helper object that includes
# the Bookmarklet::LinkHelper. For example:
#
# describe Bookmarklet::LinkHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       helper.concat_strings("this","that").should == "this that"
#     end
#   end
# end
describe Bookmarklet::LinkHelper do

  describe "bookmarklet_js" do
    it "should return something" do
      helper.bookmarklet_js.should_not be_nil
    end

    it "should produce some javascript" do
      helper.bookmarklet_js.should match(/^javascript:/)
    end

    it "should match an exact string" do
      helper.bookmarklet_js.should == "javascript:(function(){var script=document.createElement('SCRIPT');script.src='http://localhost:3000/assets/bookmarklet.js';document.body.appendChild(script);})()"
    end

    it "should match an exact string for a custom bookmarket manifest" do
      helper.bookmarklet_js('my_manifest.js').should == "javascript:(function(){var script=document.createElement('SCRIPT');script.src='http://localhost:3000/assets/my_manifest.js';document.body.appendChild(script);})()"
    end

  end

end

