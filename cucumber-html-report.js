const report = require("multiple-cucumber-html-reporter");
report.generate({
    jsonDir: "cypress/cucumber-json",  // ** Path of .json file **//
    reportPath: "./reports/cucumber-htmlreport.html",
    metadata: {
        device: "Local test machine",
        platform: {
            name: "Windows",
            version: "11",
        },
    },
});