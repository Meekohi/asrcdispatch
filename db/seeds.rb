# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

Group.create([
  {:fullname => "Blue Ridge Mountain Rescue Group", :shortname => "BRMRG", :location => "Charlottesville, VA"},
  {:fullname => "Appalachian Search and Rescue Conference", :shortname => "ASRC", :location => "Charlottesville, VA"},
  {:fullname => "Shenandoah Mountain Rescue Group", :shortname => "SMRG", :location => "Vienna, VA"},  
  {:fullname => "Delmarva Search and Rescue", :shortname => "DMVSAR", :location => "Salisbury, MD"},
  {:fullname => "Allegheny Mountain Rescue Group", :shortname => "AMRG", :location => "Pittsburg, PA"},
  {:fullname => "Maryland Search and Rescue", :shortname => "MSAR", :location => "Columbia, MD"},
  {:fullname => "Mountaineer Area Rescue Group", :shortname => "MARG", :location => "Kingwood, WV"}
  ])