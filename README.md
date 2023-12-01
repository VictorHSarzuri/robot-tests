# Robot Framework Tests

A practice automation test framework for web sites
This project introduces the basic Robot Framework with Selenium Library for testing some of the scenarios of the public sites (Amazon and Google)


## Tests:
* test_amazon_login.robot
A test suite with tests for valid login and also covers invalid login scenarios.
* test_product.robot
A Test suite with tests for valid product search and also covers invalid product searching scenarios.
* test_google-search.robot
A test suite with test for valid search in google

## Run the tests
Install a python enviroment
```bash
  python3 -m venv .venv
  source .venv/bin/activate
```

Install the Robot Framework and Selenium library
```bash
  pip install robotframework
  pip install selenium robotframework-selenium2library webdrivermanager openpyxl
  robot --version
```
Run the tests
```bash
  robot .
```
## Tech Stack
* [Robot Framework](https://robotframework.org/)
* [Robot Framework Selenium Library](https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html)
* [openpxl](https://openpyxl.readthedocs.io/en/stable/)