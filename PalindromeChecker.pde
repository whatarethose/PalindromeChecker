public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String temp ="";
  String sWord="";
  for(int b = 0;b < word.length();b++)
  {
    if(Character.isLetter(word.charAt(b)))
    {
      sWord+=word.substring(b,b+1);
    }
  }
  sWord= sWord.toLowerCase();
  for(int a=sWord.length()-1;a>-1;a--)
  {
    temp+= sWord.substring(a,a+1);
  }
  //your code here
  if(temp.equals(sWord))
  {
    return true;
  }
  else
  {
    return false;
  }
}

