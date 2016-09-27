#Installation

###Language and Version
This application was written and tested using:

* Ruby 2.3.0p0 (2015-12-25 revision 53290) [x86_64-darwin15]
* RSpec 3.4.4

###Application
Download citrus_byte.zip and extract the files. 



#Execution

###Data
ExecuteArrayUtilities contains default data including several arrays and nil, which produces an error condition.  To run with different data, modify the method default_data or add flatten_array calls to the execute method.

File: bin/execute_array_utilities.rb 
Class: ExecuteArrayUtilities
Methods: default_data, execute
  
  
###Usage
From the extracted citrus_byte folder:

ruby bin/execute_array_utilities.rb


