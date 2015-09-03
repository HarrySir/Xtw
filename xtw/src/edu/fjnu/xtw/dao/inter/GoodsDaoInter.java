/**
 * 
 */
package edu.fjnu.xtw.dao.inter;

import edu.fjnu.xtw.domain.XtwGoods;

/**
 * @author Administrator
 *
 */
public interface GoodsDaoInter {
	/**
	 * 添加一条物品记录
	 * @param goods
	 * @return
	 */
	public Object addGoods(XtwGoods goods);
	
	/**
	 * 通过id查找物品记录
	 * @param id
	 * @return
	 */
	public XtwGoods findById(Integer id);
}
