package io.loopcamp.stepDefinitions;

import io.cucumber.java.en.Given;

import io.loopcamp.pages.LoginPage;

public class DashBoardStepDefin {
    LoginPage loginPage;
    @Given("the {string} on the home page")
    public void the_on_the_home_page(String userType) {
       loginPage = new LoginPage();
       loginPage.login(userType);
    }

}
