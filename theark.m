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
    disp("-----------------------Version 1.0.1-------------------------");
    disp("------Developed By------");
    disp("Aryan Karamtoth (SpaciousCoder78)");
    disp("------------------------Menu-------------------------------");
    disp("1.Solve Crammer's Equation");
    disp("2.App and Developer Info")
    disp("3.Exit");
    %prompting the user to enter a choice
    prompt = "Enter your choice: ";
    %accepting user input
    choice = input(prompt);
    %switch case to divert the user 
    if (choice == 1)
        solve();
    elseif (choice == 2)
        devinfo();
    elseif (choice== 3)
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
    if varChoice == 1
        twoVar();
    elseif varChoice == 2
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
    if twoVarChoice == 1
        twoVarMesh();

    elseif twoVarChoice == 2
        twoVarNode();
    end
    
end

%############################two variable mesh#############################

function twoVarMesh()
    %menu for two variable mesh analysis
    disp("-----------------Two Variable Mesh Analysis------------------");
    disp("Enter the 2x2 matrix: ")
    %showing the user the form of crammers matrix for 2x2
    disp("Crammer's Matrix of 2x2: \n" + ...
        "[A1 B1] [I1] = [C1]\n" + ...
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
    fprintf("Value of I1: %f Volts\n",I1);
    fprintf("Value of I2: %f Volts\n",I2);


end

%###############################Two Variable Node#########################
function twoVarNode()
    %menu for two variable nodal analysis
    disp("-----------------Two Variable Nodal Analysis------------------");
    disp("Enter the 2x2 matrix: ")
    %showing the user the form of crammers matrix for 2x2
    disp("Crammer's Matrix of 2x2: \n" + ...
        "[A1 B1] [V1] = [C1]\n" + ...
        "[A2 B2] [V2] = [C2]")
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

    %getting the value of delta V1 using determinant
    protoV1 = [C1 B1; C2 B2];
    delProtoV1 = det(protoV1);

    %getting the value of delta V2 using determinant
    protoV2 = [A1 C1;A2 C2];
    delProtoV2 = det(protoV2);

    %getting the values of V1 and V2 by dividing determinants
    V1 = delProtoV1/delD;
    V2 = delProtoV2/delD;

    %printing V1 and V2 values to the user
    fprintf("Value of V1: %f Volts\n",V1);
    fprintf("Value of V2: %f Volts\n",V2);


end

%#########################Three variables################################

function threeVar()
    %menu for three variables
    disp("------------------Three Variable Calculation-----------------");
    disp("Choose the type of circuit analysis: \n" + ...
        "1.Mesh Analysis\n" + ...
        "2.Nodal Analysis\n");
    prompt = "Enter your choice: ";
    threeVarChoice = input(prompt);
    if threeVarChoice == 1
        threeVarMesh();
    elseif threeVarChoice == 2
        threeVarNode();

    end

end

%###################Three variable mesh##################################

function threeVarMesh()
    disp("----------------Three Variable Mesh Analysis---------------");
    disp("Enter 3x3 matrix: ");
    disp("Crammer's Matrix of 3x3 form: \n" + ...
        "[A1 B1 C1] [I1] = [D1]\n" + ...
        "[A2 B2 C2] [I2] = [D2]\n" +...
        "[A3 B3 C3] [I3] = [D3]");
    disp("Enter A (Co efficient Matrix):" );

    %taking input for A1
    prompt1 = "Enter A1: ";
    A1 = input(prompt1);

    %taking input for B1
    prompt2 = "Enter B1: ";
    B1 = input(prompt2);

    %taking input for C1
    prompt3 = "Enter C1: ";
    C1 = input(prompt3);

    %taking input for A2
    prompt4 = "Enter A2: ";
    A2 = input(prompt4);

    %taking input for B2
    prompt5 = "Enter B2: ";
    B2 = input(prompt5);

    %taking input for C2
    prompt6 = "Enter C2: ";
    C2 = input(prompt6);

    %taking input for A3
    prompt7 = "Enter A3: ";
    A3 = input(prompt7);

    %taking input for B3
    prompt8 = "Enter B3: ";
    B3 = input(prompt8);

    %taking input for C3
    prompt9 = "Enter C3: ";
    C3 = input(prompt9);

    %taking input for D1
    prompt10 = "Enter D1: ";
    D1 = input(prompt10);

    %taking input for D2
    prompt11 = "Enter D2: ";
    D2 = input(prompt11);

    %taking input for D3
    prompt12 = "Enter D3: ";
    D3 = input(prompt12);

    %declaring matrix A
    matA = [A1 B1 C1;A2 B2 C3; A3 B3 C3];


    %declaring constant matrix 
    X = [D1;D2:D3];

    %finding determinant of matA
    delD = det(matA);

    %finding determinant of protoI1
    protoI1 = [D1 B1 C1; D2 B2 C2; D3 B3 C3];
    delProtoI1 = det(protoI1);

    %finding determinant of protoI2
    protoI2 = [A1 D1 C1; A2 D2 C2; A3 D3 C3];
    delProtoI2 = det(protoI2);

    %finding determinant of protoI3
    protoI3 = [A1 B1 D1; A2 B2 D2; A3 B3 D3];
    delProtoI3 = det(protoI3);

    %finding values of I1,I2 and I3
    I1 = delProtoI1/delD;
    I2 = delProtoI2/delD;
    I3 = delProtoI3/delD;

    %printing the values of I1, I2 and I3 to the user
    fprintf("Value of I1: %f Amperes\n",I1);
    fprintf("Value of I2: %f Amperes\n",I2);
    fprintf("Value of I3: %f Amperes\n",I3);

end

%############################Three variable node##########################
function threeVarNode()
    disp("----------------Three Variable Nodal Analysis---------------");
    disp("Enter 3x3 matrix: ");
    disp("Crammer's Matrix of 3x3 form: \n" + ...
        "[A1 B1 C1] [V1] = [D1]\n" + ...
        "[A2 B2 C2] [V2] = [D2]\n" +...
        "[A3 B3 C3] [V3] = [D3]");
    disp("Enter A (Co efficient Matrix):" );

    %taking input for A1
    prompt1 = "Enter A1: ";
    A1 = input(prompt1);

    %taking input for B1
    prompt2 = "Enter B1: ";
    B1 = input(prompt2);

    %taking input for C1
    prompt3 = "Enter C1: ";
    C1 = input(prompt3);

    %taking input for A2
    prompt4 = "Enter A2: ";
    A2 = input(prompt4);

    %taking input for B2
    prompt5 = "Enter B2: ";
    B2 = input(prompt5);

    %taking input for C2
    prompt6 = "Enter C2: ";
    C2 = input(prompt6);

    %taking input for A3
    prompt7 = "Enter A3: ";
    A3 = input(prompt7);

    %taking input for B3
    prompt8 = "Enter B3: ";
    B3 = input(prompt8);

    %taking input for C3
    prompt9 = "Enter C3: ";
    C3 = input(prompt9);

    %taking input for D1
    prompt10 = "Enter D1: ";
    D1 = input(prompt10);

    %taking input for D2
    prompt11 = "Enter D2: ";
    D2 = input(prompt11);

    %taking input for D3
    prompt12 = "Enter D3: ";
    D3 = input(prompt12);

    %declaring matrix A
    matA = [A1 B1 C1;A2 B2 C3; A3 B3 C3];


    %declaring constant matrix 
    X = [D1;D2:D3];

    %finding determinant of matA
    delD = det(matA);

    %finding determinant of protoV1
    protoV1 = [D1 B1 C1; D2 B2 C2; D3 B3 C3];
    delProtoV1 = det(protoV1);

    %finding determinant of protoV2
    protoV2 = [A1 D1 C1; A2 D2 C2; A3 D3 C3];
    delProtoV2 = det(protoV2);

    %finding determinant of protoV3
    protoV3 = [A1 B1 D1; A2 B2 D2; A3 B3 D3];
    delProtoV3 = det(protoV3);

    %finding values of V1,V2 and V3
    V1 = delProtoV1/delD;
    V2 = delProtoV2/delD;
    V3 = delProtoV3/delD;

    %printing the values of I1, I2 and I3 to the user
    fprintf("Value of V1: %f Volts\n",V1);
    fprintf("Value of V2: %f Volts\n",V2);
    fprintf("Value of V3: %f Volts\n",V3);

end

%##########################Developer info###############################
function devinfo()
    disp("----------------App and Dev Info----------------------");
    disp("App Name: Crammer's Ark");
    disp("App Version: 1.0");
    disp("Date Updated: 18-11-2023");
    disp("Developer: Aryan Karamtoth (SpaciousCoder78)");
    disp("Github Repository: https://github.com/SpaciousCoder78/crammers-ark");

end
