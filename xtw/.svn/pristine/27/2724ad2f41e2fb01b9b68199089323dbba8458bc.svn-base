/**
 * 
 */
package edu.fjnu.xtw.service.inter;

import edu.fjnu.xtw.domain.XtwKeyWord;

/**
 * @author Administrator
 *
 */
public interface KeyWordServiceInter {
	/**
	 * 参数为提取关键词后的字符串，先把转换成数组，封装到对象中再插入
	 * @param keyWordStr
	 * @return
	 */
	public int addKeyWord(String keyWordStr);
	
	/**
	 * 得到所给的详细描述当中的关键字
	 * @param detailString
	 * @return
	 */
	public String getKeyWordString (String detailString);
	
	/**
	 * 通过ID查找关键词记录
	 * @param id
	 * @return
	 */
	public XtwKeyWord findById(Integer id);
}
