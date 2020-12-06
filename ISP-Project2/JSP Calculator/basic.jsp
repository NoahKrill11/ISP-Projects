<HTML>
	<BODY>
		<link rel="stylesheet" href="style.css" />
			<H3>
				<CENTER>
				<%
				
				if (request.getParameter("power")!=null)
				{
				try
				{
				int num1= Integer.parseInt(request.getParameter("op4"));
				int num2= Integer.parseInt(request.getParameter("op5"));
					
					int pow=1;
					for(int i=1; i<=num2;++i)
					{
						pow*=num1;
					}
					out.println(num1 + " raised to the " +num2 +" = " + pow);
				}
				catch(Exception E)
				{
					out.println("Not valid number\n" );
				}
				}

				if(request.getParameter("Mod")!=null)
				{
				try{
					// parsing the strings passes frim calc to numbers
					int num1= Integer.parseInt(request.getParameter("op1"));
					int num2= Integer.parseInt(request.getParameter("op2"));
					int num3 = num1 % num2;
						out.println("The mod of "+ num1 + " and " +num2 + " = " +num3);
				}
				catch (Exception E)
				{ 
					out.println("Mod can only have integer numbers try again\n" );
				}
				}
				if (request.getParameter("Squared")!=null)
				{
				try
				{
				float num1= Float.parseFloat(request.getParameter("op3"));
					
					float num2 = num1*num1;
					out.println(num1 + " squared is " +num2);
				}
				catch(Exception E)
				{
					out.println("Not valid number\n" );
				}
				}
				

				if (request.getParameter("fact")!=null)
				{
				try
				{
				long num1= Long.parseLong(request.getParameter("op3"));
					long fact=1;
					if(num1>20|| num1<0)
					{
						out.println(" You can only enter a factorial between 0 and 20 " );
					}
					else
					{
					for(int i=1; i<=num1;++i)
					{
						fact=fact*i;
					}

					out.println(num1 +" factorialized is " + fact);
				}
				}
				catch(Exception E)
				{
					out.println("The number can only be an integer" );
				}
			}
				if(request.getParameter("fact")==null&&request.getParameter("mod")==null&& request.getParameter("power")==null&&request.getParameter("Squared")==null)
				try 
				{
					float num4= Float.parseFloat(request.getParameter("op1"));
					float num5= Float.parseFloat(request.getParameter("op2"));
						
				if(request.getParameter("Add")!=null)
				{

					float num3 = num4 +num5;
					out.println("The sum of "+ num4 + " and " +num5 + " = " +num3);
				}
				   
				if(request.getParameter("Mult")!=null)
				{

					float num3 = num4 * num5;
					out.println("The product of "+ num4 + " and " +num5 + " = " +num3);
				}

				if(request.getParameter("Subtract")!=null)
				{

					float num3 = num4 - num5;
					out.println("The difference between "+ num4 + " and " +num5 + " = " +num3);
				}

				if(request.getParameter("Divide")!=null)
				{

					float num3 = num4/ num5;
					out.println("The quotent of "+ num4+ " and " +num5+ " = " +num3);
				}
			}
				catch (Exception E)
					{ 
						out.println("You have entered one of the numbers wrong try again\n" );
				}
				
				%>
				<p> Thanks for supporting me by using this calculator! </p>
				</CENTER>
			</H3>
	</BODY>
</HTML>