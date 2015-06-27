#!/usr/bin/env bash
#mailchimp api key has to be supplied as parameter
java -cp './*' de.meethub.mailer.Mailer $1 a76317b2eb http://localhost:8080/Meet-Hub-Hannover/mergedCalendar.ics
