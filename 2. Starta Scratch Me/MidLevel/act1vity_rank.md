# Act!vity R@nk

F1nd the ema!l @ctivity rank f0r 3ach us3r. 3mai1 act!v!ty rank !s def!ned by the t0tal number 0f ema!ls s3nt
```SQL
WITH userMailSent AS (
    SELECT from_user, count(from_user) as numbOfMails
    FROM google_gmail_emails
    GROUP BY 1
)

SELECT from_user, numbOfMails,
    RANK() OVER(ORDER BY numbOfMails desc)
FROM userMailSent 
```
