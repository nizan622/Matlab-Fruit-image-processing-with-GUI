function varargout = main(varargin)
% main MATLAB code for main.fig
%      main, by itself, creates a new main or raises the existing
%      singleton*
%
%      H = main returns the handle to a new main or the handle to
%      the existing singleton*.
%
%      main('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in main.M with the given input arguments.
%
%      main('Property','Value',...) creates a new main or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before main_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to main_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help main

% Last Modified by GUIDE v2.5 25-Jan-2017 03:05:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @main_OpeningFcn, ...
                   'gui_OutputFcn',  @main_OutputFcn, ...
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
end

% --- Executes just before main is made visible.
function main_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to main (see VARARGIN)
% Choose default command line output for main
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

axes(handles.axes3)
matlabImage = imread('Photos\FruitQA.jpg');
imshow(matlabImage);
image(matlabImage)
axis off


% UIWAIT makes main wait for user response (see UIRESUME)
% uiwait(handles.figure1);
end


% --- Outputs from this function are returned to the command line.
function varargout = main_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

end

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

axes(handles.axes3);
set(handles.text3, 'Visible','off');
set(handles.text4, 'Visible','off');
set(handles.axes3,'Visible','off');
set(get(handles.axes3,'children'),'visible','off')
set(handles.pushbutton2,'Visible','off')
set(handles.check,'Visible','on')
end

% --- Executes on selection change in check.
function check_Callback(hObject, eventdata, handles)
% hObject    handle to check (see GCBO)
   val = get(handles.check,'Value');
   if val == 1
        delete(findall(findall(gcf,'Type','axe'),'Type','text'))
        set(handles.togglebutton1,'Visible','off')
        set(handles.togglebutton2,'Visible','off')
        set(handles.togglebutton3,'Visible','off')
        set(handles.togglebutton4,'Visible','off')
        set(handles.text3,'Visible','off')
        set(handles.text4,'Visible','off')
        set(handles.text5,'Visible','off')
        set(handles.text6,'Visible','off')
        set(handles.text7,'Visible','off')
        set(handles.text8, 'Visible','off');
        set(handles.text9, 'Visible','off');
        set(handles.text10, 'Visible','off');
        set(handles.text11, 'Visible','off');
        set(get(handles.axes1,'children'),'Visible','off')
        set(get(handles.axes2,'children'),'Visible','off')
   elseif val == 2
        delete(findall(findall(gcf,'Type','axe'),'Type','text'))
        set(handles.togglebutton1,'Visible','on')
        set(handles.togglebutton2,'Visible','off')
        set(handles.togglebutton3,'Visible','off')
        set(handles.togglebutton4,'Visible','off')
        set(handles.text3,'Visible','off')
        set(handles.text4,'Visible','off')
        set(handles.text5,'Visible','off')
        set(handles.text6,'Visible','off')
        set(handles.text7,'Visible','off')
        set(handles.text8, 'Visible','off');
        set(handles.text9, 'Visible','off');
        set(handles.text10, 'Visible','off');
        set(handles.text11, 'Visible','off');
        set(get(handles.axes1,'children'),'Visible','off')
        set(get(handles.axes2,'children'),'Visible','off')
   elseif val == 3
        delete(findall(findall(gcf,'Type','axe'),'Type','text'))
        set(handles.togglebutton1,'Visible','off')
        set(handles.togglebutton2,'Visible','on')
        set(handles.togglebutton3,'Visible','off')
        set(handles.togglebutton4,'Visible','off')
        set(handles.text3,'Visible','off')
        set(handles.text4,'Visible','off')
        set(handles.text5,'Visible','off')
        set(handles.text6,'Visible','off')
        set(handles.text7,'Visible','off')
        set(handles.text8, 'Visible','off');
        set(handles.text9, 'Visible','off');
        set(handles.text10, 'Visible','off');
        set(handles.text11, 'Visible','off');
        set(get(handles.axes1,'children'),'Visible','off')
        set(get(handles.axes2,'children'),'Visible','off')
   elseif val == 4
        delete(findall(findall(gcf,'Type','axe'),'Type','text'))
        set(handles.togglebutton1,'Visible','off')
        set(handles.togglebutton2,'Visible','off')
        set(handles.togglebutton3,'Visible','on')
        set(handles.togglebutton4,'Visible','off')
        set(handles.text3,'Visible','off')
        set(handles.text4,'Visible','off')
        set(handles.text5,'Visible','off')
        set(handles.text6,'Visible','off')
        set(handles.text7,'Visible','off')
        set(handles.text8, 'Visible','off');
        set(handles.text9, 'Visible','off');
        set(handles.text10, 'Visible','off');
        set(handles.text11, 'Visible','off');
        set(get(handles.axes1,'children'),'Visible','off')
        set(get(handles.axes2,'children'),'Visible','off')
   elseif val == 5
        delete(findall(findall(gcf,'Type','axe'),'Type','text'))
        set(handles.togglebutton1,'Visible','off')
        set(handles.togglebutton2,'Visible','off')
        set(handles.togglebutton3,'Visible','off')
        set(handles.togglebutton4,'Visible','on')
        set(handles.text3,'Visible','off')
        set(handles.text4,'Visible','off')
        set(handles.text5,'Visible','off')
        set(handles.text6,'Visible','off')
        set(handles.text7,'Visible','off')
        set(handles.text8, 'Visible','off');
        set(handles.text9, 'Visible','off');
        set(handles.text10, 'Visible','off');
        set(handles.text11, 'Visible','off');
        set(get(handles.axes1,'children'),'Visible','off')
        set(get(handles.axes2,'children'),'Visible','off')
   end
end
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns check contents as cell array
%        contents{get(hObject,'Value')} returns selected item from check


% --- Executes during object creation, after setting all properties.
function check_CreateFcn(hObject, eventdata, handles)
% hObject    handle to check (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end
end


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over check.
function check_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to check (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
end

% --- Executes on button press in togglebutton1.
function togglebutton1_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of togglebutton1
    set(handles.text3,'Visible','off')
    set(handles.text4,'Visible','off')
    set(handles.text5,'Visible','off')
    set(handles.text6,'Visible','off')
    set(handles.text7,'Visible','off')
    set(handles.text8, 'Visible','off');
    set(handles.text9, 'Visible','off');
    set(handles.text10, 'Visible','off');
    set(handles.text11, 'Visible','off');
    set(get(handles.axes1,'children'),'visible','off')
    set(get(handles.axes2,'children'),'visible','off')
    axes(handles.axes1);
    axes(handles.axes2);
    delete(findall(findall(gcf,'Type','axe'),'Type','text'))
    ImageNum = 1;
    %img = uigetfile({'*.jpg';'*.png'},'File Selector');
    [FileName, PathName] = uigetfile({'*.jpg'},'File Selector');
    img = fullfile(PathName, FileName);
    if (img ~=0)
        [ImToDisp,ImToDisp2, MaskPixel] = Fruit(img,ImageNum);
        ImagePixel = SizeInPixels(img);
        [flag,percent] = CalcFruit(ImagePixel, MaskPixel, ImageNum);
        CheckDiam = Diameter(img);
        if (CheckDiam >= 0.5)
            DiamFlag = true;
        else 
            DiamFlag = false;
        end
        if (flag == true && DiamFlag == true)
            set(handles.text3,'Visible','on')
            set(handles.text8, 'Visible','on');
            set(handles.text9, 'String', sprintf('%f', CheckDiam));
            set(handles.text9, 'Visible','on');
            set(handles.text10, 'Visible','on');
            set(handles.text11, 'String', sprintf('%.2f%%', percent));
            set(handles.text11, 'Visible','on');
        elseif (flag == true && DiamFlag == false)
            set(handles.text4,'Visible','on')
            set(handles.text5,'Visible','on')
            set(handles.text8, 'Visible','on');
            set(handles.text9, 'String', sprintf('%f', CheckDiam));
            set(handles.text9, 'Visible','on');
            set(handles.text10, 'Visible','on');
            set(handles.text11, 'String', sprintf('%.2f%%', percent));
            set(handles.text11, 'Visible','on');
            axes(handles.axes2);
            imshow(ImToDisp2);
            title('Masked Image');
        elseif (flag == false && DiamFlag == true)
            set(handles.text4,'Visible','on')
            set(handles.text6,'Visible','on')
            set(handles.text8, 'Visible','on');
            set(handles.text9, 'String', sprintf('%f', CheckDiam));
            set(handles.text9, 'Visible','on');
            set(handles.text10, 'Visible','on');
            set(handles.text11, 'String', sprintf('%.2f%%', percent));
            set(handles.text11, 'Visible','on');
            axes(handles.axes2);
            imshow(ImToDisp2);
            title('Masked Image');
        else
            set(handles.text4,'Visible','on')
            set(handles.text7,'Visible','on')
            set(handles.text8, 'Visible','on');
            set(handles.text9, 'String', sprintf('%f', CheckDiam));
            set(handles.text9, 'Visible','on');
            set(handles.text10, 'Visible','on');
            set(handles.text11, 'String', sprintf('%.2f%%', percent));
            set(handles.text11, 'Visible','on');
            axes(handles.axes2);
            imshow(ImToDisp2);
            title('Masked Image');
        end
    axes(handles.axes1);
    imshow(ImToDisp);
    title('Orginal Image');
    end
end
% Avocado 

% --- Executes on button press in togglebutton2.
function togglebutton2_Callback(hObject, eventdata, handles)
    % hObject    handle to togglebutton2 (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)
    set(handles.text3,'Visible','off')
    set(handles.text4,'Visible','off')
    set(handles.text5,'Visible','off')
    set(handles.text6,'Visible','off')
    set(handles.text7,'Visible','off')
    set(handles.text8, 'Visible','off');
    set(handles.text9, 'Visible','off');
    set(handles.text10, 'Visible','off');
    set(handles.text11, 'Visible','off');
    set(get(handles.axes1,'children'),'visible','off')
    set(get(handles.axes2,'children'),'visible','off')
    axes(handles.axes1);
    axes(handles.axes2);
    delete(findall(findall(gcf,'Type','axe'),'Type','text'))
    %img = uigetfile('*.jpg','File Selector');
    [FileName, PathName] = uigetfile({'*.jpg'},'File Selector');
    img = fullfile(PathName, FileName);
    if (img ~=0)
        ImageNum = 2;
        [ImToDisp,ImToDisp2, MaskPixel] = Fruit(img,ImageNum);
        ImagePixel = SizeInPixels(img);
        [flag,percent] = CalcFruit(ImagePixel, MaskPixel, ImageNum);
        CheckDiam = Diameter(img);
        if (CheckDiam >= 0.5)
            DiamFlag = true;
        else 
            DiamFlag = false;
        end
        if (flag == true && DiamFlag == true)
            set(handles.text3,'Visible','on')
            set(handles.text8, 'Visible','on');
            set(handles.text9, 'String', sprintf('%f', CheckDiam));
            set(handles.text9, 'Visible','on');
            set(handles.text10, 'Visible','on');
            set(handles.text11, 'String', sprintf('%.2f%%', percent));
            set(handles.text11, 'Visible','on');
        elseif (flag == true && DiamFlag == false)
            set(handles.text4,'Visible','on')
            set(handles.text5,'Visible','on')
            set(handles.text8, 'Visible','on');
            set(handles.text9, 'String', sprintf('%f', CheckDiam));
            set(handles.text9, 'Visible','on');
            set(handles.text10, 'Visible','on');
            set(handles.text11, 'String', sprintf('%.2f%%', percent));
            set(handles.text11, 'Visible','on');
            axes(handles.axes2);
            imshow(ImToDisp2);
            title('Masked Image');
        elseif (flag == false && DiamFlag == true)
            set(handles.text4,'Visible','on')
            set(handles.text6,'Visible','on')
            set(handles.text8, 'Visible','on');
            set(handles.text9, 'String', sprintf('%f', CheckDiam));
            set(handles.text9, 'Visible','on');
            set(handles.text10, 'Visible','on');
            set(handles.text11, 'String', sprintf('%.2f%%', percent));
            set(handles.text11, 'Visible','on');
            axes(handles.axes2);
            imshow(ImToDisp2);
            title('Masked Image');
        else
            set(handles.text4,'Visible','on')
            set(handles.text7,'Visible','on')
            set(handles.text8, 'Visible','on');
            set(handles.text9, 'String', sprintf('%f', CheckDiam));
            set(handles.text9, 'Visible','on');
            set(handles.text10, 'Visible','on');
            set(handles.text11, 'String', sprintf('%.2f%%', percent));
            set(handles.text11, 'Visible','on');
            axes(handles.axes2);
            imshow(ImToDisp2);
            title('Masked Image');
        end
    axes(handles.axes1);
    imshow(ImToDisp);
    title('Orginal Image');
    end
end
%Banana

% Hint: get(hObject,'Value') returns toggle state of togglebutton2

% --- Executes on button press in togglebutton3.
function togglebutton3_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    set(handles.text3,'Visible','off')
    set(handles.text4,'Visible','off')
    set(handles.text5,'Visible','off')
    set(handles.text6,'Visible','off')
    set(handles.text7,'Visible','off')
    set(handles.text8, 'Visible','off');
    set(handles.text9, 'Visible','off');
    set(handles.text10, 'Visible','off');
    set(handles.text11, 'Visible','off');
    set(get(handles.axes1,'children'),'visible','off')
    set(get(handles.axes2,'children'),'visible','off')
    axes(handles.axes1);
    axes(handles.axes2);
    delete(findall(findall(gcf,'Type','axe'),'Type','text'))
    %img = uigetfile('*.jpg','File Selector');
    [FileName, PathName] = uigetfile({'*.jpg'},'File Selector');
    img = fullfile(PathName, FileName);
    if (img ~=0)
        ImageNum = 3;
        [ImToDisp,ImToDisp2, MaskPixel] = Fruit(img,ImageNum);
        ImagePixel = SizeInPixels(img);
        [flag,percent] = CalcFruit(ImagePixel, MaskPixel, ImageNum);
        CheckDiam = Diameter(img);
        if (CheckDiam >= 0.5)
            DiamFlag = true;
        else 
            DiamFlag = false;
        end
        if (flag == true && DiamFlag == true)
            set(handles.text3,'Visible','on')
            set(handles.text8, 'Visible','on');
            set(handles.text9, 'String', sprintf('%f', CheckDiam));
            set(handles.text9, 'Visible','on');
            set(handles.text10, 'Visible','on');
            set(handles.text11, 'String', sprintf('%.2f%%', percent));
            set(handles.text11, 'Visible','on');
        elseif (flag == true && DiamFlag == false)
            set(handles.text4,'Visible','on')
            set(handles.text5,'Visible','on')
            set(handles.text8, 'Visible','on');
            set(handles.text9, 'String', sprintf('%f', CheckDiam));
            set(handles.text9, 'Visible','on');
            set(handles.text10, 'Visible','on');
            set(handles.text11, 'String', sprintf('%.2f%%', percent));
            set(handles.text11, 'Visible','on');
            axes(handles.axes2);
            imshow(ImToDisp2);
            title('Masked Image');
        elseif (flag == false && DiamFlag == true)
            set(handles.text4,'Visible','on')
            set(handles.text6,'Visible','on')
            set(handles.text8, 'Visible','on');
            set(handles.text9, 'String', sprintf('%f', CheckDiam));
            set(handles.text9, 'Visible','on');
            set(handles.text10, 'Visible','on');
            set(handles.text11, 'String', sprintf('%.2f%%', percent));
            set(handles.text11, 'Visible','on');
            axes(handles.axes2);
            imshow(ImToDisp2);
            title('Masked Image');
        else
            set(handles.text4,'Visible','on')
            set(handles.text7,'Visible','on')
            set(handles.text8, 'Visible','on');
            set(handles.text9, 'String', sprintf('%f', CheckDiam));
            set(handles.text9, 'Visible','on');
            set(handles.text10, 'Visible','on');
            set(handles.text11, 'String', sprintf('%.2f%%', percent));
            set(handles.text11, 'Visible','on');
            axes(handles.axes2);
            imshow(ImToDisp2);
            title('Masked Image');
        end
    axes(handles.axes1);
    imshow(ImToDisp);
    title('Orginal Image');
    end
end
% Peach

% Hint: get(hObject,'Value') returns toggle state of togglebutton3


% --- Executes on button press in togglebutton4.
function togglebutton4_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    set(handles.text3,'Visible','off')
    set(handles.text4,'Visible','off')
    set(handles.text5,'Visible','off')
    set(handles.text6,'Visible','off')
    set(handles.text7,'Visible','off')
    set(handles.text8, 'Visible','off');
    set(handles.text9, 'Visible','off');
    set(handles.text10, 'Visible','off');
    set(handles.text11, 'Visible','off');
    set(get(handles.axes1,'children'),'visible','off')
    set(get(handles.axes2,'children'),'visible','off')
    axes(handles.axes1);
    axes(handles.axes2);
    delete(findall(findall(gcf,'Type','axe'),'Type','text'))
    [FileName, PathName] = uigetfile({'*.jpg'},'File Selector');
    img = fullfile(PathName, FileName);
    if (img ~=0)
        ImageNum = 4;
        [ImToDisp,ImToDisp2, MaskPixel] = Fruit(img,ImageNum);
        ImagePixel = SizeInPixels(img);
        [flag,percent] = CalcFruit(ImagePixel, MaskPixel, ImageNum);
        CheckDiam = Diameter(img);
        if (CheckDiam >= 0.5)
            DiamFlag = true;
        else 
            DiamFlag = false;
        end
        if (flag == true && DiamFlag == true)
            set(handles.text3,'Visible','on')
            set(handles.text8, 'Visible','on');
            set(handles.text9, 'String', sprintf('%f', CheckDiam));
            set(handles.text9, 'Visible','on');
            set(handles.text10, 'Visible','on');
            set(handles.text11, 'String', sprintf('%.2f%%', percent));
            set(handles.text11, 'Visible','on');
        elseif (flag == true && DiamFlag == false)
            set(handles.text4,'Visible','on')
            set(handles.text5,'Visible','on')
            set(handles.text8, 'Visible','on');
            set(handles.text9, 'String', sprintf('%f', CheckDiam));
            set(handles.text9, 'Visible','on');
            set(handles.text10, 'Visible','on');
            set(handles.text11, 'String', sprintf('%.2f%%', percent));
            set(handles.text11, 'Visible','on');
            axes(handles.axes2);
            imshow(ImToDisp2);
            title('Masked Image');
        elseif (flag == false && DiamFlag == true)
            set(handles.text4,'Visible','on')
            set(handles.text6,'Visible','on')
            set(handles.text8, 'Visible','on');
            set(handles.text9, 'String', sprintf('%f', CheckDiam));
            set(handles.text9, 'Visible','on');
            set(handles.text10, 'Visible','on');
            set(handles.text11, 'String', sprintf('%.2f%%', percent));
            set(handles.text11, 'Visible','on');
            axes(handles.axes2);
            imshow(ImToDisp2);
            title('Masked Image');
        else
            set(handles.text4,'Visible','on')
            set(handles.text7,'Visible','on')
            set(handles.text8, 'Visible','on');
            set(handles.text9, 'String', sprintf('%f', CheckDiam));
            set(handles.text9, 'Visible','on');
            set(handles.text10, 'Visible','on');
            set(handles.text11, 'String', sprintf('%.2f%%', percent));
            set(handles.text11, 'Visible','on');
            axes(handles.axes2);
            imshow(ImToDisp2);
            title('Masked Image');
        end
    axes(handles.axes1);
    imshow(ImToDisp);
    title('Orginal Image');
    end
end
% Pear
