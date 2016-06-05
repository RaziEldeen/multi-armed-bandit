function [cR,cQ]=BanditSelect(Q,meu,epsilon)
    % Q : estimated reward (Qt for all the bandits)
    % meu : the real reward for all the bandits
    numbandits = length(Q);
 if rand < epsilon % exploration!
        cQ = ceil(rand*numbandits);
        cR = randn + meu(cQ);
 else % exploitation!
        idx = find(Q==max(Q));
        m = ceil(rand*length(idx));
        cQ = idx(m);
        cR = randn + meu(cQ);
 end
end
  
