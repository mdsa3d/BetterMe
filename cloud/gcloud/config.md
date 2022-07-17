# Configuration

### Configuration details
Display the current configuration
```cmd
$ gcloud config list
```
A sample output will look something liek this:
```bash
[accessibility]
screen_reader = False
[app]
account = user@gmail.com
disable_usage_reporting = False
project = app-1234

Your active configuration is: [default]
```

### Set project
You can change the project to diffrent one using the following command. 
```cmd
$ gcloud config set project PROJECT_ID
```
Where, one need to get the `PROJECT_ID` from the google console.
