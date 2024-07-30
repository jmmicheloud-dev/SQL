SELECT 
		t.id
		,t.codigo_edt
		,t.descripcion
		,u.first_name
		,e.nombre AS estado
		,et.tema
		,MIN(ht.desde)
		,MAX(ht.hasta)
		,DATEDIFF(MAX(ht.hasta),MIN(ht.desde))
	FROM tareas t
	LEFT join users u ON u.id=t.user_id
	LEFT JOIN estados e ON e.id=t.estado_id
	LEFT JOIN edt et ON et.codigo=t.codigo_edt
	LEFT JOIN gestion g ON g.id=t.gestion_id
	LEFT JOIN historial_tareas ht ON t.id=ht.tarea_id
	WHERE 1
/*	AND e.nombre !='Completado' 
	AND e.nombre !='Cancelado'*/
	AND t.id='30'
	GROUP BY ht.user_id;
	
	SELECT * FROM historial_tareas ht WHERE ht.tarea_id='30'