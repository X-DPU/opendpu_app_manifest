### HOW TO


#### Download and install repo

* download repo's execution file from google
```
mkdir -p ~/.bin
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/.bin/repo
chmod a+rx ~/.bin/repo
```
* add path in ~/.bashrc
```
export PATH="${HOME}/.bin:${PATH}"
```


#### Initialization

```
repo init -u https://github.com/X-DPU/opendpu_app_manifest.git -b main
repo sync
repo forall -c git checkout -b main
repo forall -c git branch --set-upstream-to=origin/main main
```



#### pull all projects
```
repo forall -cvp git pull
```