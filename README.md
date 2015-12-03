# jmap-cli
Client command line for JMAP server

The goal of this project is to provide a client command line for JMAP protocol,
in order to test server which are implementing this protocol (such as James https://github.com/apache/james-project/tree/trunk).

## Requirements

    * Docker
    * A running JMAP server

## Usage

Build the docker image:

    $ docker build -t jmap-cli .

Running a command:

    $ docker run -ti jmap-cli /root/client/command *commandName* -s *URL* -u *user* -p *password* -j *json*

Where:

    * *commandName*: is the JMAP method name
    * *URL*: is the URL of the server (ex.: http://localhost:80)
    * *user*: is the user (ex.: user@mydomain.org)
    * *password*: is the user password (ex.: secret)
    * *json*: (optional) is the json sent to the server (ex.: '{"filter":{"inMailboxes":["Test"]}}')

### GetMailboxes command

Example:

    $ docker run -ti jmap-cli /root/client/command getMailboxes -s http://localhost:80 -u user@mydomain.org -p secret
