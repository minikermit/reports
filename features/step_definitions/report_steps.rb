Given /^I have reports titled (.+)$/ do |titles|
  titles.split(', ').each do |title|
    Report.create!(:title => title)
  end
end

Given /^I have no reports$/ do
  Report.delete_all
end

Then /^I should have ([0-9]+) report$/ do |count|
  Report.count.should == count.to_i
end
