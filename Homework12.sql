--film tablosunda film uzunluğu length sütununda gösterilmektedir. 
--Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?

--SELECT * FROM film
--WHERE length > 
--(SELECT AVG(length)FROM film)
--ORDER BY length DESC;
------------------------------------------------------------------------------------------------------


--film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?
--SELECT COUNT(*) FROM film
--WHERE rental_rate = 
--(SELECT MAX(rental_rate) FROM film);
---------------------------------------------------------------------------------------------------------


--film tablosunda en düşük rental_rate ve en düşük replacement_cost değerlerine sahip filmleri sıralayınız.

--SELECT (SELECT MIN(rental_rate) FROM film) , (SELECT MIN(replacement_cost) FROM film) FROM film;
---------------------------------------------------------------------------------------------------------------------------



--payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.

--SELECT customer_id , SUM(amount) FROM payment
--GROUP BY customer_id
--ORDER BY SUM(amount) DESC;
----------------------------------------------------------------------------------------------------------------------------