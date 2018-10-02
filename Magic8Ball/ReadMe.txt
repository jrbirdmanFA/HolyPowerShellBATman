Magic8Ball Read Me

These files demonstrate how to consume text files and a REST API from PowerShell.  The basic idea is to randomly select one Magic 8 Ball prediction from a set of valid answers.

The PowerShell script, Magic8Ball.ps1, can run without the web service, but will display a warining "Unable to connect to the remote server".

The REST API is provided in the Magic8BallAPI folder as a .Net Core WebAPI project. 

To run the complete demo: 

1. Load the solution in Visual Studio 2017, build and run.  It'll display the core console and your browser window with one Magic8Ball response.  Refresh to test if you'd like.
2. Execute Magic8Ball.ps1.  All of the examples, including the last one that consumes the Rest API you just started, should work.

These materials are provided without warranty or support, but feel free to contact me if you have any questions.

Dave Diehl
.Net Practice Lead, Fusion Alliance
ddiehl@fusionalliance.com
2018-Oct-1

