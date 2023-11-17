%% お釣りの合計額は、常に支払った金額から請求額を引いた額
%% お釣りとして渡す紙幣と硬貨は、額面が最大の紙幣から最小の硬貨になるまで徐々に小さい額面にしていく
%% 客に手渡す紙幣と硬貨を最小にする
for_all(RegisterMoney, PriceToPay, MoneyPaid) ->
    Change = cash(RegisterMoney, PriceToPay, MoneyPaid),
    sum(Change) == MoneyPaid + PriceToPay
    and
    fewest_pieces_possible(RegisterMoney, Change)