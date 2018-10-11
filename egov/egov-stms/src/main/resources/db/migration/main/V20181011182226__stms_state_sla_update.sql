update eg_wf_states set sla = (createddate + interval '1 day' * (select value from eg_appconfig_values where key_id = (select id from eg_appconfig where key_name = 'SLAFORNEWSEWERAGECONNECTION' and module = (select id from eg_module where name = 'Sewerage Tax Management'))) :: Integer) where id in (select state_id from egswtax_applicationdetails where applicationtype = (select id from egswtax_application_type where code = 'NEWSEWERAGECONNECTION'));

update eg_wf_states set sla = (createddate + interval '1 day' * (select value from eg_appconfig_values where key_id = (select id from eg_appconfig where key_name = 'SLAFORCHANGEINCLOSET' and module = (select id from eg_module where name = 'Sewerage Tax Management'))) :: Integer) where id in (select state_id from egswtax_applicationdetails where applicationtype = (select id from egswtax_application_type where code = 'CHANGEINCLOSETS'));

update eg_wf_states set sla = (createddate + interval '1 day' * (select value from eg_appconfig_values where key_id = (select id from eg_appconfig where key_name = 'SLAFORCLOSURE' and module = (select id from eg_module where name = 'Sewerage Tax Management'))) :: Integer) where id in (select state_id from egswtax_applicationdetails where applicationtype = (select id from egswtax_application_type where code = 'CLOSESEWERAGECONNECTION'));

update eg_wf_state_history set sla = (createddate + interval '1 day' * (select value from eg_appconfig_values where key_id = (select id from eg_appconfig where key_name = 'SLAFORNEWSEWERAGECONNECTION' and module = (select id from eg_module where name = 'Sewerage Tax Management'))) :: Integer) where state_id in (select state_id from egswtax_applicationdetails where applicationtype = (select id from egswtax_application_type where code = 'NEWSEWERAGECONNECTION'));

update eg_wf_state_history set sla = (createddate + interval '1 day' * (select value from eg_appconfig_values where key_id = (select id from eg_appconfig where key_name = 'SLAFORCHANGEINCLOSET' and module = (select id from eg_module where name = 'Sewerage Tax Management'))) :: Integer) where state_id in (select state_id from egswtax_applicationdetails where applicationtype = (select id from egswtax_application_type where code = 'CHANGEINCLOSETS'));

update eg_wf_state_history set sla = (createddate + interval '1 day' * (select value from eg_appconfig_values where key_id = (select id from eg_appconfig where key_name = 'SLAFORCLOSURE' and module = (select id from eg_module where name = 'Sewerage Tax Management'))) :: Integer) where state_id in (select state_id from egswtax_applicationdetails where applicationtype = (select id from egswtax_application_type where code = 'CLOSESEWERAGECONNECTION'));