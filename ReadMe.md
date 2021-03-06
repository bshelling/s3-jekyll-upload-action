
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

## Deployment user policy
```
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": [
                "s3:PutObject",
                "s3:ListBucket",
                "s3:DeleteObject",
                "cloudfront:CreateInvalidation"
            ],
            "Resource": [
                "arn:aws:s3:::*/*",
                "arn:aws:cloudfront::0000000000:distribution/[distributionId]"
            ]
        }
    ]
}
```

## Workflow usage
If the action is private, clone the action to the ./github directory
```
/.github
    |-> actions
        |-> s3-jekyll-upload-action
```
```
- uses: ./.github/actions/s3-jekyll-upload-action
    with:
        keyid: ${{secrets.KEY_ID}}
        accesskey: ${{secrets.SECRET_KEY}}
        region: "us-east-1"
        filepath: "."
        bucket: ${{secrets.BUCKET}}
        options: "--recursive"
        distroid: ${{secrets.DISTRO_ID}}
```

## Testing
Test action via command line
```
$> docker build -t [image_name] .
$> docker run [keyid] [accesskey] [region] [filepath] [bucket] [options] [distroid]
```