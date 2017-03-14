# Firebase

Zync uses Firebase to notify clients of a clipboard update.
Note that the clipboard is not sent over firebase, but the receiving client must request Zync servers
for the clipboard to update accordingly (if it decides to update based on settings). Clients never send out messages on
Firebase; that work is delegated to the server.

Zync messages are 
[collapsible](https://firebase.google.com/docs/cloud-messaging/concept-options#collapsible_and_non-collapsible_messages).

## Clipboard Update Message

| Key | Type | Description |
| --- | --- | --- |
| type | DataType | The type of data being sent: TEXT, IMAGE, VIDEO, BINARY |
| size | long | Size of payload in bytes |

## Client Implementation

When clients receive a message on Firebase, they must ensure a few conditions are met:
- The message is from the server (check sender)
- The data received contains both `type` and `size`

Before fetching data from the server, the clients must unsure it aligns with the device's settings. 
On mobile specifically, this will significantly save on data when there is a large payload.
