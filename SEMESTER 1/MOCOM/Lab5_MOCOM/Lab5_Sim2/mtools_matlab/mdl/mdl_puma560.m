%% PUMA 560 - Robot definition

clear B 
B(1) = mBody(0,[  0     0       0   0     ], 'm', 0,    'cg', [0     0     0    ]', 'I', [ .0      .0      .35    0 0 0], 'Fc', 0.00) ;
B(2) = mBody(1,[ -pi/2  0       0   .2435 ], 'm', 17.4, 'cg', [.068  .006 -.016 ]', 'I', [ .13     .524    .539   0 0 0], 'Fc', 0.00) ;
B(3) = mBody(2,[  0     .4318   0  -.0934 ], 'm', 4.8,  'cg', [0    -.07   .014 ]', 'I', [ .066    .0125   .066   0 0 0], 'Fc', 0.00) ;
B(4) = mBody(3,[  pi/2  -.0203  0   .4331 ], 'm', .82,  'cg', [0     0    -.019 ]', 'I', [1.8e-3  1.8e-3  1.3e-3  0 0 0], 'Fc', 0.00) ;
B(5) = mBody(4,[ -pi/2  0       0   0     ], 'm', .34,  'cg', [0     0     0   ]', 'I', [ .3e-3   .3e-3   .4e-3  0 0 0], 'Fc', 0.00) ;
B(6) = mBody(5,[  pi/2  0       0   0     ], 'm', .09,  'cg', [0     0     .032 ]', 'I', [ .15e-3  .15e-3  .04e-3 0 0 0], 'Fc', 0.00) ;


clear puma560
puma560 = mArticulatedBody(B, 'name', 'Puma560') ; 

qz = zeros(6,1) ;