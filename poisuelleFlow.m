% Function to solve the prescribe a Poisuelle flow across the channel entry.

function [Uflow] = poisuelleFlow(nTemp1,U02)

    Uflow = zeros(nTemp1,2); % Preallocate an output array
    Uflow(1:nTemp1/2,2) = U02*(1 - (nTemp1/2:-1:1).^2/((nTemp1/2)^2)); % Calculate the flow profile across half the channel
    Uflow(1+nTemp1/2:end,2) = flip(Uflow(1:nTemp1/2,2)); % Flip the first half
    % quiver(Uflow(:,1),Uflow(:,2)); % (optional: plotter)

end

