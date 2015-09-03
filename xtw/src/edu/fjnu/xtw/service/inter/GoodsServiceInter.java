/**
 * 
 */
package edu.fjnu.xtw.service.inter;

import edu.fjnu.xtw.domain.XtwGoods;

/**
 * @author lzx
 *
 */
public interface GoodsServiceInter {
	/**
	 * 插入物品记录
	 * @param goods
	 * @return
	 */
	public int addGoods(XtwGoods goods);
	
	/**
	 * 通过id查找物品
	 * @param id
	 * @return
	 */
	public XtwGoods findGoodsById(Integer id);
}
