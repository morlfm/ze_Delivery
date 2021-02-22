require 'appium_lib'
require 'pry'
require 'rspec'

def caps
    {
        caps: {
            deviceName: "MeuDevice",
            platformName: "Android",
            app: (File.join(File.dirname(__FILE__), "Ze_Delivery_v20.30.1.apk")),
            appPackage: "com.cerveceriamodelo.modelonow",
            appActivity: "com.cerveceriamodelo.modelonow.MainActivity",
            newCommandTimeout: "3600",
            automationName: "UiAutomator2"
        }, appium_lib: {
            wait: 5
        }
    }
end

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object
