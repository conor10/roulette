function [ bets ] = choose_bet( )
%CHOOSE_BET Make a random selection of numbers to bet on
%   This is an approximation of real moves - we don't verify for instance
%   that a choice of three numbers are in sequence.
    choices = [1, 2, 3, 4, 6, 12, 18];
    available = linspace(0, 36, 37);
    
    choice_idx = round(rand * (length(choices) - 1)) + 1;
    count = choices(choice_idx);

    bets = [];
    for i = 1:count
        choice = round(rand * (length(available) - 1)) + 1;
        bets(end + 1) = available(choice);
        available(choice) = [];
    end;
end

