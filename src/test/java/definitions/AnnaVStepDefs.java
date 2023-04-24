package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import support.Helpers;

import java.io.IOException;
import java.sql.SQLException;

import static support.TestContext.getDriver;

public class AnnaVStepDefs {
    int iUserID;
    String sActivationCode;

    @Then("AV retrieve activation information for email {string}")
    public void avRetrieveActivationInformationForEmail(String sEmailAddress) throws SQLException {
        String sAccessToken = Helpers.getAccessToken(sEmailAddress);
        String[] sData = sAccessToken.split(";");
        iUserID= Integer.parseInt(sData[0]);
        sActivationCode = sData[1];

        System.out.println(sAccessToken);
        System.out.println(iUserID);
        System.out.println(sActivationCode);
    }

    @And("AV activate the user")
    public void avActivateTheUser() throws IOException {
        Helpers.activateUser(iUserID,sActivationCode);
    }

    @Given("AV open {string}")
    public void avOpen(String sURL) {
        getDriver().get(XpathLibrary.sRegistrationURL);
    }

    @And("AV type {string} into element with xpath {string}")
    public void avTypeIntoElementWithXpath(String sText, String sRegistrationFieldLocation) {
        switch (sRegistrationFieldLocation){
            case "FirstName": getDriver().findElement(By.xpath(XpathLibrary.sRegFirstName)).sendKeys(sText);
            break;
            case "LastName": getDriver().findElement(By.xpath(XpathLibrary.sRegLastName)).sendKeys(sText);
                break;

        }



    }
}
