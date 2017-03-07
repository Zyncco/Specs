# Clipboard
Authenticated users clipboard.

---

## Fields

| Key | Type | Description |
| --- | --- | --- |
| data | String | Base64 representation of the clipboard contents. |
| type | String | Data type of the clipboard contents; `text` or `file`. |
| encrypted | Boolean | If the clipboard contents are encrypted; `true` or `false`. |
| salt | String | Salt used in conjunction with local password to encrypt the clipboard contents; or `null`. |
| hash | String | SHA-256 checksum of the clipboard contents. |
| timestamp | String | ISO-8601 representation of the timestamp when clipboard contents was updated. |

---

## Example

Actual clipboard: `This is an example of the clipboard contents.`

```json
{
	"data": "VGhpcyBpcyBhbiBleGFtcGxlIG9mIHRoZSBjbGlwYm9hcmQgY29udGVudHMuCg==",
	"type": "text",
	"encrypted": false,
	"salt": null,
	"hash": "49b3e3130fecef2f2bd1fd3efaa6dfd55a61df0b734614ef5ced108790f53274",
	"timestamp": "2017-03-07T11:32:43+00:00"
}
```
