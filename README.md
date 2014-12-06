Synopsis
========

This project is an example of how to use DB Deploy 3.0M3 and Maven together with a Postgres database.

Code Example
============

`mvn clean test dbdeploy:update` is all that's needed to run this example.

Assumptions/Pre-requisites
--------------------------

1. You have a Postgres database running on locahost port 5433.
2. Your username is mvitale.
3. You're able to connect to your Postgres database without a password.
4. The schema that you're trying to use DB Deploy on is named `dbdeploy`.

Note
----

* All of the above Assumptions can be changed in the `<properties>` section of the `pom.xml` file.

Motivation
==========

For a couple years now, I've been toying around with trying to get DB Deploy working in some of my projects.  One thing
or another has always stopped me.  The fact that [DB Deploy](http://www.dbdeploy.com/) hasn't been developed in quite a very long time doesn't
help.

I typically use [Postgres](http://www.postgresql.org/) as my database, and DB Deploy had no out-of-the-box way to create a `changelog` table...But
that was hardly a blocker, because that's easy enough to do.

Right now, I have a client where I'm coaching the starting dev team on a Greenfield project.  I was not going to be
deterred this time in getting it working.  The client will be using Maven, so that was a requirement for this
implementation.

The Maven support in DB Deploy's latest version leaves quite a few things to be desired.  For one, it will never even
create the changelog table if it doesn't exist out of the box.  That's a pretty significant oversight.  However,
[Shivprasad Bade](http://byteco.de/about/) has a wonderful [blog post](http://byteco.de/2010/01/31/maven-dbdeploy-hsqldb-without-ant/) from 2010 that covers how to do it quite well...But the blog doesn't
provide any kind of full solution.

Let me be clear, this is really Shivprasad's work.  I'm just providing a working example, because I haven't yet
found one anywhere.

Installation
============

`git clone https://github.com/MikeVitale42/dbdeploy-maven`

Contributors
============

Shivprasad Bade
Mike Vitale mike@mavelo.us

License
=======

```
            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
                    Version 2, December 2004

 Copyright (C) 2004 Sam Hocevar <sam@hocevar.net>

 Everyone is permitted to copy and distribute verbatim or modified
 copies of this license document, and changing it is allowed as long
 as the name is changed.

            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION

  0. You just DO WHAT THE FUCK YOU WANT TO.
```

