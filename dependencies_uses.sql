SELECT TYPE as type, 
       OWNER || '.' || NAME as name,
       REFERENCED_TYPE as referenced_type,
       REFERENCED_OWNER || '.' || REFERENCED_NAME as referenced_name
  FROM all_dependencies
 WHERE     NAME = UPPER(LTRIM(RTRIM( :object_name )))
       AND REFERENCED_OWNER NOT IN ('SYS', 'SYSTEM', 'PUBLIC')
       AND OWNER NOT IN ('SYS', 'SYSTEM', 'PUBLIC')
