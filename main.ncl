<?xml version="1.0" encoding="ISO-8859-1"?>
<ncl id="nclua" xmlns="http://www.ncl.org.br/NCL3.0/EDTVProfile">
    <head>
        <regionBase>
            <region id="regiao01"/>
        </regionBase>
        <descriptorBase>
            <descriptor id="descritor01" region="regiao01"/>
        </descriptorBase>
        <connectorBase>
            <causalConnector id="onEndAttStop">
                <simpleCondition role="onEndAttribution" />
                <simpleAction role="stop"/>
            </causalConnector>
        </connectorBase>
    </head>
    <body>
        <port id="port01" component="media01"/>
        <media id="media01" descriptor="descritor01" src="main.lua" type="application/x-ginga-NCLua">
            <property name="stop"/>        	
        </media>
        <link xconnector="onEndAttStop">
            <bind role="onEndAttribution" component="media01" interface="stop"/>
            <bind role="stop" component="media01"/>
        </link>
    </body>
</ncl>
