classdef Data_Visualization
    methods
        % Plot GPA distribution histogram
        function plotGPA(currentObj)
            GPAs = [Student.GPA];
            figure;
            histogram(GPAs, 10, 'FaceColor', 'b');
            title('GPA Distribution');
            xlabel('GPA');
            ylabel('Frequency');
        end
        
        % Plot average GPA by major
        function plotAverageGPAByMajor(students)
            majors = unique({students.Major});
            avgGPAs = zeros(1, length(majors));
            for i = 1:length(majors)
                majorStudents = students(strcmp({students.Major}, majors{i}));
                avgGPAs(i) = mean([majorStudents.GPA]);
            end
            figure;
            bar(avgGPAs);
            set(gca, 'XTickLabel', majors);
            title('Average GPA by Major');
            xlabel('Major');
            ylabel('Average GPA');
        end
        
        % Plot age distribution
        function plotAgeDistribution(students)
            ages = [students.Age];
            figure;
            histogram(ages, 10, 'FaceColor', 'g');
            title('Age Distribution');
            xlabel('Age');
            ylabel('Frequency');
        end
    end
end
