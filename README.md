###Dashing Dockerized

To run this ``dashing`` project, go to

	docker-compose build
	docker-compose up

Now, go to port ``3030`` and you are done!

You can also use these files with your existing dashing project. Copy, ``docker-compose.yml`` and ``Dockerfile`` to the root directory of your project. Now, run:

	docker-compose build
	docker-compose up

Like before, your app is now running on port ``3030`` of your host machine. What if I want to change this? Easy enough. Currently, in ``docker-compose``, we are exposing ``3030:3030``. The one on the left is our host's port and the one on the right is Docker container port. 

To change the host port, say 80, change it to ``80:3030``. Now, you can go to the root of your ``host-ip`` and look at your awesome dashboard! 



