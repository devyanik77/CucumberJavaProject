package runner;

import cucumber.api.CucumberOptions;

@CucumberOptions(
        features = "src/test/resources/features",
        glue = {"stepDefinition"},
       
        plugin = {
                "pretty",
                "html:target/cucumber-reports/cucumber-pretty",
                "json:target/cucumber-reports/CucumberTestReport.json",
                "rerun:target/cucumber-reports/rerun.txt"
        },
        tags = {"~@Ignore"},
        monochrome=true,
        dryRun=false
		
		)

public class TestRunner {

}
