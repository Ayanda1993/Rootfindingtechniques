import java.util.*;
class Newton
{
	static float f(float x)
	{
		return ((x*x*x)-(3*x*x)+x+1);
	}
	static float f1(float x)
	{
		return ((3*x*x)-(2*x)+1);
	}
	public static void main(String[] args) {
		int i=1;
		float a,m;
		double e=0.0001;
		Scanner in=new Scanner(System.in);
		System.out.println("Enter the value of a " );
		a=in.nextFloat();
		if(f1(a)<0)
			System.out.println("Slope too small");
		else
		{
			m=a-(f(a)/f1(a));
			while(Math.abs(f(m))>=0)
			{
				if(f(m)<e)
				{
					System.out.println("Convergent solution");
					break;
				}
			
			    else
			    {
				   System.out.println(a+" "+f(a)+" "+i+" "+m+" "+f(m));
				   a=m;
				   m=a-(f(a)/f1(a));
				   i=i+1;
			    }
		    }
		    System.out.println(a+" "+i+" "+f(m)+" "+m);
		    System.out.println("Root is "+m);
		}
	}
}