import json

let connectMainJson* = %*{
  "type": "connect",
  "body": {
    "channel": "main",
    "id": "formain"
  }
}
let connectLocalTLJson* = %*{
  "type": "connect",
  "body": {
    "channel": "localTimeline",
    "id": "forlocaltl"
  }
}
let connectHybridTLJson* = %*{
  "type": "connect",
  "body": {
    "channel": "hybridTimeline",
    "id": "forhybridtl"
  }
}
let connectHomeTLJson* = %*{
  "type": "connect",
  "body": {
    "channel": "localTimeline",
    "id": "forhometl"
  }
}
let connectGlobalTLJson* = %*{
  "type": "connect",
  "body": {
    "channel": "globalTimeline",
    "id": "forglobaltl"
  }
}