clear all
close all
clc
x=0:100;

young=gbellmf(x,[20,2,0]);
plot(x,young)
hold on
old=gbellmf(x,[30,3,100]);
 plot(x,old)
 hold on
 grid on
 middle_age=gbellmf(x,[15,3,45]);
  plot(x,middle_age)
  
  figure();
  
 middle_age=gbellmf(x,[15,3,45]);
 subplot(5,1,1);
  plot(x,middle_age);
  ml_middle_age=(middle_age).^(1/2);%more or less middle age
  hold on
  plot(x,ml_middle_age,'r');
  subplot(5,1,2);
  young=gbellmf(x,[20,2,0]);
plot(x,young);
hold on
    almost_young=(young).^(1/2);
  plot(x,almost_young,'r');
    subplot(5,1,3);
    old=gbellmf(x,[30,3,100]);
 plot(x,old);
 hold on
      extremly_old=(old).^(3);
  plot(x,extremly_old,'r');
     subplot(5,1,4);
       young=gbellmf(x,[20,2,0]);
plot(x,young);
hold on
  very_young=(young).^(2);
plot(x,very_young,'r');
subplot(5,1,5);
   not_very_young=1-very_young;
   not_very_old=1-((old).^2);
  nyno=min( not_very_young, not_very_old);%not very young and not vert old
  plot(x,nyno,'r');

