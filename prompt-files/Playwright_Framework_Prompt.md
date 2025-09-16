**Objective:**  
Create a fully functional Playwright Test Automation Framework using MCP Server, following best practices like Page Object Model, Fixtures, JSON-based test data, and CI integration.

---

## Step 1: Setup MCP Server
1. Launch **Playwright MCP Server**.
2. Navigate to **[https://www.saucedemo.com/](https://www.saucedemo.com/)** through Playwright MCP Server.
3. Ensure all browser automation runs **only via MCP Server** — no static simulation or bypassing.
4. Use data-test html property primarily to locate elements.
5. Use **codegen** tool provided with Playwright MCP Server  to generate all the code first.

---

## Step 2: Test Scenarios to Validate

### Scenario 1: Login Verification
- Enter **username** and **password**, then submit the form.
- Verify successful login **through Playwright MCP Server**.

### Scenario 2: Order Item verification
- Enter **username** and **password**, then submit the form.
- Add any item into the cart.
- Goto cart, Checkout the item by providing valid test data and continue checkout.
- Finish checkout and validate that order is successfully placed.

> ✅ **Note:** 
1. All scenarios should be validated independently.
2. Once  Step 1 and Step 2 are **completed**, and code is generate using codegen, then only proceed furhter with Step 3 to create framework using generated code.


---

## Step 3: Framework Development Guidelines
1. Use **Playwright MCP Server code generation** to generate initial code.
2. Convert generated code into a **TypeScript Playwright Test runner framework**.
3. Implement **Page Object Model (POM)** for all pages.
4. Use **Fixtures with POM** also use **fixtures** instead of `beforeEach` and `afterEach` hooks where appropriate.
5. Store test data in a **JSON file** and read dynamically.
6. Keep **tests independent** — no inter-test dependencies.
7. **Assertions** must be in test scripts, not in POM methods
8. Configure `playwright.config.ts` to include:
   - HTML reports  
   - 1 retry for failed tests  
   - Video recording, screenshots, and trace
9. **Add Tags and Annotations** for each test:
    - Include **Type** (e.g., Smoke, Regression, Sanity)  
    - Include **Description** explaining the test purpose  
10. Create a **.gitignore** file to ignore result folders and `node_modules`.
11. Implement **CI pipeline using GitHub Actions**.
12. Follow **proper naming conventions** as per coding standards.

