SELECT
	L.CODE_TYPE_LOGEMENT AS "Type Logement",
	L.NO_LOGEMENT AS "No Logement"
FROM LOGEMENT L
WHERE L.NOM_VILLAGE = 'Casa-Dali'
ORDER BY L.CODE_TYPE_LOGEMENT;
