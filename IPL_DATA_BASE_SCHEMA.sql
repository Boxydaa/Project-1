Create database IPL_APP;

create or replace Schema external_staging;
create or replace stage ipl_stg
    url = 's3://ipl-project/Stage/';
desc stage ipl_stg;

list @IPL_STG;

Create or replace schema IPL;

ALTER SCHEMA IPL RENAME TO IPL_CORE;

CREATE OR REPLACE SCHEMA IPL_APPSTATS;
