package com.boot.security.server.model;

import java.util.Date;

public class Background extends BaseEntity<Long> {

	private String bgImage;
	private String bgDesc;

	public String getBgImage() {
		return bgImage;
	}
	public void setBgImage(String bgImage) {
		this.bgImage = bgImage;
	}
	public String getBgDesc() {
		return bgDesc;
	}
	public void setBgDesc(String bgDesc) {
		this.bgDesc = bgDesc;
	}

}
