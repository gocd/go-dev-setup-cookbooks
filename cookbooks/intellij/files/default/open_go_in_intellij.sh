#!/bin/sh

if [ -e "/home/vagrant/go/.idea" ]; then
	`grep -q "DevelopmentServer" /home/vagrant/go/.idea/workspace.xml`
	if [ ! $? -eq 0 ]; then
		cp /home/vagrant/misc_go_files/workspace.xml /home/vagrant/go/.idea
	fi
        `/opt/intellij/idea-IC/bin/idea.sh /home/vagrant/go/`
else
	`/opt/intellij/idea-IC/bin/idea.sh /home/vagrant/go/pom.xml`
fi
