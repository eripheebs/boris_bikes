# Boris Bikes Challenge
Create a program that will run all the Docking Stations, simulate all the bikes, and emulate all the infrastructure, such as vans or repair staff:

This program does the following functions:
- initialises a docking station which can be passed an argument to set its capacity. If no argument is passd, a default capacity of 20 is set.
- working bikes can be released from the docking station
- bikes can be docked
- the bike can be reported as broken
- it can check if the docking station is full or empty
- it can check if a bike is docked and if a bike is working
- it can move broken bikes to a van and to a garage

$ tree
.
└── spec
	├── bike_spec.rb
    ├── docking_station_spec.rb
    ├── van_spec.rb
    ├── garage_spec.rb
    └── spec_helper.rb

.
└── lib
	├── bike.rb
	├── van.rb
	├── garage.rb
	└── docking_station.rb

Day 1 Partner: Sachin
Day 2 Partner: Rhiannon