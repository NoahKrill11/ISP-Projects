//NOAH KRILL CALCULATOR APP 
//10/4/2020
//THIS IS A FREE TO USE CALCULATOR THAT I MADE FOR MY ISP CLASS
import java.util.*;  
public class calc
{
	//THIS FUNCTION TAKES A NUMBER FROM THE USER AND VALIDATES IT
	//IF THE USER DOESNT INPUT A NUMBER IT EXITS
	//RETURNS NUMBER TO THE FUNCTION FOR LATER CALCULATIONS
	private static int getNum(int num1)
	{
		Scanner cs = new Scanner(System.in);
		try
		{
		num1 = cs.nextInt();
		}	
		catch (Exception E)
		{
			System.out.println("You did not enter a number. Please run the application to try again. ");
			System.exit(0);	
		}
		return num1;
	}
	//THIS FUNCTION ADDS TWO NUMBERS TOGETHER AND PRINTS THE OUTPUT TO THE USER
	private static void addition()
	{
		System.out.println("Please enter the first number you would like to add \n");
		int num1=0;
		num1 = getNum(num1);
		System.out.println("Please enter the second number you would like to add \n");
		int num2 = 0;
		num2 = getNum(num2);
		int num3 = num1 + num2;
		System.out.println("The sum of "+ num1 + " and " + num2  + " = " +num3);
	}
	//THIS FUNCTION SUBTRACTS TWO NUMBERS TOGETHER AND PRINTS THE OUTPUT TO THE USER
	private static void subtraction()
	{
		System.out.println("Please enter the first number you would like to subtract \n");
		int num1 = 0, num2 =0;
		num1 = getNum(num1);
		System.out.println("Please enter the second number you would like to subtract \n");
		num2 = getNum(num2);
		int num3 = num1 - num2;
		System.out.println("The difference of "+ num1 + " and " + num2  + " = " +num3);
		
	}
	//THIS FUNCTION MULTIPLIES TWO NUMBERS TOGETHER AND PRINTS THE OUTPUT TO THE USER
	private static void mult()
	{
		int num1 = 0, num2 =0;
		System.out.println("Please enter the first number you would like to multiply\n");
		num1 = getNum(num1);
		System.out.println("Please enter the second number you would like to multiply\n");
		num2 = getNum(num2);
		int num3 = num1 * num2;
		System.out.println("The product of "+ num1 + " and " + num2  + " = " +num3);
	}
	//THIS FUNCTION DIVDES TWO NUMBERS TOGETHER AND PRINTS THE OUTPUT TO THE USER
	private static void div()
	{
		int num1 = 0, num2 =0;
		System.out.println("Please enter the first number you would like to divide\n");
		num1 = getNum(num1);
		System.out.println("Please enter the second number you would like to divide\n");
		num2 = getNum(num2);
		int num3 = num1 / num2;
		System.out.println("The quotent of "+ num1 + " and " + num2  + " = " +num3);
	}
	//THIS FUNCTION MODS TWO NUMBERS TOGETHER AND PRINTS THE OUTPUT TO THE USER
	private static void mod()
	{
	    int num1 = 0, num2 =0;
		System.out.println("Please enter the first number you would like to mod\n");
		num1 = getNum(num1);
		System.out.println("Please enter the second number you would like to mod\n");
		num2 = getNum(num2);
		int num3 = num1 % num2;
		System.out.println("The mod of "+ num1 + " and " + num2  + " = " +num3);
	}
    public static void main(String[] args)
    {
		Scanner sc = new Scanner(System.in);
		char choice = 'a'; 
		while(choice!='q' &&  choice!='Q')
		{
			System.out.println("Welcome to the calculator\n");
			System.out.println("Please enter the number for the operation you want to complete \n");
			System.out.println("Press + for addition \n");
			System.out.println("Press - for subtraction \n");
			System.out.println("Press * for multiplication \n");
			System.out.println("Press / for division \n");
			System.out.println("Press % for mod \n");
			System.out.println("Press q to quit \n");
			choice = sc.next().charAt(0);
			if (choice == '+')
			{
				addition();
			}
			else if (choice == '-')
			{
				subtraction();
			}
			else if (choice == '*')
			{
				mult();
			}
			else if (choice == '/')
			{
				div();
			}
			else if (choice == '%')
			{
				mod();
			}
			else if (choice == 'Q'|| choice == 'q')
			{}
			else 
			{
				System.out.println("You have entered something incorrect please try again \n");
			}
				
		}
    }
}
