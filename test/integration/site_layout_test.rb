require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

  test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", help_path,count: 1
    assert_select "a[href=?]", login_path
#    assert_select "a[href=?]", signup_path
#    assert_select "a[href=?]", contact_path
    get signup_path
    assert_select "title",full_title("Signup")
#   get help_path
#   get about_path 
    
    
  end
end