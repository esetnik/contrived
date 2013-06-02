#Contrived
###a simple way to load contrived data for your node app
***
##Usage

1. Create a `contrived/` directory at the root of your node app

	```
	app.coffee
	contrived/
	package.json
	```
2. Create yaml **model** files for each model you would like to load

	```
	contrived/
	  users.yaml
	  tasks.yaml
	```
	
	an example `users.yaml` would look like:
	
	```yaml
	- firstName:  John
	  lastName:   Doe
	  email:      jdoe@fake.com
	- firstName:  Jane
	  lastName:   Dame
	  email:      jdame@fake.com
	```
	
3. Require the `contrived` module

	```coffeescript
	contrived = require 'contrived'
	```
4. Use some contrived data

	```coffeescript
	console.log contrived.users
	```

##Todo

- [ ] support additional data formats
- [ ] support nested `contrives`