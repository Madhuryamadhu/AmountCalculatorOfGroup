package com.Capgemini.ownProjs.AmountDeatils;

import java.util.List;

public class AmountDeatilsBean {
    private String userMail;
    private String status;
	private List<String> name;
	private List<String> amount;
	private List<String> reason;
	
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getUserMail() {
		return userMail;
	}
	public void setUserMail(String userMail) {
		this.userMail = userMail;
	}
	public List<String> getName() {
		return name;
	}
	public void setName(List<String> name) {
		this.name = name;
	}

	public List<String> getAmount() {
		return amount;
	}
	public void setAmount(List<String> amount) {
		this.amount = amount;
	}

	public List<String> getReason() {
		return reason;
	}
	public void setReason(List<String> reason) {
		this.reason = reason;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("AmountDeatilsBean [");
		if (name != null) {
			builder.append("name=");
			builder.append(name);
			builder.append(", ");
		}
		if (status != null) {
			builder.append("status=");
			builder.append(status);
			builder.append(", ");
		}
		if (amount != null) {
			builder.append("amount=");
			builder.append(amount);
			builder.append(", ");
		}
		if (reason != null) {
			builder.append("reason=");
			builder.append(reason);
		}
		if (userMail != null) {
			builder.append("userMail=");
			builder.append(userMail);
		}
		builder.append("]");
		return builder.toString();
	}


	
	
}
