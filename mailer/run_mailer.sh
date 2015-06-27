#!/usr/bin/env bash

java -cp './*' de.meethub.mailer.Mailer $MAILCHIMP_APIKEY a76317b2eb http://localhost:8080/Meet-Hub-Hannover/mergedCalendar.ics
