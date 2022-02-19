
module CardanoWallet where

import Ledger.CardanoWallet
import Ledger.Address (PaymentPubKeyHash)
import System.Random.Stateful

genWallet :: Integer -> MockWallet
genWallet = fromWalletNumber . WalletNumber

getWalletPaymentPubKeyHash :: Integer -> PaymentPubKeyHash
getWalletPaymentPubKeyHash = paymentPubKeyHash . genWallet

-- runme generates a random pubkeyhash everytime it is run
-- but it is in the IO monad
runme :: IO String
runme = do
    g <- newStdGen
    let (b, _) = uniform g :: (Int, StdGen)
        c = getWalletPaymentPubKeyHash (fromIntegral b)
    return (show c) 


{- old code below

genWallet :: Int -> MockWallet
genWallet n = let (a, _) = genByteString 10 $ mkStdGen n in
    fromSeed' a

genWallet' :: Int -> MockWallet
genWallet' n = MockWallet (mwWalletId mw1) (mwPaymentKey mw1) (Just $ mwPaymentKey mw2)
  where
    (a, g) = genByteString 10 $ mkStdGen n
    (b, _) = genByteString 10 g
    mw1    = fromSeed' a
    mw2    = fromSeed' b

-}
