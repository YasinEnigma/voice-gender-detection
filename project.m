clc 
clear
close all 

%% start project 

% if you want the package installation is automatic, uncomment this lines
% only run this code if we're in Octave, not if we're in Matlab
%if exist('OCTAVE_VERSION') ~= 0
%    pkg install -forge specfun
%    pkg install -forge control
%    pkg install -forge general

    % depends on specfun, control, general
%    pkg install -forge signal
%    pkg install -forge communications 
%end


%% load packages 
pkg load signal; 
pkg load communications; 

%% Main menu
user_choice = input("\nplease enter a number between 1-3 \n1. Audio recording\n2. Audio load\n3. Exit\n\n")

%% Audio recording 
if user_choice == 1 
	% sampling frequency 
	fs = 8000;

	% number of bits for quantization 
	nbits = 16;

	% number of channels, 1 channels = mono and 2 channels = stereo 
	nchannels = 1; 

	% time duration for voice recording using microphone
	duration = 3 ;

	% create object for start voice recording 
	audio = audiorecorder(fs, nbits, nchannels);
	fprintf("\nPress any key to start %g seconds of recording…\n", duration); pause
	fprintf("\n\nRecording started ...\n\n");

	% start point for recording 
	recordblocking(audio, duration);
	fprintf("\n\nFinished recodrding\n\n")
	fprintf("\nPress any key to play the recording…\n"); pause; fprintf('\n');

	% play recorded voice
	play(audio);
	% sound(audio);

	fprintf("\n\nPlotting the waveform....\n\n");

	% convert recorded voice to matrix data 
	y = getaudiodata(audio);

	% plot recorded voice 
	figure 1, plot(y);
	
	ms2 = fs/500;
	ms20 = fs/50;

	% calculate cross correlation for y 
	r = xcorr(y, ms20, 'coeff');
	d = (-ms20:ms20)/fs;

	figure 2,plot(d,r);
	title('Autocorrelation');
	xlabel('Delay (s)');
	ylabel('Correlation coeff.');

	r = r(ms20+1:2*ms20+1);
	[rmax, tx] = max(r(ms2:ms20));
	Fx = fs/(ms2+tx-1);

	% threshold frequecy, the standard frequency for male between 85-155 and for female between 165-255
	Fth = 160;

	if Fx>Fth
		disp("\n\nIt is a female voice!\n\n")
	else
		disp("\n\nIt is a male voice\n\n")
	end 

	fprintf("\n\nPress any key to close program!\n\n"); pause

%% Audio file loading 
elseif user_choice == 2
	% input the audio path 
	audio_path = input("please enter the audio file path: \n\n","s");

	% read audio file
	[y,fs] = audioread(audio_path);

	% play the audio file 
	sound(y,fs);

	% plot the audio file diagram 
        figure 1, plot(y);

	ms2 = fs/500;
        ms20 = fs/50;

        % calculate cross correlation for y 
        r = xcorr(y, ms20, 'coeff');
        d = (-ms20:ms20)/fs;

        figure 2,plot(d,r);
        title('Autocorrelation');
        xlabel('Delay (s)');
        ylabel('Correlation coeff.');

        r = r(ms20+1:2*ms20+1);
        [rmax, tx] = max(r(ms2:ms20));
        Fx = fs/(ms2+tx-1);

        % threshold frequecy, the standard frequency for male between 85-155 and for female between 165-255
        Fth = 160;

        if Fx>Fth
                disp('It is a female voice!')
        else
                disp('It is a male voice')
        end

	fprintf("\n\nPress any key to close program!\n\n"); pause

%% Exit from program
elseif user_choice == 3
	fprintf("\n\nBye!\n\n");
	exit();

%% Invalid choice 
else 
	fprintf("\n\nInvalid input!\n\n");

endif

%% End project
