//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract Counter {
    uint public count;
    function increament()external  {
        count++;
    }
}
interface ICounter {
    function count()external view returns(uint); 
    function increament() external; 
}

contract MyContract {
    function increamentCounter(address _counter)external {
        ICounter(_counter).increament();
    }
    function getCount(address _counter)external view returns(uint)  {
        return ICounter(_counter).count();
    }
}

// Uniswap example
interface UniswapV2Facrory {
    function getPair(address tokenA,address tokenB) external view returns(address pair);
    
}

interface UniswapV2Pair {
    function getReserves()external view returns(uint112 reserve0,uint112 reserve1,uint32 blockTimeStampLast);
}

// contract UniswapExample {
//     address private factory;
//     address private dai;
//     address private weith;
//     function getTokenReserves()external view returns(uint,uint) {
//         address pair=UniswapV2Facrory(factory).getPair(dai,weith);
//         (uint reserve0,uint reserve1)=UniswapV2Pair(pair).getReserves();
//         return (reserve0,reserve1);
//     }
// }