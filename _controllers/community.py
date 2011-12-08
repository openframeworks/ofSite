import os
import re
import logging

import blogofile_bf as bf
import shutil
import sys

import argparse
import shutil
import glob
from urllib import urlopen
from lxml import etree
from lxml import objectify

class Member(object):
    def __init__(self,user,name,avatar):
        self.user = user
        self.name = name
        self.avatar = avatar

def run():
    f = urlopen("http://forum.openframeworks.cc/chris_test/makeUserList.php");
    size = f.info().getparam("ContentLength")
    users_list = f.read(size)
    xml = objectify.fromstring(users_list)
    members = []
    for user in xml.member:
        members.append(Member(user.user, user.name, user.image))

    bf.writer.materialize_template("community.mako", ('community',"index.html"), {'members':members} )    
    
