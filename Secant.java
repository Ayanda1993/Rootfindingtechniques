import java.util.*;
class Secant
{
	static float f(float x)
	{
		return ((x*x*x)-(3*x*x)+x+1);
	}
	public static void main(String[] args) {
		int i=1;
		float a,b,m;
		double e=0.0001;
		Scanner in=new Scanner(System.in);
		System.out.println("Enter the value of a & b" );
		a=in.nextFloat();
		b=in.nextFloat();
		if((f(b)-f(a))<0)
			System.out.println("Slope too small");
		else
		{
			m=((a*f(b))-(b*f(a)))/(f(b)-f(a));
			while(Math.abs(f(m))>=0)
			{
				if(f(m)<e)
				{
					System.out.println("Convergent solution");
					break;
				}
			
			    else
			    {
				   System.out.println(f(a)+" "+f(b)+" "+i+" "+f(m)+" "+m);
				   a=b;
				   b=m;
				   m=((a*f(b))-(b*f(a)))/(f(b)-f(a));
				   i=i+1;
			    }
		    }
		    System.out.println(a+" "+b+" "+i+" "+f(m)+" "+m);
		    System.out.println("Root is "+m);
		}
	}
}