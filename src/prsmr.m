classdef prsmr
    % Prosumer class definition
    % Define parameters and behaviour of prosumer
    
    properties
        ID           % Prosumer ID
        PoLC
        PCC_cap      % PCC capacity
        eff          % Prosumer internal efficiency
    end
    
    methods
        function obj = prsmr(name, capacity, effGain)
            % Construct an instance of this class
            obj.ID = name ;
            obj.PoLC = PoLC('PoLC', zeros(2, 5)); 

            % Check if capacity value is passed
            if ~exist('capacity','var')
                capacity = 1000000; % default PCC capacity to 1 M
            end
            obj.PCC_cap = capacity ;

            % Check if efficiency gain value is passed
            if ~exist('effGain','var')
                effGain = 1;
            end
            obj.eff = effGain;
        end
        
        function outputArg = method1(obj,inputArg)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            outputArg = obj.Property1 + inputArg;
        end     
       
    end
end

