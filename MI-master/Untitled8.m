% plot(yMod(:,1))
% hold on
mlp=myNeuralNetworkFunction2(uMod);
x1=uMod(6:end,:);
xi1=uMod(1:5,:);
rn=myNeuralNetworkFunction3(x1', xi1');
rn=rn';
% plot(kkk(:,1))
% figure 
% plot(rn(:,1)-yMod(6:end,1),'.')
% figure
% plot(mlp(:,1)-yMod(:,1),'.')

% eeee=normalize(rn(:,1),'range',[17.82-3,69.6-3]);
% plot(eeee)
% hold on
% plot(data(6:end,23))
% legend('model','dane')
% diff=(data(6:end,23)-eeee(:,1))./data(6:end,23) *100
% plot((eeee(:,1)-data(6:end,23)),'.')
% err=mse(data(6:end,23),eeee)
% eup=eeee;
% 
% for i=1:size(eup,1)
%     if eup(i)>70
%         eup(i)=70;
%     end
%             if eup(i)<17
%         eup(i)=17;
%             end
% end
% plot(diff)

% lol=normalize(rn(:,2),'range',[24.23-6,75.24-6]);

for i = 1:size(rn, 2)
	column = rn(:, i);
    rn(:, i) = (((rn(:, i) + 1) / 2) * (maxVals(13+i) - minVals(13+i))) + minVals(13+i);
end
figure
plot(rn(:,1))
hold on
plot(data(6:end,23))
legend('model1','dane')

figure
plot(rn(:,2))
hold on
plot(data(6:end,24))
legend('model1','dane')

% plot(data(6:end,23)-lol)