package io.loopcamp.stepDefinitions;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.loopcamp.pages.BasePage;
import io.loopcamp.pages.LoginPage;
import io.loopcamp.pages.UserPage;
import io.loopcamp.utility.BrowserUtil;
import io.loopcamp.utility.DB_Utility;
import io.loopcamp.utility.Driver;
import org.junit.Assert;

public class UserStepDefin {

    UserPage userPage = new UserPage();
    int expCount;

    @Given("the user navigates to {string} page")
    public void the_user_navigates_to_page(String moduleName) {
        userPage.navigateModule(moduleName);
    }
    @When("the user gets total user count")
    public void the_user_gets_total_user_count() {
      userPage.searchButton.click();
      userPage.allRadioButton.click();
      userPage.updateSearchButton.click();
      BrowserUtil.waitFor(2);
      expCount = userPage.getResultCount();
    }

    @Then("verify user count information match in DB")
    public void verify_user_count_information_match_in_db() {
        DB_Utility.runQuery("SELECT  COUNT(*) FROM document.users");
        String actualCountStr = DB_Utility.getCellValue(1,1);
        int actualCount = Integer.parseInt(actualCountStr);
        Assert.assertEquals(expCount,actualCount);
    }
}
