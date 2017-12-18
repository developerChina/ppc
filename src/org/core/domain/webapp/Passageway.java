package org.core.domain.webapp;

import java.io.Serializable;

public class Passageway implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer passagewayID; //通道id
	private String passagewayName; //通道名称
	private String ControllerSN; //控制SN
	private String ControllerIP; //控制IP
	private String ptype; //通道类型
	private Integer pno;//通道编号
	private String pjempno;//卡号
	//toString
	
	
	//getset
		public Integer getPassagewayID() {
				return passagewayID;
			}
		
	@Override
		public String toString() {
			return "Passageway [passagewayID=" + passagewayID + ", passagewayName=" + passagewayName + ", ControllerSN="
					+ ControllerSN + ", ControllerIP=" + ControllerIP + ", ptype=" + ptype + ", pno=" + pno + "]";
		}

	public void setPassagewayID(Integer passagewayID) {
		this.passagewayID = passagewayID;
	}
	public String getPassagewayName() {
		return passagewayName;
	}
	public void setPassagewayName(String passagewayName) {
		this.passagewayName = passagewayName;
	}
	public String getControllerSN() {
		return ControllerSN;
	}
	public void setControllerSN(String controllerSN) {
		ControllerSN = controllerSN;
	}
	public String getControllerIP() {
		return ControllerIP;
	}
	public void setControllerIP(String controllerIP) {
		ControllerIP = controllerIP;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	//无参构造
	public Passageway() {
		super();
	}
	public String getPtype() {
		return ptype;
	}
	public void setPtype(String ptype) {
		this.ptype = ptype;
	}

	public Integer getPno() {
		return pno;
	}

	public void setPno(Integer pno) {
		this.pno = pno;
	}

	public String getPjempno() {
		return pjempno;
	}

	public void setPjempno(String pjempno) {
		this.pjempno = pjempno;
	}

}
