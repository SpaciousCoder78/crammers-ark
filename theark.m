%crammer's ark %

%menu
disp("-----------------------Crammer's Ark-----------------------");    
disp("-----------------------Version 1.0-------------------------");
disp("------Developed By------");
disp("Aryan Karamtoth (SpaciousCoder78)");
disp("------------------------Menu-------------------------------");
disp("1.Solve Crammer's Equation");
disp("2.Exit");
prompt = "Enter your choice: ";
choice = input(prompt);
if choice == 1
    solve()
else 
    disp("Exited the app");
end



function solve()
    disp("test");
    prompt = "Enter matrix";
    mat = input(prompt);
end
