%% Q1: Vectors
V = linspace(-2, 9, 20)            % 20 evenly spaced values

U = V;
U(1:2:end) = V(1:2:end) + 2.1      % add 2.1 to odd-indexed elements

W = 22:2:34                        % even numbers between 21 and 35
length(W)                          % number of elements
W(4)                               % 4th element

%% Q2: Matrices
M = [10 6 7 -2; 8 -3 2 -4; 3 1 5 6; 9 -4 3 2];

x = M(3,:)                         % i) 3rd row
T = M'                             % ii) transpose
M(:,4) = T(2,:)'                   % iii) replace 4th COLUMN with 2nd row of T
T(:,4) = []                        % iv) delete 4th COLUMN of T
D = M(end-2:end, end-1:end)        % v) last 3 rows, last 2 columns
max(M)                             % vi) max of each column
min(M, [], 2)                      % vii) min of each row
X = sort(M, 'descend')             % viii) sort columns descending
Y = sort(M, 2, 'ascend')           % ix) sort rows ascending
sum(Y(:,3))                        % x) sum of 3rd column of Y

%% Q3: Element-by-element operations
a = [4 9 16 25];
b = [4 2 3 1];

x = a .* b                         % i)
y = sqrt(a) + sum(b.^a)            % ii)
z = (0:3:18) ./ (1:2:13)           % iii)

n = 90:180;                        % iv) angles in degrees
m = ((-1).^(n+1)) .* sind(2*n) ./ n.^2;

%% Q4: ones() and eye()
Result = 7*ones(4) - 10*eye(4)
