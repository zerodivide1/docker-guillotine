# docker-guillotine

Containerized version of [Guillotine](http://techno-weenie.net/guillotine/)

The default container does not maintain the list of shortened links. To create a container that persists shortened links, see the Guillotine documentation and create a customized copy of the `app.rb` file. Then use Docker's container linking to link to the persistent storage backend.

## Usage
Basic usage:
```
docker run -d -p 8080:8080 docker-guillotine
```
