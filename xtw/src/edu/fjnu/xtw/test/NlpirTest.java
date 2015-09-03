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
	public void test() throws Exception{
			String testString = "今天在人文楼捡到一部手机,iphone6，屏保图案是个男生，本人联系方式15659119418";
			RunStopWord runStopWord =new RunStopWord();
			GetKeyWord getKeyWord = new GetKeyWord();
			String lostStopWord = runStopWord.fileExcludeStopWord(testString);
			System.out.println(lostStopWord);
			String keywordString = getKeyWord.GetBegin(testString);
			System.out.println(keywordString);
			
		}
	
	
}
