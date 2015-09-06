#!/bin/bash
#mailchimp api key has to be supplied as parameter
cd /srv/stor/git/Meet-Hub-Hannover/site/mailer
java -cp './*' de.meethub.mailer.Mailer $1 a76317b2eb http://localhost:8080/Meet-Hub-Hannover/mergedCalendar.ics 2>&1 >mailer.log
