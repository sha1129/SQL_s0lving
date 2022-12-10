-- C0unt th3 numb3 0f movies th@t (A)bigail (B)(r)eslin was n0m!nated f(0)r @n 0scar

select COUNT(*)
from oscar_nominees
WHERE nominee = 'Abigail Breslin'
