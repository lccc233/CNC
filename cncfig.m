function varargout = cncfig(varargin)
% CNCFIG MATLAB code for cncfig.fig
%      CNCFIG, by itself, creates a new CNCFIG or raises the existing
%      singleton*.
%
%      H = CNCFIG returns the handle to a new CNCFIG or the handle to
%      the existing singleton*.
%
%      CNCFIG('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CNCFIG.M with the given input arguments.
%
%      CNCFIG('Property','Value',...) creates a new CNCFIG or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before cncfig_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to cncfig_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help cncfig

% Last Modified by GUIDE v2.5 19-May-2023 00:24:54

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @cncfig_OpeningFcn, ...
                   'gui_OutputFcn',  @cncfig_OutputFcn, ...
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


% --- Executes just before cncfig is made visible.
function cncfig_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to cncfig (see VARARGIN)

% Choose default command line output for cncfig
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes cncfig wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = cncfig_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cstp_x=getappdata(0,"cstp_x")
set(handles.debug,'string',num2str(cstp_x))
%set(handles.text3,'string',num2str(s))


function st_x_Callback(hObject, eventdata, handles)
% hObject    handle to st_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of st_x as text
%        str2double(get(hObject,'String')) returns contents of st_x as a double


% --- Executes during object creation, after setting all properties.
function st_x_CreateFcn(hObject, eventdata, handles)
% hObject    handle to st_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function st_y_Callback(hObject, eventdata, handles)
% hObject    handle to st_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of st_y as text
%        str2double(get(hObject,'String')) returns contents of st_y as a double


% --- Executes during object creation, after setting all properties.
function st_y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to st_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function en_x_Callback(hObject, eventdata, handles)
% hObject    handle to en_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of en_x as text
%        str2double(get(hObject,'String')) returns contents of en_x as a double


% --- Executes during object creation, after setting all properties.
function en_x_CreateFcn(hObject, eventdata, handles)
% hObject    handle to en_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function en_y_Callback(hObject, eventdata, handles)
% hObject    handle to en_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of en_y as text
%        str2double(get(hObject,'String')) returns contents of en_y as a double


% --- Executes during object creation, after setting all properties.
function en_y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to en_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cst_x_Callback(hObject, eventdata, handles)
% hObject    handle to cst_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cst_x as text
%        str2double(get(hObject,'String')) returns contents of cst_x as a double


% --- Executes during object creation, after setting all properties.
function cst_x_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cst_x (see GCBO)
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



function cst_y_Callback(hObject, eventdata, handles)
% hObject    handle to cst_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cst_y as text
%        str2double(get(hObject,'String')) returns contents of cst_y as a double


% --- Executes during object creation, after setting all properties.
function cst_y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cst_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cen_x_Callback(hObject, eventdata, handles)
% hObject    handle to cen_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cen_x as text
%        str2double(get(hObject,'String')) returns contents of cen_x as a double


% --- Executes during object creation, after setting all properties.
function cen_x_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cen_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l_step_Callback(hObject, eventdata, handles)
% hObject    handle to l_step (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l_step as text
%        str2double(get(hObject,'String')) returns contents of l_step as a double


% --- Executes during object creation, after setting all properties.
function l_step_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l_step (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c_step_Callback(hObject, eventdata, handles)
% hObject    handle to c_step (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c_step as text
%        str2double(get(hObject,'String')) returns contents of c_step as a double


% --- Executes during object creation, after setting all properties.
function c_step_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c_step (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in l_draw.
function l_draw_Callback(hObject, eventdata, handles)
% hObject    handle to l_draw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
stp_x=str2num(get(handles.st_x,'string'));
stp_y=str2num(get(handles.st_y,'string'));
enp_x=str2num(get(handles.en_x,'string'));
enp_y=str2num(get(handles.en_y,'string'));
plot(handles.axes1,[stp_x,enp_x],[stp_y,enp_y])
axis (handles.axes1,'equal')
grid (handles.axes1, 'on')
lstep=str2num(get(handles.l_step,'string'));
x_pos=stp_x;
y_pos=stp_y;
lxpos=[];
lypos=[];
lxpos(1)=stp_x;
lypos(1)=stp_y;
if enp_x-stp_x>0 & enp_y-stp_y>0
    for s=1:lstep:enp_x-stp_x+enp_y-stp_y
        if(y_pos<((enp_y-stp_y)/(enp_x-stp_x)*(x_pos-stp_x)+stp_y))
            %line(handles.axes1,[x_pos,x_pos],[y_pos,y_pos+lstep])
            y_pos=y_pos+lstep;
            lxpos(length(lxpos)+1)=lxpos(length(lxpos));
            lypos(length(lypos)+1)=y_pos;
        else
            %line(handles.axes1,[x_pos,x_pos+lstep],[y_pos,y_pos])
            x_pos=x_pos+lstep;
            lxpos(length(lxpos)+1)=x_pos;
            lypos(length(lypos)+1)=lypos(length(lypos));
        end
    end
end
if enp_x-stp_x>0 & enp_y-stp_y<0
    for s=1:lstep:enp_x-stp_x-enp_y+stp_y
        if(y_pos>((enp_y-stp_y)/(enp_x-stp_x)*(x_pos-stp_x)+stp_y))
            %line(handles.axes1,[x_pos,x_pos],[y_pos,y_pos+lstep])
            y_pos=y_pos-lstep;
            lxpos(length(lxpos)+1)=lxpos(length(lxpos));
            lypos(length(lypos)+1)=y_pos;
        else
            %line(handles.axes1,[x_pos,x_pos-lstep],[y_pos,y_pos])
            x_pos=x_pos+lstep;
            lxpos(length(lxpos)+1)=x_pos;
            lypos(length(lypos)+1)=lypos(length(lypos));
        end
    end
end
if enp_x-stp_x<0 & enp_y-stp_y>0
    for s=1:lstep:-enp_x+stp_x+enp_y-stp_y
        if(y_pos<((enp_y-stp_y)/(enp_x-stp_x)*(x_pos-stp_x)+stp_y))
            %line(handles.axes1,[x_pos,x_pos],[y_pos,y_pos+lstep])
            y_pos=y_pos+lstep;
            lxpos(length(lxpos)+1)=lxpos(length(lxpos));
            lypos(length(lypos)+1)=y_pos;
        else
            %line(handles.axes1,[x_pos,x_pos-lstep],[y_pos,y_pos])
            x_pos=x_pos-lstep;
            lxpos(length(lxpos)+1)=x_pos;
            lypos(length(lypos)+1)=lypos(length(lypos));
        end
    end
end
if enp_x-stp_x<0 & enp_y-stp_y<0
    for s=1:lstep:-enp_x+stp_x-enp_y+stp_y
        if(y_pos>((enp_y-stp_y)/(enp_x-stp_x)*(x_pos-stp_x)+stp_y))
            %line(handles.axes1,[x_pos,x_pos],[y_pos,y_pos+lstep])
            y_pos=y_pos-lstep;
            lxpos(length(lxpos)+1)=lxpos(length(lxpos));
            lypos(length(lypos)+1)=y_pos;
        else
            %line(handles.axes1,[x_pos,x_pos-lstep],[y_pos,y_pos])
            x_pos=x_pos-lstep;
            lxpos(length(lxpos)+1)=x_pos;
            lypos(length(lypos)+1)=lypos(length(lypos));
        end
    end
end
setappdata(0,'lposx',lxpos);
setappdata(0,'lposy',lypos);
setappdata(0,'nowstep',1);


% --- Executes on button press in c_draw.
function c_draw_Callback(hObject, eventdata, handles)
% hObject    handle to c_draw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cstp_x=str2num(get(handles.cst_x,'string'));
cstp_y=str2num(get(handles.cst_y,'string'));
cenp_x=str2num(get(handles.cen_x,'string'));
cenp_y=str2num(get(handles.cen_y,'string'));
cip_x=str2num(get(handles.ci_x,'string'));
cip_y=str2num(get(handles.ci_y,'string'));
cstep=str2num(get(handles.c_step,'string'));
t1 = atan2(cstp_y-cip_y,cstp_x-cip_x);% 起点的极坐标角度 
if t1 == pi & cstp_y == cip_y
    t1 = -pi
end
t2 = atan2(cenp_y-cip_y,cenp_x-cip_x);% 终点的极坐标角度 
r = sqrt((cip_y-cstp_y)^2+(cip_x-cstp_x)^2);% 半径 
t = linspace(t1,t2,100); % 等差角度序列 
x = r*cos(t)+cip_x; % 直角坐标x值 
y = r*sin(t)+cip_y; % 直角坐标y值 
plot(handles.axes2,x,y) % 画圆弧
axis (handles.axes2,'equal')
grid (handles.axes2, 'on')
n=2^3;
jvx=abs(cstp_y-cip_y);
jvy=abs(cstp_x-cip_x);
jrx=0;
jry=0;
ex=cip_x-cstp_x;
ey=cstp_y-(cip_y-r);
x=cstp_x;
y=cstp_y;
cxpos=[];
cypos=[];
cxpos(1)=x;
cypos(1)=y;
count=0;
while 1
    count=count +1
    if count >100;
        break
    end
    flag=0;
    jrx=jrx+jvx;
    jry=jry+jvy;
    if jrx>=n & ex >0
        jrx=jrx-n;
        x=x+cstep;
        jvy=jvy-cstep;
        flag=1;
        ex=ex-cstep;
    end
    if jry>=n & ey >0
        jry=jry-n;
        y=y-cstep;
        jvx=jvx+cstep;
        flag=1;
        ey=ey-cstep;
    end
    if flag==1
        cxpos(length(cxpos)+1)=x;
        cypos(length(cypos)+1)=y;
    end
    if ex==0 & ey==0
        break
    end
end
setappdata(0,'cposx',cxpos);
setappdata(0,'cposy',cypos);
setappdata(0,'cnowstep',1);

jvx=r;
jvy=0;
jrx=0;
jry=0;
ex=cenp_x-cip_x;
ey=cenp_y-(cip_y-r);
x=cip_x;
y=cip_y-r;
cxpos2=[];
cypos2=[];
cxpos2(1)=x;
cypos2(1)=y;
count=0;
while 1
    count=count +1
    if count >100;
        break
    end
    flag=0;
    jrx=jrx+jvx;
    jry=jry+jvy;
    if jrx>=n & ex >0
        jrx=jrx-n;
        x=x+cstep;
        jvy=jvy+cstep;
        flag=1;
        ex=ex-cstep;
    end
    if jry>=n & ey >0
        jry=jry-n;
        y=y+cstep;
        jvx=jvx-cstep;
        flag=1;
        ey=ey-cstep;
    end
    if flag==1
        cxpos2(length(cxpos2)+1)=x;
        cypos2(length(cypos2)+1)=y;
    end
    if ex==0 & ey==0
        break
    end
end
setappdata(0,'cposx2',cxpos2);
setappdata(0,'cposy2',cypos2);

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
lxpos=getappdata(0,'lposx');
lypos=getappdata(0,'lposy');
step=getappdata(0,'nowstep');
if step < length(lxpos)
    hold(handles.axes1,'on');
    plot(handles.axes1,lxpos(step),lypos(step),'.','Color',[1,0,0]);
    line(handles.axes1,[lxpos(step),lxpos(step+1)],[lypos(step),lypos(step+1)],'Color',[0,1,1]);
    setappdata(0,'nowstep',step+1)
end

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cxpos=getappdata(0,'cposx');
cypos=getappdata(0,'cposy');
step=getappdata(0,'cnowstep');
cxpos2=getappdata(0,'cposx2');
cypos2=getappdata(0,'cposy2');
if step < length(cxpos)
    hold(handles.axes2,'on');
    plot(handles.axes2,cxpos(step),cypos(step),'.','Color',[1,0,0]);
    line(handles.axes2,[cxpos(step),cxpos(step+1)],[cypos(step),cypos(step+1)],'Color',[0,1,1]);
    setappdata(0,'cnowstep',step+1)
elseif step< length(cxpos)+length(cxpos2)-1
    plot(handles.axes2,cxpos2(step-length(cxpos)+1),cypos2(step-length(cxpos)+1),'.','Color',[1,0,0]);
    line(handles.axes2,[cxpos2(step-length(cxpos)+1),cxpos2(step-length(cxpos)+1+1)],[cypos2(step-length(cxpos)+1),cypos2(step-length(cxpos)+1+1)],'Color',[0,1,1]);
    setappdata(0,'cnowstep',step+1)
end
% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
lxpos=getappdata(0,'lposx');
lypos=getappdata(0,'lposy');
hold(handles.axes1,'on');
for c=1:length(lxpos)-1
    line(handles.axes1,[lxpos(c),lxpos(c+1)],[lypos(c),lypos(c+1)],'Color',[0,1,0]);
    plot(handles.axes1,lxpos(c),lypos(c),'o','Color',[1,1,0],'MarkerEdgeColor','k');
    pause(0.8)
end
%plot(handles.axes1,lxpos(length(lxpos)),lypos(length(lxpos)),'o','Color',[1,1,0],'MarkerEdgeColor','k');

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cxpos=getappdata(0,'cposx');
cypos=getappdata(0,'cposy');
hold(handles.axes2,'on');
for c=1:length(cxpos)-1
    line(handles.axes2,[cxpos(c),cxpos(c+1)],[cypos(c),cypos(c+1)],'Color',[0,1,0]);
    plot(handles.axes2,cxpos(c),cypos(c),'o','Color',[1,1,0],'MarkerEdgeColor','k');
    pause(0.8)
end
cxpos2=getappdata(0,'cposx2');
cypos2=getappdata(0,'cposy2');
hold(handles.axes2,'on');
for c=1:length(cxpos2)-1
    line(handles.axes2,[cxpos2(c),cxpos2(c+1)],[cypos2(c),cypos2(c+1)],'Color',[0,1,0]);
    plot(handles.axes2,cxpos2(c),cypos2(c),'o','Color',[1,1,0],'MarkerEdgeColor','k');
    pause(0.8)
end


function cen_y_Callback(hObject, eventdata, handles)
% hObject    handle to cen_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cen_y as text
%        str2double(get(hObject,'String')) returns contents of cen_y as a double


% --- Executes during object creation, after setting all properties.
function cen_y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cen_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ci_x_Callback(hObject, eventdata, handles)
% hObject    handle to ci_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ci_x as text
%        str2double(get(hObject,'String')) returns contents of ci_x as a double


% --- Executes during object creation, after setting all properties.
function ci_x_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ci_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ci_y_Callback(hObject, eventdata, handles)
% hObject    handle to ci_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ci_y as text
%        str2double(get(hObject,'String')) returns contents of ci_y as a double


% --- Executes during object creation, after setting all properties.
function ci_y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ci_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
