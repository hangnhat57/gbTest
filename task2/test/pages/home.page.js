import BasePage from "./basePage";
import { browser, element, protractor } from "protractor/built/index";
import {
    sendKeys,
    click,
    waitToBeDisplayed,
    waitForTextMatch,
    waitForElementCountToBeLessThan,
    waitForElementCountToBe,
    hover,
    sleep
} from "../../helpers/browser_utilities";
export class HomePage extends BasePage{
    constructor() {
        super();
        this.link_Insurance  = element(by.xpath(`//a[@href="#Insurance"]`));
        this.link_Travel  = element(by.xpath(`//a[@href="#Travel"]`));
        this.btn_ShowMyResult = element(by.xpath(`//button[@name="product-form-submit"]`))
    }

    async goToTravelSection(){
        await click(this.link_Insurance);
        await click(this.link_Travel)
    }
    async goToResultPage(){
        await click(this.btn_ShowMyResult)
    }
}