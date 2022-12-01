### User accept 


WITH sentReq AS( 
    SELECT *
    FROM fb_friend_requests
    WHERE action = 'sent'
    ),
accpReq AS( 
    SELECT *
    FROM fb_friend_requests
    WHERE action = 'accepted'
    )
 
SELECT s.date, 
       count(a.user_id_receiver)/count(s.user_id_sender)
FROM  sentReq s
LEFT JOIN accpReq a
       on s.user_id_sender = a.user_id_sender and a.user_id_receiver = s.user_id_receiver
group by date;

Notes: Depends how you I perform joining of the tables. For example, if I was to choose accept request first than the join will change to right. 
The key here is getting all the sent request and comparing with acceptance request.


