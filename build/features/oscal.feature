Feature: Validate OSCAL Content
  As a developer
  I want to validate OSCAL content against appropriate metaschemas

  Background: 
    Given the following directories by type:
      | type    | paths |
      | catalog | ../src/specifications/profile-resolution/profile-resolution-examples/catalogs,../src/specifications/profile-resolution/profile-resolution-examples/output-expected,../src/specifications/profile-resolution/requirement-tests/catalogs |
      | profile | ../src/specifications/profile-resolution/profile-resolution-examples/full-test_profile.xml |
    And the OSCAL CLI tool is installed
    And the metaschema directory is "../src/metaschema"

  Scenario Outline: Validate OSCAL content
    When I validate "<type>" content in "<path>"
    Then all validations should pass without errors

    Examples:
      | type    | path |
      | catalog | ../src/specifications/profile-resolution/profile-resolution-examples/catalogs |
      | catalog | ../src/specifications/profile-resolution/profile-resolution-examples/output-expected |
      | catalog | ../src/specifications/profile-resolution/requirement-tests/catalogs |
      | profile | ../src/specifications/profile-resolution/profile-resolution-examples/full-test_profile.xml |
      | ssp | https://raw.githubusercontent.com/usnistgov/oscal-content/refs/heads/main/examples/ssp/xml/oscal_leveraged-example_ssp.xml|
      | poam| ../src/specifications/valid-content/poam.xml|
      | assessment-plan | https://raw.githubusercontent.com/usnistgov/oscal-content/refs/heads/main/src/examples/ap/xml/ifa_assessment-plan-example.xml |
      | assessment-results | https://raw.githubusercontent.com/usnistgov/oscal-content/refs/heads/main/src/examples/ar/xml/ifa_assessment-results-example.xml |
