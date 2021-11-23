classdef PoLC
    % Point of Local Coupling class definition
    % Define parameters and behaviour of prosumer PoLC
    
    properties
        id      % PoLC ID
        l       % Load curve vector
        ST      % Load curve sample time
        Noise   % Noise amplitude
        NoiseST % Noise sampling time
        NoiseSD % Noise seed        
    end
    
    methods
        function obj = PoLC(name, loadCurve, load_st, amp, noise_st, seed)
            % Prosumer PoLC instance construction
            obj.id = name ;
            obj.l = loadCurve ;
            
            % Check if load sampling time value is passed
            if ~exist('load_st','var')
                load_st = evalin('base', 'prsmr_sT');
            end
            obj.ST = load_st ;
            
            % Check if noise amplitude value is passed
            if ~exist('amp','var')
                amp = 0.0001;
            end
            obj.Noise = amp ;
            
            % Check if noise sampling time value is passed
            if ~exist('noise_st','var')
                noise_st = 0.001;
            end
            obj.NoiseST = noise_st ;
            
            % Check if noise seed value is passed
            if ~exist('seed','var')
                rng('shuffle');
                r = randi([1 32767],1,1);
                seed = r;
            end
            obj.NoiseSD = seed ;
            
        end
        
        function outputArg = method1(obj,inputArg)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            outputArg = obj.Property1 + inputArg;
        end
    end
end

