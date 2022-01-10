{-# LANGUAGE OverloadedStrings #-}

import Data.ByteString.Char8 ()
import Data.Conduit
import Data.Conduit.Network

main :: IO ()
main =
  runTCPServer
    (serverSettings 8080 "127.0.0.1")
    run
  where
    response = "HTTP/1.0 200 OK\nContent-Length: 14\n\nHello, World!\n"
    run :: AppData -> IO ()
    run ad = runConduit $ appSource ad $$ yield response =$ appSink ad