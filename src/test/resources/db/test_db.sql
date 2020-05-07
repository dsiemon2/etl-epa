drop table if exists wqp.org_data_swap_storet cascade;
select create_swap_table ('storet', 'wqp', 'org_data');
drop table if exists wqp.project_data_swap_storet cascade;
select create_swap_table ('storet', 'wqp', 'project_data');
drop table if exists wqp.station_swap_storet cascade;
select create_swap_table ('storet', 'wqp', 'station');
drop table if exists wqp.bio_hab_metric_swap_storet cascade;
select create_swap_table ('storet', 'wqp', 'bio_hab_metric');
drop table if exists wqp.activity_swap_storet cascade;
select create_swap_table ('storet', 'wqp', 'activity');
drop table if exists wqp.act_metric_swap_storet cascade;
select create_swap_table ('storet', 'wqp', 'act_metric');
drop table if exists wqp.result_swap_storet cascade;
select create_swap_table ('storet', 'wqp', 'result');
drop table if exists wqp.r_detect_qnt_lmt_swap_storet cascade;
select create_swap_table ('storet', 'wqp', 'r_detect_qnt_lmt');
drop table if exists wqp.prj_ml_weighting_swap_storet cascade;
select create_swap_table ('storet', 'wqp', 'prj_ml_weighting');

drop table if exists wqp.activity_sum_swap_storet cascade;
select create_swap_table ('storet', 'wqp', 'activity_sum');
drop table if exists wqp.result_sum_swap_storet cascade;
select create_swap_table ('storet', 'wqp', 'result_sum');
drop table if exists wqp.org_grouping_swap_storet cascade;
select create_swap_table ('storet', 'wqp', 'org_grouping');
drop table if exists wqp.ml_grouping_swap_storet cascade;
select create_swap_table ('storet', 'wqp', 'ml_grouping');
drop table if exists wqp.organization_sum_swap_storet cascade;
select create_swap_table ('storet', 'wqp', 'organization_sum');
drop table if exists wqp.station_sum_swap_storet cascade;
select create_swap_table ('storet', 'wqp', 'station_sum');
drop table if exists wqp.qwportal_summary_swap_storet cascade;
select create_swap_table ('storet', 'wqp', 'qwportal_summary');

drop table if exists wqp.assemblage_swap_storet cascade;
select create_swap_table ('storet', 'wqp', 'assemblage');
drop table if exists wqp.char_name_swap_storet cascade;
select create_swap_table ('storet', 'wqp', 'char_name');
drop table if exists wqp.char_type_swap_storet cascade;
select create_swap_table ('storet', 'wqp', 'char_type');
drop table if exists wqp.country_testsr cascade;
select create_swap_table ('storet', 'wqp', 'country');
drop table if exists wqp.county_swap_storet cascade;
select create_swap_table ('storet', 'wqp', 'county');
drop table if exists wqp.monitoring_loc_swap_storet cascade;
select create_swap_table ('storet', 'wqp', 'monitoring_loc');
drop table if exists wqp.organization_swap_storet cascade;
select create_swap_table ('storet', 'wqp', 'organization');
drop table if exists wqp.project_swap_storet cascade;
select create_swap_table ('storet', 'wqp', 'project');
drop table if exists wqp.project_dim_swap_storet cascade;
select create_swap_table ('storet', 'wqp', 'project_dim');
drop table if exists wqp.sample_media_swap_storet cascade;
select create_swap_table ('storet', 'wqp', 'sample_media');
drop table if exists wqp.site_type_swap_storet cascade;
select create_swap_table ('storet', 'wqp', 'site_type');
drop table if exists wqp.state_swap_storet cascade;
select create_swap_table ('storet', 'wqp', 'state');
drop table if exists wqp.taxa_name_swap_storet cascade;
select create_swap_table ('storet', 'wqp', 'taxa_name');

drop table if exists wqp.activity_object_swap_storet cascade;
select create_swap_table ('storet', 'wqp', 'activity_object');
drop table if exists wqp.project_object_swap_storet cascade;
select create_swap_table ('storet', 'wqp', 'project_object');
drop table if exists wqp.result_object_swap_storet cascade;
select create_swap_table ('storet', 'wqp', 'result_object');
drop table if exists wqp.station_object_swap_storet cascade;
select create_swap_table ('storet', 'wqp', 'station_object');