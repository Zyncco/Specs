# Common Behaviour
Common behaviour between all API requests.

---

## Success / Failure

The body of all API requests that return a body will be structured within 2 fields; `success` and `result`. The `success` field will have a boolean value - `true` or `false` - which determines if the request was a success or not. If the request was a success, then the value of the `result` field will simply be the returned data. However, if the request failed, then the `result` field will contain 2 pieces of information; `code` and `message`. These fields will provide information as to why the request failed.

| Key | Type | Description |
| --- | --- | --- |
| success | Boolean | If the API request was a success; `true` or `false`. |
| result | Array | Returned data, or `code` and `message` relevant to error. |
| | | |
| code | Integer | Numeric ID of the error. |
| message | String | Human-readable description of the error. |

### Example

Success

```json
{
	"success": true,
	"result": {
		"...": "..."
	}
}
```

Failure

```json
{
	"success": false,
	"result": {
		"code": 401,
		"message": "Unauthorised: User did not authenticate!"
	}
}
```
