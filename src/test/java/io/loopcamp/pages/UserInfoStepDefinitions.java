package io.loopcamp.pages;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.loopcamp.utility.DB_Utility;

public class UserInfoStepDefinitions {



    @Given("Establish the database connection")
    public void establish_the_database_connection() {
        System.out.println("CONNECTIONS IS HANDEL IN HOOKS");

    }
    @When("Execute query to get all columns for {string}")
    public void execute_query_to_get_all_columns_for(String string) {
        DB_Utility.runQuery("SELECT * FROM identity." +string);

    }
    @Then("verify the below columns are listed in result for")
    public void verify_the_below_columns_are_listed_in_result_for(io.cucumber.datatable.DataTable dataTable) {
    }
}
