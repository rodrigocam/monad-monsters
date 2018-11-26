{-# LANGUAGE OverloadedStrings, DeriveGeneric #-}

import GHC.Generics
import Web.Scotty
import Control.Concurrent.MVar
import Control.Monad.IO.Class
import Data.Monoid (mconcat)
import Network.Wai.Middleware.Cors
-- import Data.Text.Lazy as TL

main = do
    -- gameList <- []
    -- gameListVar <- newMVar gameList

    scotty 8000 $ do
        middleware simpleCors
        get "/newgame" $ do
            -- name <- param "name"
            -- gs <- liftIO $ readMVar gameListVar
            -- g <- gs
            -- html $ mconcat ["<h1>Scotty, ", name, " me up!</h1>"]
            json (666 :: Int, True :: Bool, json ())


-- newGame :: String -> IO Game
-- newGame gameName =
--     return Game {gname = gameName, on = False}

    
-- data Game = Game {gname :: String, on :: Bool}

-- game :: String -> [Game] -> IO Game
-- game name (x:xs)
--     | gname x == name = return x
--     | null xs = newGame name
--     | otherwise = game name xs