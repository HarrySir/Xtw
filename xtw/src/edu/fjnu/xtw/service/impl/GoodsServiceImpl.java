/**
 * 
 */
package edu.fjnu.xtw.service.impl;

import edu.fjnu.xtw.dao.impl.GoodsDaoImpl;
import edu.fjnu.xtw.dao.inter.GoodsDaoInter;
import edu.fjnu.xtw.domain.XtwGoods;
import edu.fjnu.xtw.service.inter.GoodsServiceInter;

/**
 * @author Administrator
 *
 */
public class GoodsServiceImpl implements GoodsServiceInter {
	private GoodsDaoInter goodsDaoImpl = new GoodsDaoImpl();
	
	@Override
	public int addGoods(XtwGoods goods) {
		return (Integer)goodsDaoImpl.addGoods(goods);
	}

	@Override
	public XtwGoods findGoodsById(Integer id) {
		return goodsDaoImpl.findById(id);
	}

}
