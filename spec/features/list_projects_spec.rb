require "spec_helper"

describe "Viewing the list of projects" do
  it "shows three project names"  do
    project1 = Project.create(name: "Electric Skateboard",
               description: "A description of a start-up project",
               target_pledge_amount: 100.00,
               pledging_ends_on: 1.day.from_now,
               website: "http://electricskateboard.com")
    
    project2 = Project.create(name: "Meat Popsicle",
               description: "A description of a start-up project",
               target_pledge_amount: 100.00,
               pledging_ends_on: 1.day.from_now,
               website: "http://project-a.com")
    
    project3 = Project.create(name: "Waterproof Teabag",
               description: "A description of a start-up project",
               target_pledge_amount: 100.00,
               pledging_ends_on: 1.day.from_now,
               website: "http://project-a.com")
    visit projects_url

    expect(page).to have_text("3 Projects")
    expect(page).to have_text("Project 1")
    expect(page).to have_text("Project 2")
    expect(page).to have_text("Project 3")
    expect(page).to have_text("project1.name")
    expect(page).to have_text("project2.name")
    expect(page).to have_text("project3.name")


  end
end