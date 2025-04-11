// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IDRX {
    function transfer(address to, uint256 amount) external returns (bool);
    function transferFrom(address from, address to, uint256 amount) external returns (bool);
    function approve(address spender, uint256 amount) external returns (bool);
    function balanceOf(address account) external view returns (uint256);
}

contract PasarKu {
    // State Variables
    address public owner;
    IDRX public idrxToken; // IDRX Stablecoin contract address
    uint256 public listingIdCounter;

    // Structs
    struct Listing {
        uint256 id;
        address seller;
        string itemName;
        uint256 price; // Price in IDRX
        bool isActive;
    }

    struct Transaction {
        uint256 listingId;
        address buyer;
        uint256 amount;
        bool isCompleted;
        bool isReleased;
    }

    struct Rating {
        bool isGood; // Good (true) or Bad (false)
        address rater;
    }

    // Mappings
    mapping(uint256 => Listing) public listings;
    mapping(uint256 => Transaction) public transactions;
    mapping(address => Rating[]) public ratings;

    // Events
    event ListingCreated(uint256 id, address seller, string itemName, uint256 price);
    event PurchaseMade(uint256 listingId, address buyer, uint256 amount);
    event FundsReleased(uint256 listingId, address seller);
    event RatingSubmitted(address ratedUser, bool isGood, address rater);

    // Modifiers
    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }

    modifier onlySeller(uint256 listingId) {
        require(msg.sender == listings[listingId].seller, "Only seller can call this function");
        _;
    }

    modifier onlyBuyer(uint256 listingId) {
        require(msg.sender == transactions[listingId].buyer, "Only buyer can call this function");
        _;
    }

    // Constructor
    constructor(address _idrxToken) {
        owner = msg.sender;
        idrxToken = IDRX(_idrxToken); // Set IDRX contract address
        listingIdCounter = 0;
    }

    // Functions
    function createListing(string memory _itemName, uint256 _price) external {
        listingIdCounter++;
        listings[listingIdCounter] = Listing(listingIdCounter, msg.sender, _itemName, _price, true);
        emit ListingCreated(listingIdCounter, msg.sender, _itemName, _price);
    }

    function buyItem(uint256 _listingId) external {
        Listing storage listing = listings[_listingId];
        require(listing.isActive, "Listing is not active");
        require(idrxToken.balanceOf(msg.sender) >= listing.price, "Insufficient IDRX balance");

        // Transfer IDRX to contract (escrow)
        require(idrxToken.transferFrom(msg.sender, address(this), listing.price), "IDRX transfer failed");

        transactions[_listingId] = Transaction(_listingId, msg.sender, listing.price, false, false);
        listing.isActive = false; // Deactivate listing
        emit PurchaseMade(_listingId, msg.sender, listing.price);
    }

    function releaseFunds(uint256 _listingId) external onlyBuyer(_listingId) {
        Transaction storage tx = transactions[_listingId];
        Listing storage listing = listings[_listingId];
        require(!tx.isCompleted, "Transaction already completed");

        // Release funds from escrow to seller
        require(idrxToken.transfer(listing.seller, tx.amount), "IDRX transfer to seller failed");
        tx.isCompleted = true;
        tx.isReleased = true;
        emit FundsReleased(_listingId, listing.seller);
    }

    function rateUser(address _user, bool _isGood) external {
        ratings[_user].push(Rating(_isGood, msg.sender));
        emit RatingSubmitted(_user, _isGood, msg.sender);
    }

    function getRating(address _user) external view returns (Rating[] memory) {
        return ratings[_user];
    }
}