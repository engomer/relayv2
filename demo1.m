%%% FRESHDATA RELAYV2.0 Simulation
%%% This code includes new WOR approach to test the relay listens all 8
%%% chhanels instead of 1 channel
%%% CADPeriodicity is taken as 1000msec
MaxPreambleLength = 1000; %1 sec max preamble
NumOfChannels = 8; %Number of channels
CADToRx = 110; %CAD to rx windows change time 
%%%
% Initialize a CAD array to schedule the listening time of the relay
% equally distributed to the channels
CAD = zeros(NumOfChannels,MaxPreambleLength);
CADSize_PerChannel = 100;
GuardBandSize = 25;

CAD(1, 1:100) = 1;
CAD(2, 125:225) = 1;
CAD(3, 250:350) = 1;
CAD(4, 375:475) = 1;
CAD(5, 500:600) = 1;
CAD(6, 625:725) = 1;
CAD(7, 750:850) = 1;
CAD(8, 875:975) = 1;

%%%


