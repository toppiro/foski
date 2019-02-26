'use strict';

let selectMOrtgateTerm = require('../page-objects/nationwideMortgageApplication');
let cclickApply = require('../shared-objects/A');

let shared = ({applicationPage});
let page = ({nationwideMortgageApplication});


Given(/^I open the url$/, function() {
  return helpers.loadPage(shared.applicationPage.url, 10);
});

When(/^I unput the following data in the table below (.*)$/, function(Table) {

  return page.nationwideMortgageApplication.apply(Table);
});

Then(/^I am navigated to the$/, function() {
  return page.nationwideMortgageApplication.applicationResults();
});
