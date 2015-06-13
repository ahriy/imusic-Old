#coding=utf-8
import MySQLdb
import sys
import re
reload(sys)
sys.setdefaultencoding( "utf-8" )
cn_male=open('../cn_male/cn_male_1',"r")
p=re.compile('\s+')
x=""
for line in cn_male:
	x=line
	x=re.sub(p,'',line)
print x
conn= MySQLdb.connect(
        host='localhost',
        port = 3306,
        user='root',
        passwd='',
        db ='mydb',
        charset="utf8",
        )
cur=conn.cursor()
x="ahriy"
y="asdf911"
sql="insert into user (name,passwd) values(%s,%s)"
cur.execute(sql,(x,y))
cur.close()
conn.commit()
conn.close()