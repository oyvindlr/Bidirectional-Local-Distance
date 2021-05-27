% Finds the Bidirectional Local Distance (BLD) between two structures,
% a "reference" structure and a "test" structure. The result is a one
% distance for every point in the reference structure.
% ref:    Reference structure, NxD matrix, where N is a number of points, and
%         D is the number of dimensions the points exist in.
% test:   Test structure, MxD matrix, where M is a number of points
% d:      Nx1 vector, where each element is a distance to the corresponding
%         point in the reference structure.
%         
%    
%
function d = bld(ref, test)


N = size(ref, 1);
M = size(test, 1);

dTR = zeros(M, 1); %Distance from test to reference
dTRi = zeros(M, 1);%index of reference vertex of shortest distance from test

%Find minimum distance to all points from test structure to reference 
%structure, and the other way around
d = Inf*ones(N, 1);
for i = 1:M
    curD = sqrt(sum((ref - test(i, :)).^2, 2));
    [dTR(i), dTRi(i)] = min(curD);
    d = min([d curD], [], 2);
end


%Find maximum distance where points match
for i = 1:N
    hits = dTR(dTRi == i);
    d(i) = max([d(i); hits]);
end
   
