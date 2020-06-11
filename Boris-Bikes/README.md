# Boris-Bikes #

Step 1: Create README.md file

Step 2:
  OBJECT: Customer
          Docking station
          Bike
 MESSAGES: Find surname
           Release bike
           Checking bike working?
RELATIONSHIP: Bike <-- working? --> true/false
              DockingStation <-- release_bike --> a Bike

Step 3: set docking_station = DockingStation
        gave error

Step 4: Type - NameError uninitialized constant DockingStation
        File Path - /Users/dharapatel/.rvm/rubies/ruby-2.7.0/lib/ruby/gems/2.7.0/gems/irb-1.2.1/exe/irb
        Line number - 11
        Solution - discussed that new class wasn't created so solution could be:
                     DockingStation = Class.new
                     docking_station = DockingStation

Step 5: Set up and initialized the RSpec
        Created the docking station spec file

Step 6 : Defined DockingStation class and use require in spec file.

Step 7: Worked on feature test and dissected an error in irb.

Step 8: Wrote an RSpec test using one-liner syntax and added the
        release_bike method in DockingStation class.

Step 9: Created Bike class and new bike_spec file.

Step 10: Required bike.rb in docking docking_station.rb and made the working?
         method in Bike class pass.

Step 11: Added instance variable and attribute reader for bike.

Step 12: Raised an exception for when no bikes are available.
