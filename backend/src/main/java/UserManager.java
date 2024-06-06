import dataManagement.Database;

import java.util.Scanner;

public class UserManager {
    public void start(){
        Scanner scanner = new Scanner(System.in);
        int code;

        try{
            code = menu(1);
            switch(code){
                case 1: //Admin admin = new Admin(); break;
                case 2:
            }

        }  catch(Exception e){
            e.printStackTrace();
        }
    }

    public int menu(int code) throws Exception{
        Scanner scanner = new Scanner(System.in);
        int result;
        clearConsole();
        switch (code){
            case 1:
                System.out.println("Please choose your role:");
                System.out.println("1. Admin");
                System.out.println("2. Teacher");
                System.out.println("3. Student");
                System.out.println("4. exit");
                result = scanner.nextInt();
                break;
            default: throw new Exception("Invalid choice");
        }
        return result;
    }

    public void clearConsole() {
        System.out.print("\033[H\033[2J");
        System.out.flush();
    }

    public String login(String info) throws Exception{
        return Process(info, "login");
    }

    public String signup(String info) throws Exception{
        return Process(info, "signup");
    }

    private String Process(String info, String stage){
        String username = info.split("\\$")[0];
        String password = info.split("\\$")[1];
        String role = info.split("\\$")[2];

        switch (stage){
            case "login":{
                if(!Database.getInstance().getTotalUsernamePassword().containsKey(username)){
                    return "not found";
                }
                if(Database.getInstance().getTotalUsernamePassword().containsKey(password)){
                    if(Database.getInstance().getTotalUsernamePassword().get(username).equals(password)){
                        return "done";
                    } else{
                        return "password and username does not match";
                    }
                }else{
                    return "wrong password";
                }
            }
            case "signup":{
                if(Database.getInstance().getTotalUsernamePassword().containsKey(username)){
                    return "username already taken";
                }
                if(PasswordCheck(password).equals("done")){
                    return "success";
                } else{
                    return PasswordCheck(password);
                }
            } default: return "error occurred";
        }
    }

    private String PasswordCheck(String password){
        boolean NumberOfCharacter = password.length() >= 8;
        boolean ConsistNumber = password.matches("[0-9]");
        boolean consistUpperLower =password.matches("[a-z]") && password.matches("[A-Z]");
        if(NumberOfCharacter && ConsistNumber && consistUpperLower){
            return "done";
        } else if(!NumberOfCharacter){
            return "the number of characters must be more than 8";
        } else if(!ConsistNumber){
            return "the password must have numbers";
        } else if(!consistUpperLower){
            return "the password must have upper case and lower letters";
        } else{
            return "invalid";
        }
    }
}
