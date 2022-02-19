# Cardano Wallet

There are 3 functions in this module:
 - genWallet
 - getWalletPaymentPubKeyHash
 - runme

## genWallet

This function, given an integer, will generate a mock wallet.

The type of this function is:
```
genWallet :: Integer -> MockWallet
```

Example of using this function:
```
genWallet 5
```

## getWalletPaymentPubKeyHash
This function, given an integer, will generate the paymentPubKeyHash.

The type of this function is:
```
getWalletPaymentPubKeyHash :: Integer -> PaymentPubKeyHash
```

Example of using this function:
```
getWalletPaymentPubKeyHash 5
```

## runme
This function returns a result in the IO monad, and will give a random paymentPubKeyHash every time it is run.

The type of this function is:
```
runme :: IO String
```

Example of using this function:
```
runme
```

