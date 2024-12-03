import com.intuit.karate.junit5.Karate;

public class TestRunner {
    @Karate.Test
    Karate testValidateApi() {
        return Karate.run("policyConfigurator/optional_rule.feature").relativeTo(getClass());
    }
}
