function y = NodeConstructor(DevEUI,WORDR,Freq,WORTSlot,WORLength,WORType,MaxPreamble)
    y.address = DevEUI;
    y.Freq = Freq;
    y.WOR = WORConstructor(WORTSlot,WORLength,MaxPreamble,WORType,WORDR);
end