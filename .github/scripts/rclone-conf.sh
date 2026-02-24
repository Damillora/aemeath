cat << EOF
[fina]
type = s3
provider = Other
env_auth = false
access_key_id = $S3_ACCESS_KEY_ID
secret_access_key = $S3_SECRET_ACCESS_KEY
region = fina
endpoint = s3.castorice.my.id
force_path_style = true
acl = public-read
bucket_acl = public-read
EOF