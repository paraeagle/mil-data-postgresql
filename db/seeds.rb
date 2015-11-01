# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def insert_inventory_items_with_sample_size sample_size
	part_names = ["Oil Pressure Pump", "Fuel pump", "Fan Belt", "Coolant Pump", "Compressor", "Self Starter", "Crankshaft", "Transmission", "Clutch Plate", "Disc brakes", "Drum Brakes"]

	failure_modes = ["Low net positive structure head", "Low fuel pressure", "Low engine coolant", "AC not effective", "Engine unable to self start", "Engine torque absent", "Vehicle unable to move / GEneral transmission failure", "gear shifter not working correctly", "brake overheating"]

    severity_values =(1..10).to_a 

	current_controls = ["Check level lubricant", "Check fuel pressure", "Check fan belt tension", "Check coolant pressure", "Check compressor output", "Self starter check + tuneup", "alignment and possibley replacement", "Transmission fluid replacement", "clutch plate replacement","disc brake heading test","Monthly inspection, report to nearest workshop","bi-monthly manual transmission check", "replace cluth shoe after every 500 km or desert", "wheel balancing", "manual brake check"]
   
	recommended_actions = ["Cleaning of filter after 50km of desert use", "Cleaning of oil filter after every 50km and replacement every 10,000km","Weekly coolant check","Compressor check every 5,000 kilometers", "self starter check every 20kms", "Monthly inspection. Report to nearest workshop if issues", "disc brake heating test", "drum brake manual inspection"]

	spares = ["Oil filter", "Air filter", "Spark plug", "leaf spring", "clutch plate", "brake pad"]
	spare_quantity =(1..10).to_a

    start_time = Time.now

	for i in 0..sample_size
	spare = Spare.new(:stock => spare_quantity.sample, :name => spares.sample)
	spare.save!
	item = InventoryItem.new(:part_name => part_names.sample, 
								:failure_mode => failure_modes.sample,
								:severity => severity_values.sample,
								:current_control_defective => current_controls.sample,
								:current_control_preventive => current_controls.sample,
                                :recommended_action => recommended_actions.sample,
								:spare_id => spare.id).save!
	end
  end_time = Time.now
  puts "total time taken: " + (end_time - start_time).to_s
end

insert_inventory_items_with_sample_size 1000

