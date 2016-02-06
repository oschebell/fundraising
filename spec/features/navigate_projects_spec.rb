require 'spec_helper'

describe "Navigating projects" do


it "allows navigation from the detail page to the listing page" do
  project = Project.create(name: "Meat Popsice", 
                            description: "Negative, I am a meat popsicle", 
                            target_pledge_amount: 100,
                            pledging_ends_on: 10.days.from_now,
                            website: "www.mp.com")

visit "http://example.com/projects/#{project.id}"

  click_link "All Projects"

  expect(current_path).to eq(projects_path)

end

it "allows navigation from the listing page to the detail page" do 

project = Project.create(name: "Meat Popsice", 
                            description: "Negative, I am a meat popsicle", 
                            target_pledge_amount: 100,
                            pledging_ends_on: 10.days.from_now,
                            website: "www.mp.com")
  


    visit projects_url

    click_link project.name

    expect (current_path).to eq(project_path(project))

end
  
end