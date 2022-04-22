classdef PoLC
    % Point of Local Coupling class definition
    % Define parameters and behaviour of prosumer PoLC
    
    properties
        id      % PoLC ID
        l       % Load curve vector
        ST      % Load curve sample time
        Uct     % Uncertainty [0...1]
        Uct_sd  % Uncertainty seed  
        % m_l   % Current load power value
    end
    
    methods
        % Object constructor
        function obj = PoLC(name, loadCurve, load_st, uct, uct_seed)
            % Prosumer PoLC instance construction
            obj.id = name ;
            obj.l = loadCurve ;
            
            % Check if load sampling time value is passed
            if ~exist('load_st','var')
                load_st = evalin('base', 'prsmr_sT');
            end
            obj.ST = load_st ;
            
            % Check if uncertainty value is passed
            if ~exist('uct','var')
                uct = 0.0001;
            end
            obj.Uct = uct ;
                        
            % Check if uncertainty seed value is passed
            if ~exist('uct_seed','var')
                rng('shuffle');
                r = randi([1 32767],1,1);
                uct_seed = r;
            end
            obj.Uct_sd = uct_seed ;
                        
        end
        
        function outputArg = method1(obj,inputArg)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            outputArg = obj.Property1 + inputArg;
        end
    end
end

