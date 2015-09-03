/**
 * 
 */
package edu.fjnu.xtw.service.impl;

import java.io.IOException;

import com.sun.jna.Native;

import edu.fjnu.xtw.dao.impl.KeyWordDaoImpl;
import edu.fjnu.xtw.dao.inter.KeyWordDaoInter;
import edu.fjnu.xtw.domain.XtwKeyWord;
import edu.fjnu.xtw.nlpir.GetKeyWord;
import edu.fjnu.xtw.nlpir.RunStopWord;
import edu.fjnu.xtw.nlpir.GetKeyWord.CLibrary;
import edu.fjnu.xtw.service.inter.KeyWordServiceInter;

/**
 * @author lzx
 *
 */
public class KeyWordServiceImpl implements KeyWordServiceInter {
	private KeyWordDaoInter keyWordDaoImpl = new KeyWordDaoImpl();
	
	@Override
	public int addKeyWord(String keyWordStr) {
		//将关键词拆分成字符串数组，没一个元素中一个关键词
		String[] keyWordArray = keyWordStr.split("#");
		//创建关键词对象
		XtwKeyWord keyWord = new XtwKeyWord();
		for(int i = 0; i < keyWordArray.length; i++){
			keyWord.setKeyWordById(i+1, keyWordArray[i]);
		}
		int id = (Integer) keyWordDaoImpl.addKeyWord(keyWord);
		return id;
	}

	@Override
	public String getKeyWordString(String detailString) throws Exception {
		RunStopWord runStopWord = new RunStopWord();
		GetKeyWord getKeyWord = new GetKeyWord();
		String resultString = getKeyWord.GetBegin(runStopWord.fileExcludeStopWord(detailString));
		return resultString;
	}

	@Override
	public XtwKeyWord findById(Integer id) {
		return keyWordDaoImpl.findKeyWordById(id);
	}

}
