import boto3

# Initialize the ECR client
client = boto3.client('ecr')

# Create ECR repository
response = client.create_repository(
    registryId='871909687521',
    repositoryName='my_flask',
    imageTagMutability='MUTABLE',
    imageScanningConfiguration={
        'scanOnPush': True
    },
    encryptionConfiguration={
        'encryptionType': 'AES256'
        # 'kmsKey': 'string'  # Uncomment if using a KMS key
    }
)

# Access and print the repository URI
repository_uri = response['repository']['repositoryUri']
print(repository_uri)
