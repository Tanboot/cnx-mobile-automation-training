# This sample code supports Appium Robot client >=2
# pip install robotframework-appiumlibrary
# Then you can paste this into a file and simply run with Robot
#
# Find keywords at: http://serhatbolsu.github.io/robotframework-appiumlibrary/AppiumLibrary.html
#
# If your tests fails saying 'did not match any elements' consider using 'wait activity' or
# 'wait until page contains element' before a click command

*** Settings ***
Library           AppiumLibrary

*** Test Cases ***
Test Case Name
    Open Application    http://127.0.0.1:4723    platformName=android    appium:automationName=uiautomator2    appium:platfromVersion=13    appium:deviceName=emulator-5554    appium:autoGrantPermissions=true    appium:appPackage=com.wdiodemoapp    appium:appActivity=.MainActivity    appium:app=D:\\automate_test\\day1.apk    appium:ensureWebviewsHavePages=${True}    appium:nativeWebScreenshot=${True}    appium:newCommandTimeout=${3600}    appium:connectHardwareKeyboard=${True}
    appiumlibrary.Wait Until Element Is Visible    android=UiSelector().text("Demo app for the appium-boilerplate")
    appiumlibrary.Capture Page Screenshot
    appiumlibrary.close Application