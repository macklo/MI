u1=uDataSets{1};
u2=uDataSets{2};
u3=uDataSets{3};
u4=uDataSets{4};
y1=yDataSets{1};
y2=yDataSets{2};
y3=yDataSets{3};
y4=yDataSets{4};
TestedDataSet=3;

 
if TestedDataSet==1
    x1=u1(11:end,:);
    xi1=u1(1:10,:);
    mlpInput=u1;
elseif TestedDataSet==2
    x1=u2(11:end,:);
    xi1=u2(1:10,:);
    mlpInput=u2;
elseif TestedDataSet==3
    x1=u3(11:end,:);
    xi1=u3(1:10,:);
    mlpInput=u3;
elseif TestedDataSet==4
    x1=u4(11:end,:);
    xi1=u4(1:10,:);
    mlpInput=u4;
end    
mlp=mlp20(mlpInput);
rn=lm10_10v2(x1', xi1');
rn=rn';
for i = 1:size(rn, 2)
    rn(:, i) = (((rn(:, i) + 1) / 2) * (maxVals(13+i) - minVals(13+i))) + minVals(13+i);
end
for i = 1:size(mlp, 2)
    mlp(:, i) = (((mlp(:, i) + 1) / 2) * (maxVals(13+i) - minVals(13+i))) + minVals(13+i);
end
figure
title('y1')
stairs(rn(:,1))
hold on
stairs(mlp(11:end,1))
hold on
stairs(dataSets{TestedDataSet}(11:end,23))
legend('model rn','model mlp','dane')

figure
title('y2')
stairs(rn(:,2))
hold on
stairs(mlp(11:end,2))
hold on
stairs(dataSets{TestedDataSet}(11:end,24))
legend('model rn','model mlp','dane')
err(1)=immse(rn,dataSets{TestedDataSet}(11:end,23:24));
err(2)=immse(mlp,dataSets{TestedDataSet}(:,23:24));
err

% plot(data(6:end,23)-lol)