function varargout = imwithgui(varargin)
% IMWITHGUI MATLAB code for imwithgui.fig
%      IMWITHGUI, by itself, creates a new IMWITHGUI or raises the existing
%      singleton*.
%
%      H = IMWITHGUI returns the handle to a new IMWITHGUI or the handle to
%      the existing singleton*.
%
%      IMWITHGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in IMWITHGUI.M with the given input arguments.
%
%      IMWITHGUI('Property','Value',...) creates a new IMWITHGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the IMWITHGUI before imwithgui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to imwithgui_OpeningFcn via varargin.
%
%      *See IMWITHGUI Options on GUIDE's Tools menu.  Choose "IMWITHGUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help imwithgui

% Last Modified by GUIDE v2.5 08-Feb-2022 10:07:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @imwithgui_OpeningFcn, ...
                   'gui_OutputFcn',  @imwithgui_OutputFcn, ...
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


% --- Executes just before imwithgui is made visible.
function imwithgui_OpeningFcn(hObject, ~, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to imwithgui (see VARARGIN)

% Choose default command line output for imwithgui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes imwithgui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = imwithgui_OutputFcn(~, ~, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;




% --- Executes on button press in uploadimage.
function uploadimage_Callback(~, ~, handles)
% hObject    handle to uploadimage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=uigetfile('.jpeg');
a=imread(a);
axes(handles.axes1);
imshow(a);
setappdata(0,'a',a)




% --- Executes on button press in rgb2gray.
function rgb2gray_Callback(~, ~, handles)
% hObject    handle to rgb2gray (see GCBO)
% eventdata  reserved - to be defined in a future v
a=getappdata(0,'a');
agray=rgb2gray(a);
axes(handles.axes1);
imshow(agray);





% --- Executes on button press in im2bw.
function im2bw_Callback(~, ~, handles)
% hObject    handle to im2bw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
abw=im2bw(a);
axes(handles.axes1);
imshow(abw);



% --- Executes on button press in histogram.
function histogram_Callback(~, ~, handles)
% hObject    handle to histogram (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
ahist=a;
ahist=rgb2gray(ahist);
axes(handles.axes1);
imhist(ahist);



% --- Executes on button press in reset.
function reset_Callback(~, ~, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (ersion of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
axes(handles.axes1);
imshow(a);






% --- Executes on button press in complementimage.
function complementimage_Callback(~, ~, handles)
% hObject    handle to complementimage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
acomp=a;
acomp=imcomplement(acomp);
axes(handles.axes1);
imshow(acomp);




% --- Executes on button press in edge.
function edge_Callback(~, ~, handles)
% hObject    handle to edge (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
aedge=a;
aedge=rgb2gray(aedge);
aedge=edge(aedge,'Canny');
axes(handles.axes1);
imshow(aedge);



% --- Executes on button press in anticlockwise.
function anticlockwise_Callback(~, ~, handles)
% hObject    handle to anticlockwise (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
aclock=a;
aclock=imrotate(aclock,90);
axes(handles.axes1);
imshow(aclock);



% --- Executes on button press in clockwise.
function clockwise_Callback(~, ~, handles)
% hObject    handle to clockwise (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
aclock=a;
aclock=imrotate(aclock,270);
axes(handles.axes1);
imshow(aclock);


