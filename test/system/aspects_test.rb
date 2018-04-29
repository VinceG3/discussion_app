require "application_system_test_case"

class AspectsTest < ApplicationSystemTestCase
  setup do
    @aspect = aspects(:one)
  end

  test "visiting the index" do
    visit aspects_url
    assert_selector "h1", text: "Aspects"
  end

  test "creating a Aspect" do
    visit aspects_url
    click_on "New Aspect"

    fill_in "Name", with: @aspect.name
    fill_in "Topic", with: @aspect.topic_id
    click_on "Create Aspect"

    assert_text "Aspect was successfully created"
    click_on "Back"
  end

  test "updating a Aspect" do
    visit aspects_url
    click_on "Edit", match: :first

    fill_in "Name", with: @aspect.name
    fill_in "Topic", with: @aspect.topic_id
    click_on "Update Aspect"

    assert_text "Aspect was successfully updated"
    click_on "Back"
  end

  test "destroying a Aspect" do
    visit aspects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Aspect was successfully destroyed"
  end
end
