# Clipboard
Manipulate the authenticated users clipboard.

---

## GET
Get the authenticated users clipboard contents.

Endpoint: `/clipboard`

### Headers

| Key | Type | Required |
| --- | --- | --- |
| Zn-Authentication | String | Yes |

Returns: [Clipboard][resource-clipboard]

---

## GET
Verify the checksum of the authenticated users clipboard contents.
NOTE: Added as a helper method, may or may not survive rollout.

Endpoint: `/clipboard/verify`

### Headers

| Key | Type | Required |
| --- | --- | --- |
| Zn-Authentication | String | Yes |

### Parameters

| Key | Type | Required | Default |
| --- | --- | --- | --- |
| hash | String | Yes | - |

### Returns

| Key | Type | Description |
| --- | --- | --- |
| valid | Boolean | If the passed hash matches the stored hash; `true` or `false`. |

---

## POST
Update the authenticated users clipboard contents.

Endpoint: `/clipboard`

### Headers

| Key | Type | Required |
| --- | --- | --- |
| Zn-Authentication | String | Yes |

### Parameters

| Key | Type | Required | Default |
| --- | --- | --- | --- |
| data | String | Yes | - |
| type | String | Yes | - |
| encrypted | Boolean | No | True |
| salt | String | If `encrypted` | - |

Returns: [Clipboard][resource-clipboard]

---

## DELETE
Clear the authenticated users clipboard contents.

Endpoint: `/clipboard`

### Headers

| Key | Type | Required |
| --- | --- | --- |
| Zn-Authentication | String | Yes |

Returns: Relevant HTTP status code


[resource-clipboard]: ../Resources/clipboard.md
