*Will need at least two tabs on MobaXterm. One for the server and 1 or more for each client.

1. Compile the server and client java files by using the command "make" to execute the Makefile.

2. In one tab, run the server by doing the command "java MathServer". Do this first, or you will get an exception from the client side saying 
"java.net.ConnectException: Connection refused (Connection refused)"

3. In the another tab, run the client by doing the command "java MathClient". Do this AFTER the previous step, and repeat for however many clients.

***NOTE***: If getting the exception "address already in use (Bind failed)" use the command "lsof -i:<port>" to see the running processes,
then do "kill <pid>" to kill the server process.


Message format for sending and recieving math calculations: "X <operator> Y" where X and Y are integers. It is parsed by spaces, so arg[0] = X, arg[1] = operand, and arg[2] = Y.
Possible operator commands: +, -, * (only with integers).
