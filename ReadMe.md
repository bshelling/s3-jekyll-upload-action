
# S3 Bucket Jekyll Upload Action
Action for uploading Jekyll build assets to an s3 bucket
## Input values
- Access Key ID
- Secret Access Key
- Region
- Filepath 
- Bucket
- Options


## Workflow usage
If the action is private, clone the action to the ./github directory
```
/.github
    |-> actions
        |-> s3jekyllupload-action
```
```
- uses: ./.github/actions/s3jekyllupload-action
    with:
        keyid: ${{secrets.KEY}}
        accesskey: ${{secrets.ACCESS_KEY}}
        region: "us-east-1"
        filepath: "."
        bucket: "s3://test-bucket"
        options: "--recursive"
```

## Testing
Test action via command line
```
$> docker build -t [image_name] .
$> docker run [keyid] [accesskey] [region] [filepath] [bucket] [options]
```