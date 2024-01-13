package io.loopcamp.stepDefinitions;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.loopcamp.utility.BrowserUtil;
import io.loopcamp.utility.DB_Utility;
import io.loopcamp.utility.Driver;
import org.junit.Assert;
import org.w3c.dom.stylesheets.LinkStyle;

import java.util.List;

public class UserInfoStepDefinitions {



    @Given("Establish the database connection")
    public void establish_the_database_connection() {
        System.out.println("CONNECTIONS IS HANDEL IN HOOKS");

    }
    List<String>actual;
    @When("Execute query to get all columns for {string}")
    public void execute_query_to_get_all_columns_for(String string) {
        DB_Utility.runQuery("SELECT * FROM identity." +string);
        actual = DB_Utility.getColumnDataAsList("name");
        System.out.println("Actual List: "+actual);
    }
    @Then("verify the below columns are listed in result for")
    public void verify_the_below_columns_are_listed_in_result_for(List<String> expectedList) {
        Assert.assertEquals(expectedList,actual);
        System.out.println("Expected list: "+expectedList);

    }
}
