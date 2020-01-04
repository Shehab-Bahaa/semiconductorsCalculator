function varargout = semiCalculator(varargin)
% SEMICALCULATOR MATLAB code for semiCalculator.fig
%      SEMICALCULATOR, by itself, creates a new SEMICALCULATOR or raises the existing
%      singleton*.
%
%      H = SEMICALCULATOR returns the handle to a new SEMICALCULATOR or the handle to
%      the existing singleton*.
%
%      SEMICALCULATOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SEMICALCULATOR.M with the given input arguments.
%
%      SEMICALCULATOR('Property','Value',...) creates a new SEMICALCULATOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before semiCalculator_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to semiCalculator_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help semiCalculator

% Last Modified by GUIDE v2.5 19-Dec-2019 08:19:01

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @semiCalculator_OpeningFcn, ...
                   'gui_OutputFcn',  @semiCalculator_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before semiCalculator is made visible.
function semiCalculator_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to semiCalculator (see VARARGIN)

% Choose default command line output for semiCalculator
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes semiCalculator wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = semiCalculator_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popMenu.
function popMenu_Callback(hObject, eventdata, handles)
% hObject    handle to popMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popMenu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popMenu
set(handles.Temprature,'string',300);
set(handles.enterNd,'string',0);
set(handles.enterNa,'string',0);

set(handles.n0value,'string',0);
set(handles.p0value,'string',0);
set(handles.EFvalue,'string',0);
contents =cellstr(get(handles.popMenu,'string'));
pop_choice = contents(get(handles.popMenu,'value'));
if (strcmp(pop_choice,'Intrinsic silican (Si)'))
    dep_ix=1;
elseif (strcmp(pop_choice,'Doped silican (Si)'))
    dep_ix=2;
elseif (strcmp(pop_choice,'Intrinsic Germanium (Ge)'))
    dep_ix=3;
elseif (strcmp(pop_choice,'Doped Germanium (Ge)'))
    dep_ix=4;    
end

if dep_ix == 1 || dep_ix == 3
set(handles.Temprature, 'Enable', 'on' );
set(handles.text3, 'Enable', 'on' );
set(handles.text4, 'Enable', 'on' );
set(handles.text18, 'Enable', 'on' );
set(handles.calculate, 'Enable', 'on' );

set(handles.text5, 'Enable', 'off' );
set(handles.text7, 'Enable', 'off' );
set(handles.enterNd, 'Enable', 'off' );
set(handles.text6, 'Enable', 'off' );
set(handles.text8, 'Enable', 'off' );

set(handles.enterNa, 'Enable', 'off' );
set(handles.text12, 'Enable', 'off' );
set(handles.text15, 'Enable', 'off' );
set(handles.text14, 'Enable', 'off' );
set(handles.text13, 'Enable', 'off' );

else 
set(handles.calculate, 'Enable', 'on' );

set(handles.Temprature, 'Enable', 'on' );
set(handles.text3, 'Enable', 'on' );
set(handles.text4, 'Enable', 'on' );
set(handles.text18, 'Enable', 'on' );
set(handles.calculate, 'Enable', 'on' );

set(handles.text5, 'Enable', 'on' );
set(handles.text7, 'Enable', 'on' );
set(handles.enterNd, 'Enable', 'on' );
set(handles.text6, 'Enable', 'on' );
set(handles.text8, 'Enable', 'on' );

set(handles.enterNa, 'Enable', 'on' );
set(handles.text12, 'Enable', 'on' );
set(handles.text15, 'Enable', 'on' );
set(handles.text14, 'Enable', 'on' );
set(handles.text13, 'Enable', 'on' );

end    



% --- Executes during object creation, after setting all properties.
function popMenu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Temprature_Callback(hObject, eventdata, handles)
% hObject    handle to Temprature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Temprature as text
%        str2double(get(hObject,'String')) returns contents of Temprature as a double


% --- Executes during object creation, after setting all properties.
function Temprature_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Temprature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function enterNd_Callback(hObject, eventdata, handles)
% hObject    handle to enterNd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of enterNd as text
%        str2double(get(hObject,'String')) returns contents of enterNd as a double


% --- Executes during object creation, after setting all properties.
function enterNd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to enterNd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function enterNa_Callback(hObject, eventdata, handles)
% hObject    handle to enterNa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of enterNa as text
%        str2double(get(hObject,'String')) returns contents of enterNa as a double


% --- Executes during object creation, after setting all properties.
function enterNa_CreateFcn(hObject, eventdata, handles)
% hObject    handle to enterNa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in calculate.
function calculate_Callback(hObject, eventdata, handles)
% hObject    handle to calculate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

T = str2double(get(handles.Temprature,'string'));
Nd = str2double(get(handles.enterNd,'string'));
Na = str2double(get(handles.enterNa,'string'));

contents =cellstr(get(handles.popMenu,'string'));
pop_choice = contents(get(handles.popMenu,'value'));
if (strcmp(pop_choice,'Intrinsic silican (Si)'))
    dep_ix=1;
elseif (strcmp(pop_choice,'Doped silican (Si)'))
    dep_ix=2;
elseif (strcmp(pop_choice,'Intrinsic Germanium (Ge)'))
    dep_ix=3;
elseif (strcmp(pop_choice,'Doped Germanium (Ge)'))
    dep_ix=4;    
end

if dep_ix == 1
    Eg_si=1.12;
    Nv_si=(T/300)^(3/2)*1.04*(10)^(19);
    Nc_si=(T/300)^(3/2)*2.8*(10)^(19);
    Eg=Eg_si;
    Nv=Nv_si;
    Nc= Nc_si;
    ni=sqrt(Nv*Nc*exp(-Eg/(.0259*(T/300)))); 
    Efi_relativeToMidE=.5*.0259*(T/300)*log(Nv/Nc);
