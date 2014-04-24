clc; close all; clear all;

fid=fopen('geometry2.inp');
CC=textscan(fid,'%n');
C=CC{1};

ind=1;
npoly=C(ind);

for ipoly=1:npoly
    ind=ind+1;
    nvert=C(ind);
    for ivert=1:nvert
        ind=ind+1;
        x{ipoly}(ivert) =C(ind);
        ind=ind+1;
        y{ipoly}(ivert) =C(ind);
    end
    ind=ind+2;
end

figure(1)
for i=1:npoly
    patch(x{i},y{i},[1 1 1],'LineWidth',2); % use color i.
    hold on
    for ivert=1:length(x{i})
%         plot(x{i}(ivert),y{i}(ivert),'kx','MarkerSize',10)
        plot(x{i}(ivert),y{i}(ivert),'-mx', 'LineWidth',2,'MarkerEdgeColor','k',...
                'MarkerFaceColor',[0 0 0],...
                'MarkerSize',10)        
    end
end
axis([-10 110 -10 110])
get(gca,'DataAspectRatio')