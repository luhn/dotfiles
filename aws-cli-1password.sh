#!/bin/sh -eo pipefail

# Pull AWS credentials from 1Password.
# Use with credential_process in AWS credentials file.

if [ ! $OP_SESSION_my ]; then
	eval $(op signin my);
fi;

op get item "$1" | jq '
	.details.sections |
	map(.fields) |
	add |
	map({"key": .t, "value": .v}) |
	from_entries |
	{Version:1, AccessKeyId:.aws_access_key_id, SecretAccessKey:.aws_secret_access_key}
'
