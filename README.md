# Boris Bikes Challenge
Create a program that will run all the Docking Stations, simulate all the bikes, and emulate all the infrastructure, such as vans or repair staff:

This program does the following functions:
- initialises a docking station which can be passed an argument to set its capacity. If no argument is passd, a default capacity of 20 is set.
- working bikes can be released from the docking station
- bikes can be docked, with the option of a report saying that the bike is broken
- it can check if the station is full or empty
- it can check if a bike is docked and if a bike is working

$ tree
.
└── spec
	├── bike_spec.rb
    ├── docking_station_spec.rb
    └── spec_helper.rb

.
└── lib
	├── bike.rb
	└── docking_station.rb

Authors 
Sachin & Erika