package io.loopcamp.stepDefinitions;

import io.cucumber.java.After;
import io.cucumber.java.Scenario;
import io.loopcamp.utility.ConfigurationReader;
import io.loopcamp.utility.DB_Utility;
import io.loopcamp.utility.Driver;

import org.junit.Before;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;

public class Hooks {


    @Before
    public void setUp() {
        Driver.getDriver();
    }
    @After
    public void tearDown(Scenario scenario){
        // only take a screenshot when scenario failed
        if (scenario.isFailed()){
            final byte[] screenshot = ((TakesScreenshot) Driver.getDriver()).getScreenshotAs(OutputType.BYTES);
            scenario.attach(screenshot,"image/png",scenario.getName());
        }
        //Driver.closeDriver();
    }
    @Before
    public void SetUpDb(){
        String url = ConfigurationReader.getProperty("docuport.db.url");
        String username = ConfigurationReader.getProperty("docuport.db.username");
        String password = ConfigurationReader.getProperty("docuport.db.password");

        DB_Utility.createConnection(url, username, password);
    }

    @After
    public void tearDownDb() {
        DB_Utility.destroy();
    }

}
