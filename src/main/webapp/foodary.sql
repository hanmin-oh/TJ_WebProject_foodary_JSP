
delete from food;
drop sequence food_idx_seq;
create sequence food_idx_seq;


insert into food (idx, foodname, kcal, carbs, protein, fat) 
values (freeboard_idx_seq.nextval, 'ȸ', 123, 24, 124 , 12);
commit;