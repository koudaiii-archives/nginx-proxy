# nginx-proxy
for kubernetes

## Usage

```
$ cp .env.sample .env
# Set up proxy
```


```
$ bundle install
$ bundle exec ruby config.rb # Create manifestfile for kubernetes
```

* deploy

kubernetes

```
$ kubectl create -f kubernetes/deployment-nginx-proxy.yaml
$ kubectl create -f kubernetes/svc-nginx-proxy.yaml
```
