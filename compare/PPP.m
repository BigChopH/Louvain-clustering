%%% Part1 %%%
function Location=PPP(Lambda,L)
%Lambda = 100;  
u = unifrnd(0,1);
M = 0;
while u >= exp(-Lambda)%�ж�����
    u = u*unifrnd(0,1);
    M=M+1;
end 
    %ȡ�����
R = poissrnd(Lambda,1,M) ;

%%% Part2 %%%
a = 0; c = 0;
b = L; d =L;     %ȡ[0,100]*[0,100]�Ĳ�������
Nall = M;
% A = [];
% B = [];
while M > 0         %scatter in the [0,100]*[0,100]
    M = M-1;
    u1 = unifrnd(0,1);
    A(Nall-M) = (b-a)*u1;
    u2 = unifrnd(0,1);
    B(Nall-M) = (d-c)*u2;
    %u3 = unifrnd(0,1);
    % C(Nall-M) = (f-e)*u3;
 %   figure(1)    %base stations �ֲ�ͼ
   % plot3(A(Nall-M),B(Nall-M),C(Nall-M),'r^');
    %hold on;
 %   plot(A(Nall-M),B(Nall-M),'b.')
  %  hold on
end
%grid on
%hold off
Location=cat(1,A,B);
