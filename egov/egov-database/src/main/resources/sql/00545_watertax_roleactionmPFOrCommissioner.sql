
insert into eg_roleaction (roleid,actionid)values((select id from eg_role where name='Property Administrator'),(select id from eg_action where url='/application/update/'));
