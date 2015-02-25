SET LINESIZE 120;
SELECT
	TL.CODE_TYPE_LOGEMENT AS [Type Logement],
	TL.DESCRIPTION AS [Description Logement],
	TN.CATEGORIE AS [Catégorie Village],
	C.DESCRIPTION AS [Description Village],
	FORMAT(TN.TARIF_UNITAIRE, money) AS [Prix/Nuit/Personne]
FROM TYPE_LOGEMENT TL
	INNER JOIN TARIF_NUIT TN
		ON TN.TYPE_LOGEMENT = TL.CODE_TYPE_LOGEMENT
			INNER JOIN CATEGORIE_VILLAGE C
				ON C.NO_CATEGORIE = TN.CATEGORIE
ORDER BY
	TL.CODE_TYPE_LOGEMENT,
	TN.CATEGORIE;
	