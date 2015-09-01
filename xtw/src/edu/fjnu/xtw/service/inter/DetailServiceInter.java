/**
 * 
 */
package edu.fjnu.xtw.service.inter;

import edu.fjnu.xtw.domain.XtwDetail;



/**
 * @author lzx
 *
 */
public interface DetailServiceInter {
	
	/**
	 * 添加一条具体内容记录,返回新增记录的主键
	 * @param detail
	 * @return
	 */
	public void addDetail(XtwDetail detail);
	
}
