1. SELECT ownername, surname
FROM owners o
JOIN zips z ON z.zipCode=o.zipCode
WHERE city='Detroit' OR city='Grand Rapids';

2. SELECT COUNT(ownerID)
FROM owners
WHERE zipCode = 49503;

3. SELECT COUNT(DISTINCT(zipCode))
FROM owners;

4. SELECT o.ownerID, ownername, surname, z.city, streetAddress, state
FROM owners o
JOIN pets p ON o.ownerID = p.ownerID
JOIN zips z ON o.zipCode = z.zipCode
GROUP BY p.ownerID, ownername, surname, z.city, streetAddress, state
HAVING COUNT(p.ownerID) = (SELECT COUNT(ownerID)
FROM pets p, petkinds k
WHERE p.kindID=k.kindID AND kind = 'Dog'
GROUP BY ownerID
ORDER BY COUNT(ownerID) DESC
LIMIT 1);

5. SELECT o.ownerID, ownername, surname, z.city, streetAddress, state
FROM owners o
JOIN pets p ON o.ownerID = p.ownerID
JOIN zips z ON o.zipCode = z.zipCode
GROUP BY p.ownerID, ownername, surname, z.city, streetAddress, state
HAVING COUNT(p.ownerID) = (SELECT COUNT(ownerID)
FROM pets p, petkinds k
WHERE p.kindID=k.kindID AND kind = 'Cat'
GROUP BY ownerID
ORDER BY COUNT(ownerID) DESC
LIMIT 1);

6. SELECT name, ownername, surname, kind, age, gender
FROM pets p, owners o, petkinds k, genders g
WHERE p.ownerID=o.ownerID AND k.kindID=p.kindID AND g.genderID=p.genderID AND age > 8;

7. SELECT city, COUNT(petID)
FROM pets p, owners o, zips z
WHERE p.ownerID=o.ownerID AND z.zipCode = o.zipCode
GROUP BY city;

8. SELECT name, COUNT(name)
FROM pets
GROUP BY name
ORDER BY COUNT(name) DESC
LIMIT 1;

9. SELECT ownername, surname, streetAddress, city, o.zipCode, name
FROM owners o, zips z, pets p
WHERE z.zipCode = o.zipCode AND p.ownerID=o.ownerID AND surname LIKE "C%";

10. SELECT kind, COUNT(kind)
FROM pets p, petkinds k
WHERE p.kindID=k.kindID
GROUP BY kind;