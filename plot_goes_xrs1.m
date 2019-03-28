

x = eval(mm);
a1=x(128:end);


for i =1:length(a1)
    a2(i,:)=strsplit(a1{i,1},',');
end;

a3=a2(:,2:7);
a4=str2double(a3);

time=linspace(0,24,length(a4));

plot(time,a4(:,2))
hold all;
plot(time,a4(:,5))
legend('long','short')
title(file, 'Interpreter', 'none','FontSize', 14)
xlabel('Universal Time (hh.mm)','FontSize', 14);
ylabel('Frequency (MHz)','FontSize', 14);


saveas(gcf,strcat(file1,'.png'))