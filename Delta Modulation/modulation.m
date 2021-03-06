function [mq]=modulation(Input,delta)
for n=1:length(Input)
    if n==1
        e(n) = Input(n);
        eq(n) = delta*sign(n);
        mq(n) = eq(n);
    else 
        e(n) = Input(n)-mq(n-1);
        eq(n) = delta*sign(e(n));
        mq(n) = mq(n-1)+eq(n);
    end

end
end