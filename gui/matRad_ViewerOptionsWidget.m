classdef matRad_ViewerOptionsWidget < matRad_Widget
    
    properties
        
    end
    
    methods
        function this = matRad_ViewerOptionsWidget(handleParent)
            if nargin < 1
                handleParent = figure(...
                    'Units','characters',...
                    'Position',[138.4 -7.38461538461539 273.4 59.5384615384615],...
                    'Visible','on',...
                    'Color',[0.501960784313725 0.501960784313725 0.501960784313725],...   'CloseRequestFcn',@(hObject,eventdata) figure1_CloseRequestFcn(this,hObject,eventdata),...
                    'IntegerHandle','off',...
                    'Colormap',[0 0 0.5625;0 0 0.625;0 0 0.6875;0 0 0.75;0 0 0.8125;0 0 0.875;0 0 0.9375;0 0 1;0 0.0625 1;0 0.125 1;0 0.1875 1;0 0.25 1;0 0.3125 1;0 0.375 1;0 0.4375 1;0 0.5 1;0 0.5625 1;0 0.625 1;0 0.6875 1;0 0.75 1;0 0.8125 1;0 0.875 1;0 0.9375 1;0 1 1;0.0625 1 1;0.125 1 0.9375;0.1875 1 0.875;0.25 1 0.8125;0.3125 1 0.75;0.375 1 0.6875;0.4375 1 0.625;0.5 1 0.5625;0.5625 1 0.5;0.625 1 0.4375;0.6875 1 0.375;0.75 1 0.3125;0.8125 1 0.25;0.875 1 0.1875;0.9375 1 0.125;1 1 0.0625;1 1 0;1 0.9375 0;1 0.875 0;1 0.8125 0;1 0.75 0;1 0.6875 0;1 0.625 0;1 0.5625 0;1 0.5 0;1 0.4375 0;1 0.375 0;1 0.3125 0;1 0.25 0;1 0.1875 0;1 0.125 0;1 0.0625 0;1 0 0;0.9375 0 0;0.875 0 0;0.8125 0 0;0.75 0 0;0.6875 0 0;0.625 0 0;0.5625 0 0],...
                    'MenuBar','none',...
                    'Name','matRadGUI',...
                    'NumberTitle','off',...
                    'HandleVisibility','callback',...
                    'Tag','figure1',...
                    'PaperSize',[20.99999864 29.69999902]);
                
            end
            this = this@matRad_Widget(handleParent);
        end
        
    end
    
    methods (Access = protected)
        function this = createLayout(this)
            h98 = this.widgetHandle;
            
            h84 = uicontrol(...
                'Parent',h98,...
                'Units','normalized',...
                'String','min value:',...
                'Style','text',...
                'Position',[0.001 0.9 0.6 0.05],...
                'BackgroundColor',[0.501960784313725 0.501960784313725 0.501960784313725],...
                'Children',[],...
                'Tag','text24',...
                'FontSize',10,...
                'FontWeight','bold' );

            h116 = uicontrol(...
                'Parent',h98,...
                'Units','normalized',...
                'String','max value:',...
                'Style','text',...
                'Position',[0.001 0.82 0.6 0.05],...
                'BackgroundColor',[0.501960784313725 0.501960784313725 0.501960784313725],...
                'Children',[],...
                'Tag','text39',...
                'FontSize',10,...
                'FontWeight','bold' );

            h85 = uicontrol(...
                'Parent',h98,...
                'Units','normalized',...
                'String','Set IsoDose Levels',...
                'Position',[0.05 0.73 0.85 0.06],...
                'BackgroundColor',[0.8 0.8 0.8],...
                'Callback',@(hObject,eventdata)matRadGUI('btnSetIsoDoseLevels_Callback',hObject,eventdata,guidata(hObject)),...
                'Children',[],...
                'Tag','btnSetIsoDoseLevels');

            % 
            % h117 = uicontrol(...
            %     'Parent',h1,...
            %     'Units','normalized',...
            %     'FontUnits',get(0,'defaultuicontrolFontUnits'),...
            %     'String','-',...
            %     'Style','text',...
            %     'Position',[0.955789804908748 0.879908972691808 0.0271397105097546 0.0160598179453836],...
            %     'BackgroundColor',[0.501960784313725 0.501960784313725 0.501960784313725],...
            %     'Children',[],...
            %     'Tag','txtMinVal',...
            %     'FontSize',10,...
            %     'FontWeight','bold',...
            %     'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );
             
            
            % h118 = uicontrol(...
            %     'Parent',h1,...
            %     'Units','normalized',...
            %     'FontUnits',get(0,'defaultuicontrolFontUnits'),...
            %     'String','-',...
            %     'Style','text',...
            %     'Position',[0.955789804908748 0.863003901170351 0.0271397105097546 0.0177503250975293],...
            %     'BackgroundColor',[0.501960784313725 0.501960784313725 0.501960784313725],...
            %     'Children',[],...
            %     'Tag','txtMaxVal',...
            %     'FontSize',10,...
            %     'FontWeight','bold',...
            %     'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );
            
        h99 = uicontrol(...
            'Parent',h98,...
            'Units','normalized',...
            'HorizontalAlignment','left',...
            'String','Window Center:',...
            'Style','text',...
            'Position',[0.0466666666666666 0.442461750109027 0.673333333333333 0.0559999999999998],...
            'Children',[],...
            'Tag','text_windowCenter' );

        h100 = uicontrol(...
            'Parent',h98,...
            'Units','normalized',...
            'HorizontalAlignment','left',...
            'String','Dose opacity:',...
            'Style','text',...
            'Position',[0.0466666666666667 0.0506370831711431 0.847328244274809 0.0514285714285714],...
            'Children',[],...
            'Tag','textDoseOpacity' );


        h101 = uicontrol(...
            'Parent',h98,...
            'Units','normalized',...
            'String',{  'None'; 'CT (ED)'; 'Dose' },...
            'Style','popupmenu',...
            'Value',1,...
            'Position',[0.0486486486486487 0.593328859060403 0.940540540540541 0.10744966442953],...
            'BackgroundColor',[1 1 1],...
            'Callback',@(hObject,eventdata)popupmenu_chooseColorData_Callback(this,hObject,eventdata),...
            'Children',[],...
            'Tag','popupmenu_chooseColorData');


        h102 = uicontrol(...
            'Parent',h98,...
            'Units','normalized',...
            'SliderStep',[0.01 0.05],...
            'String','slider',...
            'Style','slider',...
            'Value',0.5,...
            'Position',[0.0432432432432432 0.39758389261745 0.697297297297297 0.0436912751677853],...
            'BackgroundColor',[0.9 0.9 0.9],...
            'Callback',@(hObject,eventdata)slider_windowCenter_Callback(this,hObject,eventdata),...
            'Children',[],...
            'Tag','slider_windowCenter');


        h103 = uicontrol(...
            'Parent',h98,...
            'Units','normalized',...
            'HorizontalAlignment','left',...
            'String','Window Width:',...
            'Style','text',...
            'Position',[0.0466666666666667 0.345761302394105 0.673333333333333 0.050000000000001],...
            'Children',[],...
            'Tag','text_windowWidth');


        h104 = uicontrol(...
            'Parent',h98,...
            'Units','normalized',...
            'String','Choose Colormap...',...
            'Style','popupmenu',...
            'Value',1,...
            'Position',[0.0362903225806452 0.158843516266481 0.939516129032258 0.0644686648501362],...
            'BackgroundColor',[1 1 1],...
            'Callback',@(hObject,eventdata)popupmenu_chooseColormap_Callback(this,hObject,eventdata),...
            'Children',[],...
            'Tag','popupmenu_chooseColormap');


        h105 = uicontrol(...
            'Parent',h98,...
            'Units','normalized',...
            'HorizontalAlignment','left',...
            'String','Range:',...
            'Style','text',...
            'Position',[0.0403225806451613 0.237807911050966 0.274193548387097 0.0508446866485015],...
            'Children',[],...
            'Tag','text_windowRange' );



        h106 = uicontrol(...
            'Parent',h98,...
            'Units','normalized',...
            'String','0 1',...
            'Style','edit',...
            'Position',[0.323863636363636 0.237807911050966 0.653409090909091 0.0557395498392283],...
            'BackgroundColor',[1 1 1],...
            'Callback',@(hObject,eventdata)edit_windowRange_Callback(this,hObject,eventdata),...
            'Children',[],...
            'Tag','edit_windowRange');



        h107 = uicontrol(...
            'Parent',h98,...
            'Units','normalized',...
            'String','0.5',...
            'Style','edit',...
            'Value',1,...
            'Position',[0.767567567567568 0.39758389261745 0.205405405405405 0.0604697986577181],...
            'BackgroundColor',[1 1 1],...
            'Callback',@(hObject,eventdata)edit_windowCenter_Callback(this,hObject,eventdata),...
            'Children',[],...
            'Tag','edit_windowCenter');

        h108 = uicontrol(...
            'Parent',h98,...
            'Units','normalized',...
            'String','1.0',...
            'Style','edit',...
            'Position',[0.772727272727273 0.298256759964609 0.204545454545455 0.0507395498392284],...
            'BackgroundColor',[1 1 1],...
            'Callback',@(hObject,eventdata)edit_windowWidth_Callback(this,hObject,eventdata),...
            'Children',[],...
            'Tag','edit_windowWidth');


        h109 = uicontrol(...
            'Parent',h98,...
            'Units','normalized',...
            'SliderStep',[0.01 0.05],...
            'String','slider',...
            'Style','slider',...
            'Value',0.6,...
            'Position',[0.147727272727273 0.0057234726688103 0.75 0.0446623794212219],...
            'BackgroundColor',[0.9 0.9 0.9],...
            'Callback',@(hObject,eventdata)sliderOpacity_Callback(this,hObject,eventdata),...
            'Children',[],...
            'Tag','sliderOpacity');


        h110 = uicontrol(...
            'Parent',h98,...
            'Units','normalized',...
            'HorizontalAlignment','left',...
            'String','0',...
            'Style','text',...
            'Position',[0.0466666666666666 0.00599285798906697 0.0810810810810811 0.042463768115942],...
            'Children',[],...
            'Tag','txtDoseOpacity0Indicator',...
            'UserData',[],...
            'FontName','Helvetica');


        h111 = uicontrol(...
            'Parent',h98,...
            'Units','normalized',...
            'HorizontalAlignment','right',...
            'String','1',...
            'Style','text',...
            'Position',[0.8963482566536 0.0064864051690258 0.0810810810810811 0.042463768115942],...
            'Children',[],...
            'Tag','txtDoseOpacity1Indicator' );



        h112 = uicontrol(...
            'Parent',h98,...
            'Units','normalized',...
            'HorizontalAlignment','left',...
            'String','Window Presets N/A',...
            'Style','text',...
            'Position',[0.0540540540540541 0.570281879194631 0.797297297297297 0.0594697986577181],...
            'Children',[],...
            'Tag','text_windowPreset' );

        % IS NOT SHOWN IN THE WIDGET??????
        h113 = uicontrol(...
            'Parent',h98,...
            'Units','normalized',...
            'String',{  'Custom'; 'Full'; 'Abd/Med'; 'Head'; 'Liver'; 'Lung'; 'Spine'; 'Vrt/Bone' },...
            'Style','popupmenu',...
            'Value',1,...
            'Position',[0.0486486486486487 0.38889932885906 0.940540540541 0.17744966442953],...
            'BackgroundColor',[1 1 1],...
            'Callback',@(hObject,eventdata)popupmenu_windowPreset_Callback(this,hObject,eventdata),...
            'Children',[],...
            'Visible','on',... % Default should be off!
            'Tag','popupmenu_windowPreset');


        h114 = uicontrol(...
            'Parent',h98,...
            'Units','normalized',...
            'SliderStep',[0.01 0.05],...
            'String','slider',...
            'Style','slider',...
            'Value',1,...
            'Position',[0.0454545454545455 0.29740507995425 0.698863636363636 0.0446623794212219],...
            'BackgroundColor',[0.9 0.9 0.9],...
            'Callback',@(hObject,eventdata)slider_windowWidth_Callback(this, hObject, eventdata),...
            'Children',[],...
            'Tag','slider_windowWidth');


        h115 = uicontrol(...
            'Parent',h98,...
            'Units','normalized',...
            'String','Lock Settings',...
            'Style','checkbox',...
            'Position',[0.0486486486486487 0.111006711409396 0.940540540540541 0.0338926174496644],...
            'BackgroundColor',[0.502 0.502 0.502],...
            'Callback',@(hObject,eventdata)checkbox_lockColormap_Callback(this,hObject,eventdata),...
            'Children',[],...
            'Tag','checkbox_lockColormap' );

        end
        
    end
    
    methods
        
        % H101
        function popupmenu_chooseColorData_Callback(hObject, eventdata, handles)
            % hObject    handle to popupmenu_chooseColorData (see GCBO)
            % eventdata  reserved - to be defined in a future version of MATLAB
            % handles    structure with handles and user data (see GUIDATA)
            
            % Hints: contents = cellstr(get(hObject,'String')) returns popupmenu_chooseColorData contents as cell array
            %        contents{get(hObject,'Value')} returns selected item from popupmenu_chooseColorData
            
            %index = get(hObject,'Value') - 1;
            handles = this.handles;
            
            handles.cBarChanged = true;
            
            %guidata(hObject,handles);
            this.handles = handles;
            UpdatePlot(handles);
        end

        % H102
        function slider_windowCenter_Callback(this, hObject, event)
            % hObject    handle to slider_windowCenter (see GCBO)
            % eventdata  reserved - to be defined in a future version of MATLAB
            % handles    structure with handles and user data (see GUIDATA)
            
            % Hints: get(hObject,'Value') returns position of slider
            %        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
            handles = this.handles
            
            newCenter      = get(hObject,'Value');
            range          = get(handles.slider_windowWidth,'Value');
            selectionIndex = get(handles.popupmenu_chooseColorData,'Value');
            
            handles.dispWindow{selectionIndex,1}  = [newCenter-range/2 newCenter+range/2];
            handles.cBarChanged = true;
            
            % guidata(hObject,handles);
            this.handles = handles;
            UpdatePlot(handles);
        end
        
        % H 104
        function popupmenu_chooseColormap_Callback(hObject, eventdata, handles)
            % hObject    handle to popupmenu_chooseColormap (see GCBO)
            % eventdata  reserved - to be defined in a future version of MATLAB
            % handles    structure with handles and user data (see GUIDATA)
            
            % Hints: contents = cellstr(get(hObject,'String')) returns popupmenu_chooseColormap contents as cell array
            %        contents{get(hObject,'Value')} returns selected item from popupmenu_chooseColormap
            
            handles = this.handles;
            
            index = get(hObject,'Value');
            strings = get(hObject,'String');
            
            selectionIndex = get(handles.popupmenu_chooseColorData,'Value');
            
            switch selectionIndex
                case 2
                    handles.ctColorMap = strings{index};
                case 3
                    handles.doseColorMap = strings{index};
                otherwise
            end
            
            handles.cBarChanged = true;
            
            this.handles = handles;
            %guidata(hObject,handles);
            UpdatePlot(handles);
        end
        
        % H106
        function edit_windowRange_Callback(hObject, eventdata, handles)
            % hObject    handle to edit_windowRange (see GCBO)
            % eventdata  reserved - to be defined in a future version of MATLAB
            % handles    structure with handles and user data (see GUIDATA)
            
            % Hints: get(hObject,'String') returns contents of edit_windowRange as text
            %        str2double(get(hObject,'String')) returns contents of edit_windowRange as a double
            
            handles = this.handles;
            
            selectionIndex = get(handles.popupmenu_chooseColorData,'Value');
            vRange         = str2num(get(hObject,'String'));
            % matlab adds a zero in the beginning when text field is changed
            if numel(vRange) == 3
                vRange = vRange(vRange~=0);
            end
            
            handles.dispWindow{selectionIndex,1} = sort(vRange);
            
            handles.cBarChanged = true;
            
            % compute new iso dose lines
            if selectionIndex > 2
                guidata(hObject,handles);
                handles = updateIsoDoseLineCache(handles);
            end
            
            this.handles = handles;
            %guidata(hObject,handles);
            UpdatePlot(handles);
        end
        
        % H107
        function edit_windowCenter_Callback(hObject, eventdata, handles)
            % hObject    handle to edit_windowCenter (see GCBO)
            % eventdata  reserved - to be defined in a future version of MATLAB
            % handles    structure with handles and user data (see GUIDATA)
            
            % Hints: get(hObject,'String') returns contents of edit_windowCenter as text
            %        str2double(get(hObject,'String')) returns contents of edit_windowCenter as a double
            
            handles = this.handles;
            
            newCenter           = str2double(get(hObject,'String'));
            width               = get(handles.slider_windowWidth,'Value');
            selectionIndex      = get(handles.popupmenu_chooseColorData,'Value');
            handles.dispWindow{selectionIndex,1}  = [newCenter-width/2 newCenter+width/2];
            handles.cBarChanged = true;
            
            this.handles = handles;
            % guidata(hObject,handles);
            UpdatePlot(handles);
        end
        
        % H108
        function edit_windowWidth_Callback(hObject, eventdata, handles)
            % hObject    handle to edit_windowWidth (see GCBO)
            % eventdata  reserved - to be defined in a future version of MATLAB
            % handles    structure with handles and user data (see GUIDATA)
            
            % Hints: get(hObject,'String') returns contents of edit_windowWidth as text
            %        str2double(get(hObject,'String')) returns contents of edit_windowWidth as a double
            handles = this.handles;
            
            newWidth            = str2double(get(hObject,'String'));
            center              = get(handles.slider_windowCenter,'Value');
            selectionIndex      = get(handles.popupmenu_chooseColorData,'Value');
            handles.dispWindow{selectionIndex,1}  = [center-newWidth/2 center+newWidth/2];
            handles.cBarChanged = true;
            
            this.handles = handles;
            % guidata(hObject,handles);
            UpdatePlot(handles);
        end
        
        % H109
        function sliderOpacity_Callback(hObject, eventdata, handles)
            % hObject    handle to sliderOpacity (see GCBO)
            % eventdata  reserved - to be defined in a future version of MATLAB
            % handles    structure with handles and user data (see GUIDATA)
            handles = this.handles;
            
            handles.doseOpacity = get(hObject,'Value');
            
            this.handles = handles;
            % guidata(hObject,handles);
            UpdatePlot(handles);
            
            
        end
        
         % H113
        function popupmenu_windowPreset_Callback(this, hObject, event)
            % hObject    handle to popupmenu_windowPreset (see GCBO)
            % eventdata  reserved - to be defined in a future version of MATLAB
            % handles    structure with handles and user data (see GUIDATA)
            
            % Hints: contents = cellstr(get(hObject,'String')) returns popupmenu_windowPreset contents as cell array
            %        contents{get(hObject,'Value')} returns selected item from popupmenu_windowPreset
            handles = this.handles;
            
            selectionIndexCube      = 2; % working on ct only
            selectionIndexWindow    = get(handles.popupmenu_windowPreset,'Value');
            newCenter               = handles.windowPresets(selectionIndexWindow).center;
            newWidth                = handles.windowPresets(selectionIndexWindow).width;
            
            handles.dispWindow{selectionIndexCube,1}  = [newCenter - newWidth/2 newCenter + newWidth/2];
            handles.cBarChanged = true;
            % guidata(hObject,handles);
            this.handles = handles;
            UpdatePlot(handles);
            UpdateColormapOptions(handles);
        end
        
        % H114
        function slider_windowWidth_Callback(hObject, eventdata, handles)
            % hObject    handle to slider_windowWidth (see GCBO)
            % eventdata  reserved - to be defined in a future version of MATLAB
            % handles    structure with handles and user data (see GUIDATA)
            
            % Hints: get(hObject,'Value') returns position of slider
            %        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
            
            handles = this.handles;
            newWidth = get(hObject,'Value');
            center   = get(handles.slider_windowCenter,'Value');
            selectionIndex                        = get(handles.popupmenu_chooseColorData,'Value');
            handles.dispWindow{selectionIndex,1}  = [center-newWidth/2 center+newWidth/2];
            handles.cBarChanged = true;
            
            % guidata(hObject,handles);
            this.handles = handles;
            UpdatePlot(handles);
        end
        
        % H115 Callback
        function checkbox_lockColormap_Callback(this, hObject, event)
            % hObject    handle to checkbox_lockColormap (see GCBO)
            % eventdata  reserved - to be defined in a future version of MATLAB
            % handles    structure with handles and user data (see GUIDATA)
            
            % Hint: get(hObject,'Value') returns toggle state of checkbox_lockColormap
            
            handles = this.handles;
            handles.colormapLocked = get(hObject,'Value');
            
            if handles.colormapLocked
                state = 'Off'; %'Inactive';
            else
                state = 'On';
            end
            
            set(handles.popupmenu_chooseColorData,'Enable',state);
            set(handles.popupmenu_windowPreset,'Enable',state);
            set(handles.slider_windowWidth,'Enable',state);
            set(handles.slider_windowCenter,'Enable',state);
            set(handles.edit_windowWidth,'Enable',state);
            set(handles.edit_windowCenter,'Enable',state);
            set(handles.edit_windowRange,'Enable',state);
            set(handles.popupmenu_chooseColormap,'Enable',state);
            
            this.handles = handles;
            % guidata(hObject,handles);
        end
        
        % button: set iso dose levels
        function btnSetIsoDoseLevels_Callback(hObject, eventdata, handles)
            handles = this.handles;
            prompt = {['Enter iso dose levels in [Gy]. Enter space-separated numbers, e.g. 1.5 2 3 4.98. Enter 0 to use default values']};
            if isequal(handles.IsoDose.Levels,0) || ~isvector(handles.IsoDose.Levels) || any(~isnumeric(handles.IsoDose.Levels)) || any(isnan(handles.IsoDose.Levels))
                defaultLine = {'1 2 3 '};
            else
                if isrow(handles.IsoDose.Levels)
                    defaultLine = cellstr(num2str(handles.IsoDose.Levels,'%.2g '));
                else
                    defaultLine = cellstr(num2str(handles.IsoDose.Levels','%.2g '));
                end
            end
            
            try
                Input = inputdlg(prompt,'Set iso dose levels ', [1 70],defaultLine);
                if ~isempty(Input)
                    handles.IsoDose.Levels = (sort(str2num(Input{1})));
                    if length(handles.IsoDose.Levels) == 1 && (handles.IsoDose.Levels(1) ~= 0)
                        handles.IsoDose.Levels = [handles.IsoDose.Levels handles.IsoDose.Levels];
                    end
                    handles.IsoDose.NewIsoDoseFlag = true;
                end
            catch
                warning('Couldnt parse iso dose levels - using default values');
                handles.IsoDose.Levels = 0;
            end
            handles = updateIsoDoseLineCache(handles);
            handles.IsoDose.NewIsoDoseFlag = false;
            %UpdatePlot(handles);
            %guidata(hObject,handles);
            this.handles = handles;
        end
    end
    
end

