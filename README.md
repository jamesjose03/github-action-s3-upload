# github-action-s3-upload
A Github action to upload to files to AWS S3

##How to setup

# Create a workflow file in your git repo
Create a 'main.yml' file in your '.github/workflows' folder. A sample syntax is given below.

'''
on: [push]

jobs:
  s3_copy_job:
    runs-on: ubuntu-latest
    name: Copy files to s3 repo
    steps:
    - name: Copy git repo
      uses: actions/checkout@master
    - name: Run s3 copy
      uses: rjmendus/github-action-s3-upload@master
      env:
        TO_UPLOAD: ./file_to_upload.txt
        AWS_REGION: ${{ secrets.AWS_REGION }}
        AWS_S3_BUCKET: ${{ secrets.AWS_S3_BUCKET }}
        AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
        AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
'''

The above workflow file is run on each push to the git repo.
Replace the 'TO_UPLOAD' with the name of the file or folder to upload.

##Create Github secrets for the following:
	- AWS_REGION: The AWS region of your s3 bucket
	- AWS_S3_BUCKET: The name of the s3 bucket
	- AWS_ACCESS_KEY_ID: The AWS access key ID
	- AWS_SECRET_ACCESS_KEY: The aws access secret key

###Note: Make sure that the AWS account you are using has the necessary S3 bucket permissions