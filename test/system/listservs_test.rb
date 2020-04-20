require "application_system_test_case"

class ListservsTest < ApplicationSystemTestCase
  setup do
    @listserv = listservs(:one)
  end

  test "visiting the index" do
    visit listservs_url
    assert_selector "h1", text: "Listservs"
  end

  test "creating a Listserv" do
    visit listservs_url
    click_on "New Listserv"

    fill_in "Email", with: @listserv.email
    click_on "Create Listserv"

    assert_text "Listserv was successfully created"
    click_on "Back"
  end

  test "updating a Listserv" do
    visit listservs_url
    click_on "Edit", match: :first

    fill_in "Email", with: @listserv.email
    click_on "Update Listserv"

    assert_text "Listserv was successfully updated"
    click_on "Back"
  end

  test "destroying a Listserv" do
    visit listservs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Listserv was successfully destroyed"
  end
end
