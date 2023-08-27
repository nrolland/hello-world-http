{-# LANGUAGE OverloadedStrings #-}

import Data.ByteString (putStr)
import Data.ByteString.Char8 (putStrLn)
import Data.Conduit
import Data.Conduit.Network

main :: IO ()
main = do
  Prelude.putStrLn "Listening on 8081"
  runTCPServer
    (serverSettings 8081 "*")
    run
  where
    response = "HTTP/1.0 200 OK\nContent-Length: 14\n\nHello, World!!!\n"
    run :: AppData -> IO ()
    run ad = runConduit $ appSource ad $$ yield response =$ appSink ad
