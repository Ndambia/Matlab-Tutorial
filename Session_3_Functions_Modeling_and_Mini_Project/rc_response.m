function vc = rc_response(t, R, C, Vin)
%RC_RESPONSE RC charging response
%   vc = rc_response(t, R, C, Vin)
%   returns the capacitor voltage for a charging RC circuit:
%   vc(t) = Vin * (1 - exp(-t / (R*C)))

tau = R * C;
vc = Vin * (1 - exp(-t ./ tau));
end
