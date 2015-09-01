/**
 * 
 */
package edu.fjnu.xtw.service.impl;

import com.sun.jna.Native;

import edu.fjnu.xtw.dao.impl.KeyWordDaoImpl;
import edu.fjnu.xtw.dao.inter.KeyWordDaoInter;
import edu.fjnu.xtw.domain.XtwKeyWord;
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
	public String getKeyWordString(String detailString) {
		CLibrary Instance = (CLibrary) Native.loadLibrary("NLPIR",
				CLibrary.class);
		CLibrary instance = (CLibrary)Native.loadLibrary(System.getProperty("user.dir")+"\\NLPIR", CLibrary.class);
		String argu = ".";
		String system_charset = "UTF-8";
		int charset_type = 1;
		int init_flag = CLibrary.Instance.NLPIR_Init(argu, charset_type, "0");
		String resultString = null;
		if (0 == init_flag) {
			resultString = CLibrary.Instance.NLPIR_GetLastErrorMsg();
			System.err.println("初始化失败！fail reason is " + resultString);
			return null;
		}
		instance.NLPIR_ImportUserDict(System.getProperty("user.dir")+"\\source\\userdic.txt");
		resultString = instance.NLPIR_GetKeyWords(detailString,10,false);
		return resultString;
	}

	@Override
	public XtwKeyWord findById(Integer id) {
		return keyWordDaoImpl.findKeyWordById(id);
	}

}
