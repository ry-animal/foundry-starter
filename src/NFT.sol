pragma solidity ^0.8.13;

import "erc721/ERC721.sol";

contract NFT is ERC721 {
    constructor() ERC721("NFT", "NFT") {}

    function mint(address to, uint256 tokenId) public {
        _mint(to, tokenId);
    }
}