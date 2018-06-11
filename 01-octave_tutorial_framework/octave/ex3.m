% Exercise 3: Homogeneous transformations

% Ex 3.a

function t = v2t(v)
    % takes as input the vector form of the robot  
    % pose and outputs the corresponding 
    % homogeneous transformation.

    t = eye(3);

    x = v(1); y = v(2); th = v(3);

    t(1,1) = cos(th);
    t(1,2) = -sin(th);
    t(1,3) = x;

    t(2,1) = sin(th);
    t(2,2) = cos(th);
    t(2,3) = y;
    
end

function v = t2v(t)
    % takes as input a homogeneous transformation 
    % representing the robot pose in 2-D space and 
    % outputs the corresponding compact vector.

    x = t(1,3); y = t(2,3); th = atan2(t(2,1), t(1,1));
    
    v = [x; y; th];
end

% Ex 3.b 
% Given two robot pose vectors, how do you get the 
% relative transformation?
% simplifying the motion model equations

% Ex 3.c
% convert x_t to homogeneous matrix and multiply