import urllib2
import re
import sys
reload(sys)
sys.setdefaultencoding( "utf-8" )
from bs4 import BeautifulSoup
def strip(str):
	l=len(str)
	for i in range (0,l):
		if ord(str[i])==10:
			return str[0:i]
cn_male=open('cn_male.txt')
lines=cn_male.readlines()
# the next loop get every url for a single singer and get the corresponding html
count=0
for line in lines:

	line=strip(line)
	url="http://music.baidu.com"+line
	# print the url for checking
	print url
	try:
		response = urllib2.urlopen(url)
		html=response.read()
		# use BeautifulSoup to modify the html text
		soup = BeautifulSoup(html)
		# find the information about the singer, including the name, the region, and the birthday 
		p=re.compile('\s+')
		tag=soup.find(class_="path-list clearfix")
		temp=tag.find_all("li")
		name=re.sub(p,'',temp[2].string)
		print name
		tag=soup.find(class_="c6 clearfix")
		region=tag.li.find_all("span")[0].string
		birth=tag.li.find_all("span")[1].string
		birth=re.sub(p,'',birth)
		print region
		print birth
		# create the file for the singer
		count=count+1
		if count>100:
			break
		filename="cn_male_%d.txt" %count
		wfile=open(filename,"w")
		wfile.write(name+"\n")
		wfile.write(region+"\n")
		wfile.write(birth+"\n")
		# find the song list of the singer, just one page
		tags=soup.find_all(class_="song-title",limit=20)
		for tag in tags:
			title=tag.a["title"]
			print title
			wfile.write(title+"\n")
		wfile.write("albums"+"\n")
		tags=soup.find_all(class_="album-title",limit=20)
		for tag in tags:
			title=tag.a["title"]
			print title
			wfile.write(title+"\n")
	except Exception, e:
		print e

