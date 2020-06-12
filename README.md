# QA_Assignment
Testing BBlog website functionality (CR*D Comments on articles (no updating required))

# Table of content 
* [Prerequisitions](#Prerequisitions)
* [Running the test](#Running-the-test)
* [Check reports](#Check-reports)

## Prerequisitions
for this project will be using Robot Framework for automate write comment test case. we need to install the following to prepare the environment for testing

*Install python 3

*Install PIP

*Install Robot Framework
```
pip install robotframework
```
*Install Selenium library
```
pip install --upgrade robotframework-seleniumlibrary
```
*Install browser drivers(chrome driver for this project)
```
you can dounload the driver compatible with your chrom version from here: https://chromedriver.chromium.org/downloads
```

## Running the test

To run the test you have to be on the root folder for the automated test "AutomatedTestCase" then run the following command 
```
robot flows/writeCommentTestcase.robot
```
## Check reports
Robot Framework has it's automated logs and report that's generated once you run the test.

