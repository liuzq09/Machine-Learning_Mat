function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%
m=length(y);
flag=zeros(m,1);
count=0;

for i=1:m
    if(y(i)>0)
        count=count+1;
        flag(i)=1;
    end
end

pos1=zeros(1,count);
pos0=zeros(1,m-count);

count1=0;count0=0;
for i=1:m
    if(y(i)>0)
        count1=count1+1;
        pos1(count1)=i;
    else
        count0=count0+1;
        pos0(count0)=i;
    end
end

plot(X(pos1,1),X(pos1,2),'k+');
hold on;
plot(X(pos0,1),X(pos0,2),'ko');








% =========================================================================



hold off;

end
