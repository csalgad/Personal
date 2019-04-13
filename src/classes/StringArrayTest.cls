public class StringArrayTest {

    public static List<String> generateStringArray(integer stop)
    {
        List<String> testStringArray = new List<String>();
        string s = '0';
        for(integer i = 0; i < stop; i++)
            {
                testStringArray.add('Test ' + i);
            }
            
		System.debug('Test String Array Length: '+ testStringArray.size());      
        return testStringArray;
    }
}