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


### User Model

Registration
```
curl -v http://localhost:3000/auth -X POST -H "Accept: application/json" -H "Content-Type: application/json" -d "{\"name\":\"TestUser\",\"email\":\"test@test.com\",\"password\":\"12345678\", \"password_confirmation\":\"12345678\" }" 
```
```
curl -v http://localhost:3000/auth/sign_in -X POST -H "Accept: application/json" -H "Content-Type: application/json" -d "{\"email\":\"test@test.com\",\"password\":\"12345678\"}" 
```
```
curl -v http://localhost:3000/auth/sign_out/ -X DELETE -H "Accept: application/json" -H "Content-Type: application/json" -d "{\"uid\":\"test@test.com\", \"client\":\"FIVT4tgZSByfLVEOeHJ8Ow\", \"access-token\":\"JUk7Qgc14nfftcinZ2HYTg\"}" 
```
```
curl -v http://localhost:3000/auth/validate_token -X GET -H "Accept: application/json" -H "Content-Type: application/json" -d "{\"uid\":\"test@test.com\", \"client\":\"FIVT4tgZSByfLVEOeHJ8Ow\", \"access-token\":\"JUk7Qgc14nfftcinZ2HYTg\"}" 
```

#### All user resources



Prefix Verb   URI Pattern                            Controller#Action
        new_user_session GET    /auth/sign_in(.:format)                devise_token_auth/sessions#new
            user_session POST   /auth/sign_in(.:format)                devise_token_auth/sessions#create
    destroy_user_session DELETE /auth/sign_out(.:format)               devise_token_auth/sessions#destroy
           user_password POST   /auth/password(.:format)               devise_token_auth/passwords#create
       new_user_password GET    /auth/password/new(.:format)           devise_token_auth/passwords#new
      edit_user_password GET    /auth/password/edit(.:format)          devise_token_auth/passwords#edit
                         PATCH  /auth/password(.:format)               devise_token_auth/passwords#update
                         PUT    /auth/password(.:format)               devise_token_auth/passwords#update
cancel_user_registration GET    /auth/cancel(.:format)                 devise_token_auth/registrations#cancel
       user_registration POST   /auth(.:format)                        devise_token_auth/registrations#create
   new_user_registration GET    /auth/sign_up(.:format)                devise_token_auth/registrations#new
  edit_user_registration GET    /auth/edit(.:format)                   devise_token_auth/registrations#edit
                         PATCH  /auth(.:format)                        devise_token_auth/registrations#update
                         PUT    /auth(.:format)                        devise_token_auth/registrations#update
                         DELETE /auth(.:format)                        devise_token_auth/registrations#destroy


