/**
 * 
 */
package edu.fjnu.xtw.dao.inter;

import edu.fjnu.xtw.domain.XtwKeyWord;

/**
 * @author Administrator
 *
 */
public interface KeyWordDaoInter {
	/**
	 * 添加一条关键词记录，返回主键ID
	 * @param keyWord
	 * @return
	 */
	public Object addKeyWord(XtwKeyWord keyWord);
	
	/**
	 * 通过ID获取关键词对象
	 * @param id
	 * @return
	 */
	public XtwKeyWord findKeyWordById(Integer id);
}
