DELIMITER $$

DROP PROCEDURE IF EXISTS `report` $$
CREATE PROCEDURE `report`(
  IN days INT
)
BEGIN

  SELECT P.product_id, P.name, P.model, OPT.value as color, SUM(P.quantity) AS quantity, SUM(P.total + P.total * P.tax / 100) AS total
	FROM  `oc_order_product` P
	LEFT JOIN `oc_order` O ON (P.order_id = O.order_id)
	LEFT JOIN `oc_order_option` OPT ON (P.order_product_id =  OPT.order_product_id)
	WHERE (O.order_status_id > '0') AND (O.date_added BETWEEN DATE_SUB(NOW(), INTERVAL days DAY) AND NOW())
	GROUP BY P.product_id, color
	ORDER BY name;

END $$

DELIMITER ;



DELIMITER $$

CREATE PROCEDURE `report_dates`(
  IN fromDate DATE,
  IN toDate   DATE
)
  BEGIN

    SELECT
      P.product_id,
      P.name,
      P.model,
      OPT.value                            AS color,
      SUM(P.quantity)                      AS quantity,
      SUM(P.total + P.total * P.tax / 100) AS total
    FROM `oc_order_product` P
      LEFT JOIN `oc_order` O ON (P.order_id = O.order_id)
      LEFT JOIN `oc_order_option` OPT ON (P.order_product_id = OPT.order_product_id)
    WHERE (O.order_status_id > '0') AND (O.date_added BETWEEN fromDate AND toDate)
    GROUP BY P.product_id, color
    ORDER BY name;

  END $$

DELIMITER ;
