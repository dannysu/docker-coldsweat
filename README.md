# About

This is a Docker container for [Coldsweat][1], a RSS aggregator with [Fever][2]
compatible API. Fever API can be used with iOS RSS clients like [Reeder][3].

# Setup

First grab the Docker image:

```
> docker pull dannysu/coldsweat
```

Then run it once to setup your desired username. You'll be prompted for your email and password.

Note that you should probably map a volume for coldsweat to store its sqlite database. Below I used `$(pwd)/data` and mapped it to /coldsweat/data within the container.

```
> docker run -it --rm -v $(pwd)/data:/coldsweat/data dannysu/coldsweat python sweat.py setup -u your_desired_username
```

Finally, run the container in daemon mode. Map the port appropriately for your setup. Coldsweat by default listens on port 8080.

```
> docker run -d --name=coldsweat -v $(pwd)/data:/coldsweat/data -p 8080:8080 dannysu/coldsweat

```

  [1]: https://github.com/passiomatic/coldsweat
  [2]: http://www.feedafever.com/
  [3]: http://reederapp.com/
