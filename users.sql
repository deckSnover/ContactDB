-- Concessão de permissão para visualização da visão contact_by_id
GRANT SELECT ON contacts_db.all_contacts TO 'user'@'localhost';

-- Concessão de permissão para visualização da visão contact_by_id
GRANT SELECT ON contacts_db.contact_by_id TO 'authenticated_user'@'localhost';

-- Concessão de permissão para visualização da visão contact_by_id
GRANT SELECT ON contacts_db.contacts_by_name TO 'user'@'localhost';
