//zigzag
class Solution {
    public String convert(String s, int numRows) {
        int l=0;
       StringBuilder[] sb=new StringBuilder[numRows];
        for(int i=0;i<numRows;i++)
        {
            sb[i]=new StringBuilder();
            
        }
        while(l<s.length())
        {
            for(int i=0;i<numRows&&l<s.length();i++,l++)
            {
                sb[i].append(s.charAt(l));
            }
            for(int j=numRows-2;j>0&&l<s.length();j--,l++)
            {
                sb[j].append(s.charAt(l));
            }
        }
        StringBuilder res=new StringBuilder();
        for(int i=0;i<numRows;i++)
        {
            res=res.append(sb[i]);
        }
        return res.toString();
    }
}
