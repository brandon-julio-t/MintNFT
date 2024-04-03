// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
import "remix_tests.sol";
import "remix_accounts.sol";
import "../contracts/MyWaifuNFTToken.sol";

contract MyWaifuNFTTokenTest {

    MyWaifuNFTToken s;
    address acc0;
    string cid = "QmRQMvmWEiwfu3sN9GpLznbhrJXtCtxU8X9i6pKbezXq5u";

    function beforeAll () public {
        s = new MyWaifuNFTToken(address(this));
        acc0 = TestsAccounts.getAccount(0);
    }

    function testTokenNameAndSymbol () public {
        Assert.equal(s.name(), "MyWaifuNFTToken", "token name did not match");
        Assert.equal(s.symbol(), "MWNFTT", "token symbol did not match");
    }

    function testMint () public {
        s.safeMint(acc0, cid);
        Assert.ok(true, "failed to safe mint the nft");
    }
}