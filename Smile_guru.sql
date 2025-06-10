SELECT * FROM siva_a.smile_guru_ga4_data;
use siva_a;
alter table smile_guru_ga4_data rename to sm;
select * from sm;

update sm set event_date=20250223 where trim(event_date)= '';
alter table sm modify column event_date Date;
UPDATE sm
SET event_timestamp = '1.73573E+15'
WHERE event_timestamp = 'invalid_timestamp';
alter table sm modify column event_timestamp bigint;

ALTER TABLE sm
ADD Page VARCHAR(50);
alter table sm add ID int;
ALTER TABLE sm MODIFY COLUMN ID INT AUTO_INCREMENT PRIMARY KEY;
ALTER TABLE sm MODIFY COLUMN event_name VARCHAR(255);
ALTER TABLE sm MODIFY COLUMN user_pseudo_id VARCHAR(255);
ALTER TABLE sm MODIFY COLUMN device_category VARCHAR(50);
ALTER TABLE sm MODIFY COLUMN device_os VARCHAR(50);
update sm set user_pseudo_id='Unknown' where user_pseudo_id='';
update sm set page_location='https://smileguru.com'
where page_location='';

set @row=0;
update sm
set event_name= CASE
when (@row := @row+1)%4=1 then 'page_view'
when @row%4=2 then 'form_submit'
when @row%4=3 then 'scroll'
else 'click'
end
where event_name='';



update sm set device_category='desktop' 
where ID in (3,21,34,37,51,56,62,74,76,78,79,104,114,139,143,144,158,174,196,199,227,230,232,233,243,245,247,248,264,278,289,305,309,310,312);
update sm set device_category='tablet' 
where ID in (346,350,353,357,358,373,382,391,394,410,412,422,434,435,452,469,472,473,475,476,488,501,502,517,521,527,531,537,556,562,580,598,601,606);
update sm set device_category='mobile' 
where ID in (608,627,628,629,632,642,645,651,659,673,674,675,677,706,736,744,775,776,787,811,825,826,852,855,858,874,896,920,921,939,956,957,997,1006);
update sm set device_category='smartwatch' 
where ID in (1019,1025,1036,1041,1046,1059);


update sm set device_os='Android' 
where ID in (3,21,22,26,46,48,65,99,162,163,166,174,195,197,222,230,234,241,245,260,262,264,279,281,307,314,320,335,359);
update sm set device_os='Windows'
where ID in (362,370,371,377,387,405,409,416,447,451,471,473,497,503,517,532,577,584,594,598,601,612,615,616,618,638,652);
update sm set device_os='iOS'
where ID in (655,664,665,672,697,701,706,726,728,730,752,753,791,795,822,845,846,866,867,868,876,877,909,910,919,928,952,953);
update sm set device_os='Linux'
where ID in (971,972,986,1007,1029,1043,1046);



update sm
set Page="Main"
where page_location="https://smileguru.com";
update sm
set Page="Contact"
where page_location="https://smileguru.com/contact";
select *from sm;
update sm
set Page="Orthodontics"
where page_location="https://smileguru.com/orthodontics";
select *from sm;
update sm
set Page="About"
where page_location="https://smileguru.com/about";
select *from sm;
update sm
set Page="Main"
where page_location="https://smileguru.com/home";
select *from sm;
select Page,count(*) as ass from sm group by Page;
update sm
set Page="About"
where page_location="https://smileguru.com/about-us";
update sm
set Page="Dental-implants"
where page_location="https://smileguru.com/dental-implants";
update sm
set Page="Emergency-dental"
where page_location="https://smileguru.com/emergency-dental";
update sm
set Page="Index"
where page_location="https://smileguru.com/index";
update sm
set Page="Root-canal"
where page_location="https://smileguru.com/root-canal";
select * from sm;

update sm
set Page="cosmetic-dentistry"
where page_location='https://smileguru.com/cosmetic-dentistry';
update sm
set Page="teeth-whitening"
where page_location='https://smileguru.com/teeth-whitening';
select * from sm;
