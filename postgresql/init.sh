#!/bin/bash

psql -U docker docker -f /etc/data_grabber/init.sql
