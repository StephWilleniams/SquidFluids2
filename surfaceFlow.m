function [Uflow] = surfaceFlow(nTemp1,rot1)

    Uflow = zeros(nTemp1,2);

    magnitude = zeros(nTemp1,1);
    indRange = floor(0.75*nTemp1);

    theta = linspace(0,2*pi,indRange+1);
    theta = theta(1:end-1);

    magnitude(1:indRange) = sin(theta);
    magnitude = rotateArray(magnitude,rot1);

    theta = linspace(0,2*pi,nTemp1+1);
    theta = theta(1:end-1);

    Uflow = magnitude.*[-cos(theta'),sin(theta')];

    % Uflow(:,1) = Uflow(:,1) - mean(Uflow(:,1));
    % Uflow(:,2) = Uflow(:,2) - mean(Uflow(:,2));

    Uflow(:,1) = Uflow(:,1);
    Uflow(:,2) = Uflow(:,2);

end

