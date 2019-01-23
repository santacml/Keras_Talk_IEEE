%% Section 1 - easy line
% define graph
pts1 = [0 0 1 1];
pts2 = [0 1 0 1];
labels = {'Class 0', 'Class 0', 'Class 0', 'Class 1'};
plot(pts1,pts2,'o');
text(pts1,pts2,labels,'VerticalAlignment','bottom','HorizontalAlignment','right');
lims = [-.5 1.5];
xlim(lims );
ylim(lims );
xlabel('X1'); ylabel('X2');
hold on;

% make line
f = @(x) -1*x + 1.5;
x = 0:.01:1.5;
y = f(x);
plot(x, y);

%% Section 2 - 3d plot
figure;
pts3 = [0 0 0 1];
pts = 0:.01:1;
scatter3(pts1, pts2, pts3);
xlim(lims); ylim(lims); zlim(lims);
xlabel('X1'); ylabel('X2'); zlabel('Y');

hold on;
% actual graph
f = @(x1, x2) 1.4*x1 + 1.4*x2 - 1.5;
[X,Y] = meshgrid(pts,pts);
Z = f(X, Y);

%surf(X,Y,Z);

%{
step function
figure;
x = -.5:.001:1;
f = @(x) x > 0;
plot(x, f(x));
xlabel('X1'); ylabel('step(x)');
ylim([-.5 1.5]);
%} 

Z = heaviside(f(X, Y));

surf(X,Y,Z);

%% Section 3

pts1 = [0 0 1 1];
pts2 = [0 1 0 1];
labels = {'Class 1', 'Class 0', 'Class 0', 'Class 1'};
plot(pts1,pts2,'o');
text(pts1,pts2,labels,'VerticalAlignment','bottom','HorizontalAlignment','right');
lims = [-.5 1.5];
xlim(lims );
ylim(lims );
xlabel('X1'); ylabel('X2');
hold on;

% make line
f1 = @(x) -1*x + 1.5;
x = -1.5:.01:1.5;
y = f1(x);
plot(x, y);


% make line
f2 = @(x) -1*x + .5;
y = f2(x);
plot(x, y);

%% section 4
figure;
pts3 = [1 0 0 1];
pts = 0:.01:1;
scatter3(pts1, pts2, pts3);
xlim(lims); ylim(lims); zlim(lims);
xlabel('X1'); ylabel('X2'); zlabel('Y');

hold on;
% actual graph
f1 = @(x1, x2) heaviside(1.4*x1 + 1.4*x2 - 1.8);
f2 = @(x1, x2) heaviside(-1.4*x1 -1.4*x2 + 1.1);
[X,Y] = meshgrid(pts,pts);
Z1 = f1(X, Y);
Z2 = f2(X, Y);

Z = Z1 + Z2;

surf(X,Y,Z);