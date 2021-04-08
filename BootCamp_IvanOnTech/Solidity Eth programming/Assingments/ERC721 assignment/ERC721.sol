pragma solidity ^0.5.12;

import "./IERC721.sol";
import "./Safemath.sol";
import "./Ownable.sol";

contract Piggycontract is IERC721, Ownable {

	using SafeMath for uint256;

	mapping (address => uint256) private ownershipTokenCount;
		
	mapping (uint256 => address) private TokensOwnership;
	
	uint256 private _totalSupply;
	uint256 private _tokenId;
	string private _name;
    string private _symbol;
	address private _contractAddress;

	constructor (string memory name, string memory symbol) public {
          // what should we do on deploy?
        _name = name;
        _symbol = symbol;
                
    }

    function balanceOf(address owner) external view returns (uint256 balance){
    	return ownershipTokenCount[owner];
	}

	function totalSupply() external view returns (uint256 total){
		return _totalSupply;
	}

	function name() external view returns (string memory tokenName){
		return _name;
	}

	function symbol() external view returns (string memory tokenSymbol){
		return _symbol;
	}

	function ownerOf(uint256 tokenId) external view returns (address owner){
		return(TokensOwnership[tokenId]);
	}


	function mint(address to) public onlyOwner {
		require (to != address(0), "ERC20 : mint to the zero address");
		TokensOwnership[_tokenId] = to;
		_tokenId = _tokenId.add(1);
		ownershipTokenCount[to] = ownershipTokenCount[to].add(1);
		_totalSupply = _totalSupply.add(1);
	}

    function transfer(address to, uint256 tokenId) external{
    	require(to != address(0), " receiver cannot be the zero address.");
        require(to != _contractAddress, "receiver cannot be the contract address.");
        require(TokensOwnership[tokenId] == msg.sender);
        TokensOwnership[tokenId] = to;
        ownershipTokenCount[msg.sender] = ownershipTokenCount[msg.sender].sub(1); 
		ownershipTokenCount[to] = ownershipTokenCount[to].add(1); 
        
    }
}



