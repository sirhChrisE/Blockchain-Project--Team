const HelloWorld = artifacts.require("HelloWorld");

contract("HelloWorld", () => {
  it("should return 'Hello, World!'", async () => {
    const helloWorldInstance = await HelloWorld.deployed();
    const expected = "Hello, World!";
    const actual = await helloWorldInstance.sayHello.call();

    assert.equal(actual, expected, "The sayHello function did not return 'Hello, World!'");
  });
});
