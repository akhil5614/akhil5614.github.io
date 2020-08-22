curl "https://www.aerounwired.org.in/about.html" -o "about.html"
grep  'https://res.cloudinary.com/di67pwwso/image/upload/' "about.html"|grep -Po '(?<=img ).*(?=alt)'|cut -c 21- >urls.txt
while read line;do curl $line -O ;done <urls.txt
