package com.formatter.model;


/**
 * <p>Settings used to build Formatter application.</p>
 * 
 * @author <a href="mailto:elabedouss@gmail.com">Oussama El Abed</a>
 *
 */
public class Settings {
	private String mailHost;

	private String mailPort;

	private String mailTo;

	private String mailFromUser;

	private String mailFromUserPassword;

	private String dataPath;

	private String emailTemplatePath;

	public String getMailHost() {
		return mailHost;
	}

	public void setMailHost(String mailHost) {
		this.mailHost = mailHost;
	}

	public String getMailPort() {
		return mailPort;
	}

	public void setMailPort(String mailPort) {
		this.mailPort = mailPort;
	}

	public String getMailTo() {
		return mailTo;
	}

	public void setMailTo(String mailTo) {
		this.mailTo = mailTo;
	}

	public String getMailFromUser() {
		return mailFromUser;
	}

	public void setMailFromUser(String mailFromUser) {
		this.mailFromUser = mailFromUser;
	}

	public String getMailFromUserPassword() {
		return mailFromUserPassword;
	}

	public void setMailFromUserPassword(String mailFromUserPassword) {
		this.mailFromUserPassword = mailFromUserPassword;
	}

	public String getDataPath() {
		return Settings.class.getProtectionDomain().getCodeSource().getLocation().getPath() + dataPath;
	}

	public void setDataPath(String dataPath) {
		this.dataPath = dataPath;
	}

	public String getEmailTemplatePath() {
		return Settings.class.getProtectionDomain().getCodeSource().getLocation().getPath() + emailTemplatePath;
	}

	public void setEmailTemplatePath(String emailTemplatePath) {
		this.emailTemplatePath = emailTemplatePath;
	}

	public boolean isMailSettingsValid() {
		boolean isValid = false;
		isValid = null != this.mailHost && null != this.mailPort && null != this.mailTo && null != this.mailFromUser
				&& null != this.mailFromUserPassword;
		return isValid;
	}
}
