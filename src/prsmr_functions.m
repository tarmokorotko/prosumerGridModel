function prsmr_functions(in1, sys, blk) %#ok<INUSL>
% PRSMR_FUNCTIONS Summary of this function goes here
% Prosumer Dialog Callbacks
% PoLC 1
    s = join(['sPoLC',in1], '');
    sel = join(['sPoLC',in1,'sel'], '');
    v = join(['ePoLC',in1], '');
    type = string(get_param(Simulink.findBlocks(blk,'Name',v),'BlockType'));
    
    switch get_param(gcb,sel)
        case 'Disabled'
            if type ~= 'Constant' %#ok<BDSCA>
                replace_block(blk,'Name',v,'Constant','noprompt')
            end
            set_param(Simulink.findBlocks(blk,'Name',s),'Value','0');            
            set_param(Simulink.findBlocks(blk,'Name',v),'Value','0');
            set_param(Simulink.findBlocks(blk,'Name',v),'SampleTime','inf');
        %{
        case 'Profile'
            if type ~= 'Constant' %#ok<BDSCA>
                replace_block(blk,'Name',v,'Constant','noprompt')
            end
            set_param(Simulink.findBlocks(blk,'Name',s),'Value','1');
            set_param(Simulink.findBlocks(blk,'Name',v),'Value','0');            
            set_param(Simulink.findBlocks(blk,'Name',v),'SampleTime','inf');
        case 'Agent'
            if type ~= 'Constant' %#ok<BDSCA>
                replace_block(blk,'Name',v,'Constant','noprompt')
            end
            set_param(Simulink.findBlocks(blk,'Name',s),'Value','0');
            
            val = strrep(getfullname(Simulink.findBlocks(blk,'Name',v)),join([gcs,'/'],''),'');
            disp(val);
            val = join([val,'/','sp'],'');
            val = strrep(val,'ePoLC','PoLC');
            val = strrep(val,'/','.');
            disp(val);
            set_param(Simulink.findBlocks(blk,'Name',v),'Value',val);
            set_param(Simulink.findBlocks(blk,'Name',v),'SampleTime','0.1');
            %}
        case 'Internal'
            if type ~= 'Constant' %#ok<BDSCA>
                replace_block(blk,'Name',v,'Constant','noprompt')
            end
            set_param(Simulink.findBlocks(blk,'Name',s),'Value','1');
            set_param(Simulink.findBlocks(blk,'Name',v),'Value','0');
            set_param(Simulink.findBlocks(blk,'Name',v),'SampleTime','inf');
        case 'External'
            if type ~= 'Inport' %#ok<BDSCA>
                replace_block(gcb,'Name',v,'Inport','noprompt')
            end
            set_param(Simulink.findBlocks(blk,'Name',s),'Value','0');
        otherwise
            if type ~= 'Constant' %#ok<BDSCA>
                replace_block(blk,'Name',v,'Constant','noprompt')
            end
            set_param(Simulink.findBlocks(blk,'Name',s),'Value','0');
            set_param(Simulink.findBlocks(blk,'Name',v),'SampleTime','inf');
    end
end