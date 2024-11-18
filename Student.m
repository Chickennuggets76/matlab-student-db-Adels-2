classdef Student
    properties
        ID = 000                % ID as a digits
        Name = ""               % Name as a string
        Age = 00                % Age as a digits
        GPA = 0.0               % GPA as a float
        Major = ""              % Major as a string
        Grades = zeros(1,10)    % Grades as vector
        Latest_Grade = 000      % Lastest_Grade as digits
    end

    methods
        function res = create_student(currentObj, ID, Name, Age, GPA, Major, Grades, Latest_Grade)
            currentObj.ID = ID;                       % Set ID
            currentObj.Name = Name;                   % Set Name
            currentObj.Age = Age;                     % Set Age
            currentObj.GPA = GPA;                     % Set GPA
            currentObj.Major = Major;                 % Set Major
            currentObj.Grades = Grades;               % Set Grades
            currentObj.Latest_Grade = Latest_Grade;   % Set Latest_Grade
            res = currentObj;                         % Return the updated student object
        end
        function res = initStudent(currentObj)
            % Ask user for information via input
            currentObj.ID = input("What's the ID of the student?");
            currentObj.Name = input("What's the name of the student?");
            currentObj.Age = input("What's the age of the student?");
            currentObj.Major = input("What's the major of the student?");
            currentObj.Grades = randi([5 10])*rand(1,10) + randi([40 90]);
            currentObj.GPA = mean(currentObj.Grades) / 100 * 4;
            currentObj.Latest_Grade = input("What's the latest grade of the student?");
            res = currentObj;              % Return the student object with filled data
        end
        function res = showStudent(currentObj)
            % Display the student's information
            fprintf("Student ID: %d \n", currentObj.ID)
            fprintf("Student Name: %s \n", currentObj.Name)
            fprintf("Student Age: %d \n", currentObj.Age)
            fprintf("Student GPA: %f \n", currentObj.GPA)
            fprintf("Student Major: %s \n", currentObj.Major)
            fprintf("Student Latest Grade: %d \n", currentObj.Latest_Grade)
            fprintf("%s \n","                                                 Grades")
            fprintf("%s \n","   _________________________________________________________________________________________________")
            disp(currentObj.Grades)
            res = 1;                                    % Return 1 after displaying
        end
        function res = setName(currentObj, Name)
            % Update the name of the student and show updated info
            currentObj.Name = Name;
            currentObj.showStudent();                   % Display updated student info
            res = currentObj;                           % Return the updated student object
        end
        function res = updateGPA(currentObj)
            currentObj.GPA = mean([currentObj.Grades'; currentObj.Latest_Grade]) / 100 * 4;
            res = currentObj;
        end
%        function displayInfo(currentObj)
%            fprintf('%d %s %d %s \n',currentObj.ID,currentObj.Name,currentObj.Age,currentObj.Major,currentObj.Latest_Grade)
%            fprintf('%s %s %f',currentObj.Name,"'s current GPA is",currentObj.GPA)
%            fprintf("%s \n","                                                 Grades")
%            fprintf("%s \n","   _________________________________________________________________________________________________")
%            disp(currentObj.Grades)
%        end
    end
end
