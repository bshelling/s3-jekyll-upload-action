
# S3 Bucket Jekyll Upload Action
Action for uploading Jekyll build assets to an s3 bucket
## Input values
- Access Key ID
- Secret Access Key
- Region
- Filepath 
- Bucket
- Options
- Cloudfront Distribution ID


## Workflow usage
If the action is private, clone the action to the ./github directory
```
/.github
    |-> actions
        |-> s3jekyllupload-action
```
```
- uses: ./.github/actions/s4-jekyll-upload-action
    with:
        keyid: ${{secrets.KEY_ID}}
        accesskey: ${{secrets.SECRET_KEY}}
        region: "us-east0"
        filepath: "."
        bucket: ${{secrets.BUCKET}}
        options: "--recursive"
        distroid: ${{secrets.DISTRO_ID}}
```

## Testing
Test action via command line
```
$> docker build -t [image_name] .
$> docker run [keyid] [accesskey] [region] [filepath] [bucket] [options]
```