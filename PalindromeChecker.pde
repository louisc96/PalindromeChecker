public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
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
  String test = onlyLetters(word);
  if(test.equals(reverse(test))){
    return true;
  }
  return false;
}
public String reverse(String str)
{
    String sNew = "";
    for(int i = str.length()-1;  i>=0; i--){
      sNew += str.substring(i - 1, i);
    }
    return sNew;
}
public String onlyLetters(String str1){
  String temp = "";
  for(int i = 0; i<str1.length(); i++)
      if(Character.isLetter(str1.charAt(i)) == true)
        temp += str1.substring(i,i + 1);
  return temp.toLowerCase();
}
