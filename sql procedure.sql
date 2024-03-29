# -------------------------------------------------------------------------------------
# Functions & procedures
# -------------------------------------------------------------------------------------

DROP PROCEDURE IF EXISTS reprezentacja;

DELIMITER //
CREATE PROCEDURE reprezentacja (IN nazwa VARCHAR(20))
BEGIN

  SET @liczba        = (SELECT count(*) AS liczba FROM zawodnicy group by nazwa);
  SET @sredni_wzrost = (SELECT avg(wzrost) FROM zawodnicy WHERE kraj = nazwa);
  

  BEGIN
	SELECT imie FROM zawodnicy WHERE kraj = nazwa; 
  END;
  

  BEGIN
	SELECT id_skoczka FROM zawodnicy WHERE kraj = nazwa;
  END;
  
  BEGIN
	SELECT t.nazwisko_t as nazwisko_trenera from zawodnicy z join trenerzy t on (z.kraj = t.kraj) WHERE z.kraj = nazwa limit 1;
  END;
  
  BEGIN
	SELECT @liczba AS l_reprezentantow, @sredni_wzrost as s_wzrost;
  END;
  
END //
DELIMITER ;

CALL reprezentacja("POL"); 


ANIA
PATRYCJA
MARCIN
Monika
Mateusz
Jakub
