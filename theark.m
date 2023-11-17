%#########################Crammers Ark#################################

%menu

%count variable to keep the menu loop alive
count = 1;
while count==1
    %calling menu function
    menu();
end

%##############################Menu#######################################
%menu function
function menu()
    disp("-----------------------Crammer's Ark-----------------------");    
    disp("-----------------------Version 1.0-------------------------");
    disp("------Developed By------");
    disp("Aryan Karamtoth (SpaciousCoder78)");
    disp("------------------------Menu-------------------------------");
    disp("1.Solve Crammer's Equation");
    disp("2.Exit");
    %prompting the user to enter a choice
    prompt = "Enter your choice: ";
    %accepting user input
    choice = input(prompt);
    %switch case to divert the user 
    switch choice
        %case 1
        case 1
           solve();
        %case 2
        case 2
            disp("Exited the app")
            quit
    end
end

%############################Solve Function###############################
%solving matrix function
function solve()
    disp("-----------------Solving Crammers Equation-------------------");
    disp("Choose number of variables:");
    disp("1.Two Variables");
    disp("2.Three Variables");
    %asking the user to pick the option
    prompt = "Enter your choice: ";
    varChoice = input(prompt);
    switch varChoice
        %case 1
        case 1
            twoVar();
        %case 2
        case 2
            threeVar();

    end

end

%##############################Two Variable function######################
function twoVar()
    %two variable calculation
    disp("---------------------Two Variable Calculation-----------------");
    disp("Choose type of circuit analysis:");
    disp("1.Mesh Analysis");
    disp("2.Nodal Analysis");
    %taking input for mesh or node
    prompt = "Enter your choice";
    twoVarChoice = input(prompt);
    switch twoVarChoice
        case 1
            twoVarMesh();
        case 2
            twoVarNode();

    end
    
end

%############################two variable mesh#############################

function twoVarMesh()
    %menu for two variable mesh analysis
    disp("-----------------Two Variable Mesh Analysis------------------");
    disp("Enter the 2x2 matrix: ")
    %showing the user the form of crammers matrix for 2x2
    disp("Crammer's Matrix of 2x2: " + ...
        "[A1 B1] [I1] = [C1]" + ...
        "[A2 B2] [I2] = [C2]")
    %asking the user for coefficient matrix
    disp("Enter A (Coefficient Matrix):");

    %taking input for A1
    prompt1 = "Enter A1: ";
    A1 = input(prompt1);

    %taking input for B1
    prompt2 = "Enter B1: ";
    B1 = input(prompt2);

    %taking input for A2
    prompt3 = "Enter A2: ";
    A2 = input(prompt3);

    %taking input for B2
    prompt4 = "Enter B2: ";
    B2 = input(prompt4);

    %asking user to enter constant matrix
    disp("Enter C (Constant Matrix)");
    
    %taking input for C1
    prompt5 = "Enter C1: ";
    C1 = input(prompt5);
    
    %taking input for C2
    prompt6 = "Enter C2: ";
    C2 = input(prompt6);

    %assigning the input in the form of matrix
    matA = [A1 B1;A2 B2];
    
    c = [C1;C2];

    %getting the determinant of matrix A
    delD = det(matA);

    %getting the value of delta I1 using determinant
    protoI1 = [C1 B1; C2 B2];
    delProtoI1 = det(protoI1);

    %getting the value of delta I2 using determinant
    protoI2 = [A1 C1;A2 C2];
    delProtoI2 = det(protoI2);

    %getting the values of I1 and I2 by dividing determinants
    I1 = delProtoI1/delD;
    I2 = delProtoI2/delD;

    %printing I1 and I2 values to the user
    fprintf("Value of I1: %f\n",I1);
    fprintf("Value of I2: %f\n",I2);


end