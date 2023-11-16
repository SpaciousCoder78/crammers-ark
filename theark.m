%crammer's ark %

%menu

%count variable to keep the menu loop alive
count = 1;
while count==1
    %calling menu function
    count=menu();
end

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

    end
end


%solving matrix function
function solve()
    disp("test");
    prompt = "Enter matrix";
    mat = input(prompt);
    menu();
end
