import ws, asyncdispatch, json, streams
import yaml/serialization
import misskeystream
import types/settings

proc main() {.async.} =
  var settings: Settings
  let s = newFileStream("settings.yaml")
  s.load(settings)
  let token: string = settings.token

  let ws = await newWebSocket("wss://misskey.m544.net/streaming?i=" & token)
  echo "Connect!"

  await ws.send($connectMainJson)
  await ws.send($connectGlobalTLJson)

  while true:
    echo await ws.receiveStrPacket()

asyncCheck main()
runForever()