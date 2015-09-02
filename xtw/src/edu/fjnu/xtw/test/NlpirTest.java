package edu.fjnu.xtw.test;

import java.io.IOException;

import org.junit.Test;

import edu.fjnu.xtw.nlpir.GetKeyWord;
import edu.fjnu.xtw.nlpir.RunStopWord;

public class NlpirTest {
	/**
	 * 测试提取关键字
	 * past
	 * @throws IOException
	 */
	@Test
	public void test() throws IOException{
			String testString = "今天在人文楼捡到一部手机，iphone6，屏保图案是个男生，本人联系方式15659119418";
			RunStopWord test1 =new RunStopWord();
			GetKeyWord test2 = new GetKeyWord();
			test1.fileExcludeStopWord(testString);
			test2.GetBegin(testString);
			
		}
	
	
}
