iterations = 1000;
bet_size = 1;

results = round(36.*rand(iterations, 1));
pnl = (iterations);

for i = 1:iterations
    bet = choose_bet();
    if any(bet == results(i))
        pnl(i) = bet_size * (36/length(bet) - 1);
    else
        pnl(i) = -bet_size;
    end;
end;

plot(cumsum(pnl));