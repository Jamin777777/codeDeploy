#!/bin/bash
yum -y install httpd

systemctl start httpd && systemctl enable httpd