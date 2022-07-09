/*
Adatbázis létrehozása feladat

Készíts adatbázis-táblákat a feladat leírása alapján!
(Magát az adatbázist nem kell létrehoznod.)

Amit be kell adnod:
    - a táblák létrehozásának MySQL utasítása
    - a táblák mezőinek létrehozásához és beállításához szükséges MySQL utasítások

Az utasításokat jelen fájl tartalmazza!

A bónusz feladat megoldása nem kötelező.

Nem futtatható (azaz szintaktikai hibás) SQL utasításokért nem jár pont.
A feladatot részben teljesítő megoldásokért részpontszám jár.
A bónusz feladatnál csak a teljesen helyes megoldásért jár pont.

A feladat leírása törölhető.

Jó munkát!
*/

/*
Adatbázis-táblák létrehozása (20 pont)

Az általad létrehozott adatbázist egy üzenetküldő alkalmazáshoz szeretnénk használni.
Az alkalmazásban a felhasználók regisztrálás után tudnak üzenetet küldeni szintén regisztrált felhasználóknak,
valamint a kapott üzenetekre válaszolhatnak.
Nincs lehetőség több címzett megadására - azaz egy üzenetet csak egy felhasználó részére lehet küldeni.

Az adatbázisnak képesnek kell lennie a következő adatok tárolására:
    1. regisztrált felhasználók adatai
        - kötelező adatok: név, email-cím, jelszó, aktív felhasználó-e, a regisztrálás időpontja
    2. a regisztrált felhasználók által egymásnak küldött üzenetek adatai
        - kötelező adatok: küldő, címzett, üzenet szövege, az üzenet küldésének időpontja,
          továbbá ha az üzenet egy korábban kapottra válasz, akkor hivatkozás a megválaszolt üzenetre

Kritériumok az adatbázissal kapcsolatban:
    - legalább kettő, legfeljebb négy táblát tartalmazzon
    - legyen legalább egy kapcsolat a létrehozott táblák között (idegen kulccsal)
      (egy tábla saját magával is kapcsolódhat)
    - a fent leírt adatokon kívül más adatokat is tárolhat, de egy táblán legfeljebb 8 mező lehet
    - az adatbázis, a táblák és a mezők elnevezése rajtad áll, azonban használj angol megnevezéseket, méghozzá következetesen
      (ha az egyik táblában camel-case szerinti mező-neveket adtál, akkor a másik táblában is tégy úgy)

*/
CREATE TABLE `messenger application`.`user_data`
(`id` INT NOT NULL AUTO_INCREMENT , `name` VARCHAR(125) NOT NULL ,
`email_address` VARCHAR(100) NOT NULL ,
`password` VARCHAR NOT NULL ,
`is_active` BOOLEAN NOT NULL ,
`date_of_registration` DATE NULL ,
`membership` VARCHAR(100) NOT NULL ,
PRIMARY KEY (`id`),
UNIQUE (`email_address`)) ENGINE = InnoDB;

CREATE TABLE `messenger application`.`message_data`
(`sender` VARCHAR(150) NOT NULL ,
`recipient` VARCHAR(150) NOT NULL ,
`email_text` TEXT NOT NULL ,
`date_of_time` DATE NOT NULL ,
`is_ reply` BOOLEAN NOT NULL ,
`message_id` INT(250) NULL AUTO_INCREMENT ,
PRIMARY KEY (`message_id`)) ENGINE = InnoDB;

ALTER TABLE `message_data` ADD `header` TEXT NOT NULL AFTER `message_id`, ADD UNIQUE (`header`);


-- ---------------------------------------------------------------------------------------------------------------------

/*
Bónusz feladat (5 pont)

Adj hozzá adatokat mindegyik táblához!
(Az adatoknak nem kell valósnak lenniük. Egy felhasználói email-cím lehet például: 'valami@valami.va')

*/
