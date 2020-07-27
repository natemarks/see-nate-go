# see-nate-go

This is a step-by-step adventure in go.  The purpose is to really etch this stuff in my mind and maybe share something useful.  I'm going to try to do one little new thing in each commit so the commit log should be a good reflection of my of the steps  

I'll start with  my environment setup for Ubuntu using vscode.  You'll need git installed and you can use this shell script to set up your go workspace based on the best practices as I understood them:

https://gist.github.com/natemarks/df4468516e083c48cb287ab7da2cc2d4

If you have problems with the setup, file an issue and I'll try to help, but I'm trying to avoid getting bogged down in platform-specific stuff.

prerequisites:
 - install git and wget
 - run the setup script
 - install vscode and the golang extension



1) Init with a README and a gitignore
2) Get goimports running to validate something
   1) run go mod init to generate a go mod
   2) Create a Makefile that runs goimports
   3) Create a main.go to give goimports something to validate
   4) Add a Makefile target to build the binary in bin/
   5) Add a Makefile target to build and run
3) Install Delve and verify debugging
4) Add launch and process input
   1) Add launch configuration (https://gist.github.com/natemarks/820da6df16e980dbaecddc8d358c6f8f) that runs main in debug mode
   2) use cmd to accept the "version" subcommand and call that from the launch configuration
   3) Remove the starter print from main. 

IDEAS: 
delve debugging next to see static variables
then  use vscode run configurations to pass in data through arguments
then use data drive tests for object testing
then use data driven tests for log output checks