tutum-docker-jboss
==================

**This image will be deprecated soon. Please use the image provided by the software provider: ** https://hub.docker.com/u/jboss/


Base docker image to run a JBoss application server


Image tags
----------
```
    tutum/jboss:latest
    tutum/jboss:as7
    tutum/jboss:as6
    tutum/jboss:as5
    tutum/jboss:as4
```


Usage
-----

To create the image `tutum/jboss`, execute the following command on the tutum-docker-jboss folder:

    docker build -t tutum/jboss .

To run the image and bind to port :

    docker run -d -p 8080:8080 -p 9990:9990 tutum/jboss


The first time that you run your container, a new user `admin` with all privileges 
will be created in JBoss with a random password. To get the password, check the logs
of the container by running:

    docker logs <CONTAINER_ID>

You will see an output like the following:

    ========================================================================
    You can now configure to this JBoss server using:

    admin:Yqu6d97Jqyoy

    ========================================================================

In this case, `Yqu6d97Jqyoy` is the password allocated to the `admin` user.

You can now login to you admin console to configure your JBoss server:

    http://127.0.0.1:9990/manager/html


Setting a specific password for the admin account
-------------------------------------------------

If you want to use a preset password instead of a random generated one, you can
set the environment variable `JBOSS_PASS` to your specific password when running the container:

    docker run -d -p 8080:8080 -p 9990:9990 -e JBOSS_PASS="mypass" tutum/jboss

You can now test your deployment:

    http://127.0.0.1:8080/

Done!

**by http://www.tutum.co**

