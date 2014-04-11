function varargout = mutilScreen(varargin)
% MUTILSCREEN MATLAB code for mutilScreen.fig
%      MUTILSCREEN, by itself, creates a new MUTILSCREEN or raises the existing
%      singleton*.
%
%      H = MUTILSCREEN returns the handle to a new MUTILSCREEN or the handle to
%      the existing singleton*.
%
%      MUTILSCREEN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MUTILSCREEN.M with the given input arguments.
%
%      MUTILSCREEN('Property','Value',...) creates a new MUTILSCREEN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before mutilScreen_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to mutilScreen_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help mutilScreen

% Last Modified by GUIDE v2.5 01-Feb-2014 12:12:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @mutilScreen_OpeningFcn, ...
                   'gui_OutputFcn',  @mutilScreen_OutputFcn, ...
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


% --- Executes just before mutilScreen is made visible.
function mutilScreen_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to mutilScreen (see VARARGIN)

% Choose default command line output for mutilScreen
handles.output = hObject;

% position setting for the panels, using normalized unit.
x = 0.10; y = 0.1;
w = 0.70; h = 0.70; 

handles.panel_1 = uipanel('Title','Panel_1','FontSize',12,...
             'BackgroundColor','white',...
             'Position', [x,y,w,h], 'Visible', 'on', 'tag', 'panel_1' );

handles.panel_2 = uipanel('Title','Panel_2','FontSize',12,...
             'BackgroundColor','red',...
             'Position', [x,y,w,h], 'Visible', 'off', 'tag', 'panel_2' );

handles.panel_3 = uipanel('Title','Panel_3','FontSize',12,...
             'BackgroundColor','green',...
             'Position', [x,y,w,h], 'Visible', 'off', 'tag', 'panel_3' );

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes mutilScreen wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = mutilScreen_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pb_show_panel_1.
function pb_show_panel_1_Callback(hObject, eventdata, handles)
% hObject    handle to pb_show_panel_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.panel_1, 'visible', 'on');
set(handles.panel_2, 'visible', 'off');
set(handles.panel_3, 'visible', 'off');

% --- Executes on button press in pb_show_panel_2.
function pb_show_panel_2_Callback(hObject, eventdata, handles)
% hObject    handle to pb_show_panel_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.panel_1, 'visible', 'off');
set(handles.panel_2, 'visible', 'on');
set(handles.panel_3, 'visible', 'off');

% --- Executes on button press in pb_show_panel_3.
function pb_show_panel_3_Callback(hObject, eventdata, handles)
% hObject    handle to pb_show_panel_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.panel_1, 'visible', 'off');
set(handles.panel_2, 'visible', 'off');
set(handles.panel_3, 'visible', 'on');
