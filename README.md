### Example Requests:

CRUD for Meetings:


Post: (create)

curl -v http://localhost:3000/meetings -X POST -H "Accept: application/json" -H "Content-Type: application/json" -d "{\"name\":\"second  meeting\",\"date\":\"2016/06/
05 14:55:32\",\"duration\":\"30\",\"location\":\"505055.5655\"}" 


Get: (read)

curl -v http://localhost:3000/meetings -X GET -H "Accept: application/json" -H "Content-Type: application/json"

Put: (update, takes meeting id in url, atm the id is 1)


curl -v http://localhost:3000/meetings/1 -X PUT -H "Accept: application/json" -H "Content-Type: application/json" -d "{\"name\":\"first  meeting edited\",\"date\":\"2016/09/03 11:35:12\",\"duration\":\"70\",\"location\":\"969696.666\"}" 

Delete (destroy, takes meeting ID in url, atm the id is 1)

curl -v http://localhost:3000/meetings/1 -X DELETE -H "Accept: application/json" -H "Content-Type: application/json"
