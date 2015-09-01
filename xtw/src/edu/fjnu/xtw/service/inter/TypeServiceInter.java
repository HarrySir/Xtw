/**
 * 
 */
package edu.fjnu.xtw.service.inter;

import edu.fjnu.xtw.domain.XtwType;

/**
 * @author lzx
 *
 */
public interface TypeServiceInter {
	/**
	 * 通过类型名称得到类型对象
	 * @param typeName
	 * @return
	 */
	public XtwType getTypeByName(String typeName);
}	
