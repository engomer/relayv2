function y = WORConstructor(TSlot,Length,MaxPreamble,WORType,WORDR)
    arr1 = zeros(1,MaxPreamble);
    arr1(1,TSlot:Length-1) = 1;
    if WORType == "join"
        WORHeader = zeros(1,8);
        WORHeader(1,8) = 0;
        WORPayload = zeros(1,32);
        WORPayload(1,5:8) = int2bit(WORDR,4,true);

    elseif WORType == "uplink"
        WORHeader = zeros(1,8);
        WORHeader(1,8) = 1;
    end
    y.preamble = arr1;
    y.header = WORHeader;
    y.payload = WORPayload;
end