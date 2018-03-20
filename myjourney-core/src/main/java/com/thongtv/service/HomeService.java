package com.thongtv.service;

import java.util.List;

import org.opencms.file.CmsUser;

/***
 * 
 * @author thong.tv
 *
 */

public interface HomeService {

	/**
	 * get and save info user into database.
	 */
	public boolean saveInfoUserContact();
	
	/**
	 * send mail function.
	 */
	public boolean sendMail(String mailTo, String mailSubject, String mailContent);

	/**
     * get list users in opencms when out of system.
     * @return
     */
    public List<CmsUser> getOpenCmsUsers();
    
}
