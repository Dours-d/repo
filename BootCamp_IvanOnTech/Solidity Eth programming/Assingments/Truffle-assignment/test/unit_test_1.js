const Erc20 = artifacts.require("ERC20");

contract("ERC20", accounts => {
  it("should put 100 BOB in the second account", () =>
    Erc20.deployed()
      .then(instance => instance.getBalance.call(accounts[1]))
      .then(balance => {
        assert.equal(
          balance.valueOf(),
          100,
          "100 wasn't in the second account"
        );
      }));
});