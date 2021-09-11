//wont work for numbers beyond the long range 
class Solution {
    public int myAtoi(String s) {
        s=s.trim();long res=0;
        boolean isnegative=false;
        int start=0;
         
        if(s.startsWith("-"))
        {
            start=1;
            isnegative=true;
        }
        else if( s.startsWith("+"))
        {
            start=1;
           
        }
        else 
        {
            start=0;
          
        }
        
            for(int i=start;i<s.length();i++)
            {
                if((s.charAt(i)-'0')>=0&&(s.charAt(i)-'0')<=9)
                       {
                           
                           res=res*10+(s.charAt(i)-'0');
                           
                       }
                else
                {
                       break;
                }
            }
        if(isnegative)
        {
            res= (res*(-1));
        }
                       
            if(res>Integer.MAX_VALUE)
            {
                return Integer.MAX_VALUE;
            }
            else if(res<Integer.MIN_VALUE)
            {
                return Integer.MIN_VALUE;
            }
        
        
       
        return (int)res;
        
        
        
                     
                       
        
    }
}
//best soln
class Solution {
    public int myAtoi(String s) {
        s=s.trim();int res=0;int prevres=0;
        boolean isnegative=false;int sign=1;       int start=0;
         
        if(s.startsWith("-"))
        {
            start=1;
            isnegative=true;
            sign=-1;
        }
        else if( s.startsWith("+"))
        {
            start=1;
           
        }
        else 
        {
            start=0;
          
        }
        
            for(int i=start;i<s.length();i++)
            {
                
                if((s.charAt(i)-'0')>=0&&(s.charAt(i)-'0')<=9)
                       {
                           prevres=res;
                           res=res*10+(s.charAt(i)-'0');
                           
                       }
                else
                {
                       break;
                }
        if(prevres!=res/10)
        {
            if(isnegative)
            {
                return Integer.MIN_VALUE;
            }
            return Integer.MAX_VALUE;
        }
            
        
                       
            } 
        
       
        return res*sign;
        
        
        
                     
                       
        
    }
}
