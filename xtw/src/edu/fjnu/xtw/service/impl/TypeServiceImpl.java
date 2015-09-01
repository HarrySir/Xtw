/**
 * 
 */
package edu.fjnu.xtw.service.impl;

import edu.fjnu.xtw.dao.impl.TypeDaoImpl;
import edu.fjnu.xtw.dao.inter.TypeDaoInter;
import edu.fjnu.xtw.domain.XtwType;
import edu.fjnu.xtw.service.inter.TypeServiceInter;

/**
 * @author lzx
 *
 */
public class TypeServiceImpl implements TypeServiceInter {
	private TypeDaoInter typeDaoImpl = new TypeDaoImpl();
	
	@Override
	public XtwType getTypeByName(String typeName) {
		return typeDaoImpl.findByName(typeName);
	}

}