set(handles.n0value,'string',ni);
set(handles.p0value,'string',ni);
set(handles.EFvalue,'string',Efi_relativeToMidE);
elseif dep_ix == 2
    Eg_si=1.12;
    Nv_si=(T/300)^(3/2)*1.04*(10)^(19);
    Nc_si=(T/300)^(3/2)*2.8*(10)^(19);
    Eg=Eg_si;
    Nv=Nv_si;
    Nc= Nc_si;
    ni=sqrt(Nv*Nc*exp(-Eg/(.0259*(T/300))));    
    Efi_relativeToMidE=.5*.0259*(T/300)*log(Nv/Nc);
    
    if Nd >= Na
    n0ntype= ((Nd-Na)/2)+sqrt((((Nd-Na)/2)^(2))+((ni)^(2)));
    p0ntype= ((ni)^(2))/n0ntype;
    Efn_relativeToEfi= .0259*(T/300)*log(n0ntype/ni);
    Ef_relativeToMid_ntype=Efn_relativeToEfi+Efi_relativeToMidE;
set(handles.n0value,'string',n0ntype);
set(handles.p0value,'string',p0ntype);
set(handles.EFvalue,'string',Ef_relativeToMid_ntype);
    elseif Nd < Na
    p0ptype= ((Na-Nd)/2)+sqrt((((Na-Nd)/2)^(2))+((ni)^(2)));
    n0ptype= ((ni)^(2))/p0ptype;
    Efp_relativeToEfi= -.0259*(T/300)*log(p0ptype/ni);
    Ef_relativeToMid_ptype=Efp_relativeToEfi+Efi_relativeToMidE;
set(handles.n0value,'string',n0ptype);
set(handles.p0value,'string',p0ptype);
set(handles.EFvalue,'string',Ef_relativeToMid_ptype);    
    end
elseif dep_ix == 3
    Eg_ge=.664;
    Nv_ge=(T/300)^(3/2)*6*(10)^(18);
    Nc_ge=(T/300)^(3/2)*1.04*(10)^(19);
    Eg=Eg_ge;
    Nv=Nv_ge;
    Nc= Nc_ge;
    ni=sqrt(Nv*Nc*exp(-Eg/(.0259*(T/300)))); 
    Efi_relativeToMidE=.5*.0259*(T/300)*log(Nv/Nc);
set(handles.n0value,'string',ni);
set(handles.p0value,'string',ni);
set(handles.EFvalue,'string',Efi_relativeToMidE);
elseif dep_ix == 4
    Eg_ge=.664;
    Nv_ge=(T/300)^(3/2)*6*(10)^(18);
    Nc_ge=(T/300)^(3/2)*1.04*(10)^(19);
    Eg=Eg_ge;
    Nv=Nv_ge;
    Nc= Nc_ge;
    ni=sqrt(Nv*Nc*exp(-Eg/(.0259*(T/300)))); 
    Efi_relativeToMidE=.5*.0259*(T/300)*log(Nv/Nc);
    if Nd >= Na
    n0ntype= ((Nd-Na)/2)+sqrt((((Nd-Na)/2)^(2))+((ni)^(2)));
    p0ntype= ((ni)^(2))/n0ntype;
    Efn_relativeToEfi= .0259*(T/300)*log(n0ntype/ni);
    Ef_relativeToMid_ntype=Efn_relativeToEfi+Efi_relativeToMidE;
set(handles.n0value,'string',n0ntype);
set(handles.p0value,'string',p0ntype);
set(handles.EFvalue,'string',Ef_relativeToMid_ntype);
    elseif Nd < Na
    p0ptype= ((Na-Nd)/2)+sqrt((((Na-Nd)/2)^(2))+((ni)^(2)));
    n0ptype= ((ni)^(2))/p0ptype;
    Efp_relativeToEfi= -.0259*(T/300)*log(p0ptype/ni);
    Ef_relativeToMid_ptype=Efp_relativeToEfi+Efi_relativeToMidE;
set(handles.n0value,'string',n0ptype);
set(handles.p0value,'string',p0ptype);
set(handles.EFvalue,'string',Ef_relativeToMid_ptype);    

    end
end    

% si
% Eg_si=1.12;
% Nv_si=(T/300)^(3/2)*1.04*(10)^(19);
% Nc_si=(T/300)^(3/2)*2.8*(10)^(19);
% ge
% Eg_ge=.664;
% Nv_ge=(T/300)^(3/2)*6*(10)^(18);
% Nc_ge=(T/300)^(3/2)*1.04*(10)^(19);

% intrinsic formulas
% ni=sqrt(Nv*Nc*exp(-Eg/(.0259*(T/300)))); 
% Efi_relativeToMidE=.5*.0259*(T/300)*ln(Nv/Nc); 

% compensated doping
% n-type
% n0ntype= (Nd-Na/2)+sqrt(((Nd-Na/2)^(2))+((ni)^(2)));
% p0ntype= ((ni)^(2))/n0;
% Efn_relativeToEfi= .5*.0259*(T/300)*ln(n0/ni);
% Ef_relativeToMid_ntype=Efn_relativeToEfi+Efi_relativeToMidE;

% p-type
% p0ptype= (Na-Nd/2)+sqrt(((Na-Nd/2)^(2))+((ni)^(2)));
% n0ptype= ((ni)^(2))/p0;
% Efp_relativeToEfi= -.5*.0259*(T/300)*ln(p0/ni);
% Ef_relativeToMid_ptype=Efp_relativeToEfi+Efi_relativeToMidE;





function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
