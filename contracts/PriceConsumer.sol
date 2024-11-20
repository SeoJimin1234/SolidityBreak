pragma solidity ^0.8.7;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract PriceConsumerV3{
    AggregatorV3Interface internal priceFeed;

    /**
     *Network: Sepolia
     *Aggregator: ETH/USD
     *Address : 0x694AA1769357215DE4FAC081bf1f309aDC325306
    */

    constructor() public {
        priceFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
    }

    /**
     * returns the latest price
    */
    function getLatestPrice() public view returns (int) {
        (
            uint80 roundID,
            int price,
            uint startedAt,
            uint timeStamp,
            uint80 answeredInRound
        ) = priceFeed.latestRoundData();

        return price;
    }

}