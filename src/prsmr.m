classdef prsmr
    % Prosumer class definition
    % Define parameters and behaviour of prosumer
    
    properties
        ID          % Prosumer ID
        PoLC1       % Point of Local Coupling #1
        PoLC2       % Point of Local Coupling #2
        PoLC3       % Point of Local Coupling #3
        PoLC4       % Point of Local Coupling #4
        PoLC5       % Point of Local Coupling #5
        PoLC6       % Point of Local Coupling #6
        PoLC7       % Point of Local Coupling #7
        PoLC8       % Point of Local Coupling #8
        PoLC9       % Point of Local Coupling #9
        PoLC10      % Point of Local Coupling #10
        PoLC11      % Point of Local Coupling #11
        PoLC12      % Point of Local Coupling #12
        PoLC13      % Point of Local Coupling #13
        PoLC14      % Point of Local Coupling #14
        PoLC15      % Point of Local Coupling #15
        PoLC16      % Point of Local Coupling #16
    end
    
    methods
        function obj = prsmr(name)
            % Construct an instance of this class
            obj.ID = name ;
            obj.PoLC1 = PoLC('PoLC1', [10 50 -30 -10 25 -20]); 
            obj.PoLC2 = PoLC('PoLC2', [10 50 -30 -10 25 -20]);  
            obj.PoLC3 = PoLC('PoLC3', [10 50 -30 -10 25 -20]);  
            obj.PoLC4 = PoLC('PoLC4', [10 50 -30 -10 25 -20]);  
            obj.PoLC5 = PoLC('PoLC5', [10 50 -30 -10 25 -20]);  
            obj.PoLC6 = PoLC('PoLC6', [10 50 -30 -10 25 -20]);  
            obj.PoLC7 = PoLC('PoLC7', [10 50 -30 -10 25 -20]);  
            obj.PoLC8 = PoLC('PoLC8', [10 50 -30 -10 25 -20]);  
            obj.PoLC9 = PoLC('PoLC9', [10 50 -30 -10 25 -20]);  
            obj.PoLC10 = PoLC('PoLC10', [10 50 -30 -10 25 -20]);  
            obj.PoLC11 = PoLC('PoLC11', [10 50 -30 -10 25 -20]);  
            obj.PoLC12 = PoLC('PoLC12', [10 50 -30 -10 25 -20]);  
            obj.PoLC13 = PoLC('PoLC13', [10 50 -30 -10 25 -20]);  
            obj.PoLC14 = PoLC('PoLC14', [10 50 -30 -10 25 -20]);  
            obj.PoLC15 = PoLC('PoLC15', [10 50 -30 -10 25 -20]);  
            obj.PoLC16 = PoLC('PoLC16', [10 50 -30 -10 25 -20]);  
        end
        
        function outputArg = method1(obj,inputArg)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            outputArg = obj.Property1 + inputArg;
        end     
       
    end
end

