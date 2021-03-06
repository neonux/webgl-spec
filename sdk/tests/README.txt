Welcome to the WebGL Conformance Test Suite
===========================================

This is the initial release of the WebGL conformance test suite.

NOTE TO USERS: Unless you are a WebGL implementor, there is no need to submit
a conformance result using this process.  Should you discover bugs in your
browser's WebGL implementation, either via this test suite or otherwise,
please report them to your browser vendor's bug tracking system.

FOR WEBGL IMPLEMENTORS: Please follow the isntructions below to create
a formal conformance submission.'

1) Open webgl-conformance-tests.html in your target browser

2) Press the "run tests" button

3) At the end of the run, press "display text summary"

4) Verify that the User Agent and WebGL renderer strings identify your browser and target correctly.

5) Copy the contents of the text summary (starting with "WebGL Conformance Test Results") and send via email to
   --- NEED ADDRESS HERE --- @khronos.org


Usage Notes:

There are various URL options you can pass in.

run:         Set to 1 to start the tests automatically

             Example: webgl-conformance-tests.html?run=1

version:     Set to the version of the harness you wish to run. Tests
             at this version or below will be run

             Example: webgl-conformance-tests.html?version=1.3.2

minVersion:  Set to the minimum version of each test to include. Only tests
             at this version or above will be inlcuded.

             Example: webgl-conformance-tests.html?minVersion=1.3.2

fast:        Only run tests not marked with --slow

             Example: webgl-conformance-tests.html?fast=true

skip:        Comma separated list of regular expressions of which tests to skip.

             Example: webgl-conformance-tests.html?skip=glsl,.*destruction\.html

include:     Comma separated list of regular expressions of which tests to include.

             Example: webgl-conformance-tests.html?include=glsl,.*destruction\.html

- Version 1.0.0
- February 24, 2011

- Version 1.0.2.1
- March 20, 2012

