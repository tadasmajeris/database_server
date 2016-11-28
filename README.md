# Database server tech test
----
The requested task:

"Before your interview, write a program that runs a server that is accessible on http://localhost:4000/. When your server receives a request on http://localhost:4000/set?somekey=somevalue it should store the passed key and value in memory. When it receives a request on http://localhost:4000/get?key=somekey it should return the value stored at somekey.

My approach to solve it:

- A Sinatra app which is built on Ruby and uses WEBrick as a local server.
- Tests are written using RSpec (for assertions) and Rack/Test (for sending/getting requests)

----
To run the tests:
- Clone this repo by typing in Terminal: git clone https://github.com/tadasmajeris/database_server.git
- change to the directory: cd database_server
- run RSpec by typing in a command: rspec
---
