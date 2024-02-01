## For AWS env
export AWS_ACCESS_KEY_ID="your_access_key_id"
export AWS_SECRET_ACCESS_KEY="your_secret_access_key"
export AWS_DEFAULT_REGION="your_default_region"
export AWS_SESSION_TOKEN="your-session-token"  (optional)

## For Azure env 
export ARM_CLIENT_ID="your-client-id"
export ARM_CLIENT_SECRET="your-client-secret"
export ARM_SUBSCRIPTION-ID="your-subscription-id"
export ARM_TENANT_ID="your-tenant-id"


# For GCP
// create a service account and attach a key then download as .json formate and save at safe place because it contains sensitive credential. we need to provide the path of this file on our "gcp.tf" file.

export GOOGLE_APPLICATION_CREDENTIALS="/path/to/your/keyfile.json"   # created from service account.
