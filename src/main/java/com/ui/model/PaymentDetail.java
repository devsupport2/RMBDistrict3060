package com.ui.model;

public class PaymentDetail {
	public PaymentDetail(int paymentDetailId, int transactionForId,
			int rotaryYearId, int memberId, int memberCategoryId,
			float paymentAmount, int currencyId, String transactionForName,
			String rotaryYearTitle, String memberCategoryName,
			String memberNameTitle, String memberFirstName,
			String memberMiddleName, String memberLastName, String currencyCode) {
		super();
		this.paymentDetailId = paymentDetailId;
		this.transactionForId = transactionForId;
		this.rotaryYearId = rotaryYearId;
		this.memberId = memberId;
		this.memberCategoryId = memberCategoryId;
		this.paymentAmount = paymentAmount;
		this.currencyId = currencyId;
		this.transactionForName = transactionForName;
		this.rotaryYearTitle = rotaryYearTitle;
		this.memberCategoryName = memberCategoryName;
		this.memberNameTitle = memberNameTitle;
		this.memberFirstName = memberFirstName;
		this.memberMiddleName = memberMiddleName;
		this.memberLastName = memberLastName;
		this.currencyCode = currencyCode;
	}
	
	public PaymentDetail(int memberId, int sequence,
			String paymentNumber, String paymentStatus, String paymentMethod,
			String bankName, String branchName, String chequeNo, 
			String transactionDate, float paidAmount, int createdBy, String ipAddress) {
		super();
		this.memberId = memberId;
		this.sequence = sequence;
		this.paymentNumber = paymentNumber;
		this.paymentStatus = paymentStatus;
		this.paymentMethod = paymentMethod;
		this.bankName = bankName;
		this.branchName = branchName;
		this.chequeNo = chequeNo;
		this.transactionDate = transactionDate;
		this.paidAmount = paidAmount;
		this.createdBy = createdBy;
		this.ipAddress = ipAddress;		
	}
	
	public PaymentDetail(int memberId,int paymentDetailId, int sequence,
			String paymentNumber, String paymentStatus, String paymentMethod,
			String bankName, String branchName, String chequeNo, 
			String transactionDate, float paidAmount, int createdBy, String ipAddress) {
		super();
		this.memberId = memberId;
		this.paymentDetailId = paymentDetailId;
		this.sequence = sequence;
		this.paymentNumber = paymentNumber;
		this.paymentStatus = paymentStatus;
		this.paymentMethod = paymentMethod;
		this.bankName = bankName;
		this.branchName = branchName;
		this.chequeNo = chequeNo;
		this.transactionDate = transactionDate;
		this.paidAmount = paidAmount;
		this.createdBy = createdBy;
		this.ipAddress = ipAddress;		
	}
	public PaymentDetail(int memberCategoryId,int memberId, int sequence,
			String paymentNumber, String paymentStatus, 
			int rotaryYearId,float rmbdfees,float rmbfees,
			 float paid_amount, int createdBy, String ipAddress,int transactionForId,int currencyId,String status) {
		super();
		this.memberCategoryId=memberCategoryId;
		this.memberId = memberId;
		this.sequence = sequence;
		this.paymentNumber = paymentNumber;
		this.paymentStatus = paymentStatus;
		this.rotaryYearId=rotaryYearId;
		this.rmbdfees=rmbdfees;
		this.rmbfees=rmbfees;
		this.paid_amount = paid_amount;
		this.createdBy = createdBy;
		this.ipAddress = ipAddress;		
		this.transactionForId=transactionForId;
		this.currencyId=currencyId;
		this.status=status;
	}
	
	public PaymentDetail(int sequence,
			String paymentNumber, int rotaryYearId, int memberId, int memberCategoryId,
			String paymentStatus, String paymentMethod,
			String bankName, String branchName, String chequeNo, 
			String transactionDate, float paidAmount, int createdBy, String ipAddress) {
		super();		
		this.sequence = sequence;
		this.paymentNumber = paymentNumber;
		this.rotaryYearId = rotaryYearId;
		this.memberId = memberId;
		this.memberCategoryId = memberCategoryId;		
		this.paymentStatus = paymentStatus;
		this.paymentMethod = paymentMethod;
		this.bankName = bankName;
		this.branchName = branchName;
		this.chequeNo = chequeNo;
		this.transactionDate = transactionDate;
		this.paidAmount = paidAmount;
		this.createdBy = createdBy;
		this.ipAddress = ipAddress;		
	}
	
	public PaymentDetail(int paymentDetailId, int transactionForId,
			int rotaryYearId, int memberId, int memberCategoryId,
			float paymentAmount, int currencyId, String paymentStatus, 
			String paymentMethod, String bankName, String branchName, String chequeNo, 
			float paidAmount, String transactionDate, String transactionForName,
			String rotaryYearTitle, String memberCategoryName,
			String memberNameTitle, String memberFirstName,
			String memberMiddleName, String memberLastName, String currencyCode) {
		super();
		this.paymentDetailId = paymentDetailId;
		this.transactionForId = transactionForId;
		this.rotaryYearId = rotaryYearId;
		this.memberId = memberId;
		this.memberCategoryId = memberCategoryId;
		this.paymentAmount = paymentAmount;
		this.currencyId = currencyId;
		this.paymentStatus = paymentStatus;
		this.paymentMethod = paymentMethod;	
		this.bankName = bankName;
		this.branchName = branchName;
		this.chequeNo = chequeNo;		
		this.paidAmount = paidAmount;
		this.transactionDate = transactionDate;
		this.transactionForName = transactionForName;
		this.rotaryYearTitle = rotaryYearTitle;
		this.memberCategoryName = memberCategoryName;
		this.memberNameTitle = memberNameTitle;
		this.memberFirstName = memberFirstName;
		this.memberMiddleName = memberMiddleName;
		this.memberLastName = memberLastName;
		this.currencyCode = currencyCode;
	}
	
	public PaymentDetail(int user_role_id,int fellowship_id,String fellowship_name,int paymentDetailId, int transactionForId,
			int rotaryYearId, int memberId, int memberCategoryId,
			float paymentAmount, int currencyId, String paymentStatus, 
			String paymentMethod, String bankName, String branchName, String chequeNo, 
			float paidAmount, String transactionDate, String transactionForName,
			String rotaryYearTitle, String memberCategoryName,
			String memberNameTitle, String memberFirstName,
			String memberMiddleName, String memberLastName, String currencyCode) {
		super();
		this.paymentDetailId = paymentDetailId;
		this.transactionForId = transactionForId;
		this.rotaryYearId = rotaryYearId;
		this.memberId = memberId;
		this.memberCategoryId = memberCategoryId;
		this.paymentAmount = paymentAmount;
		this.currencyId = currencyId;
		this.paymentStatus = paymentStatus;
		this.paymentMethod = paymentMethod;	
		this.bankName = bankName;
		this.branchName = branchName;
		this.chequeNo = chequeNo;		
		this.paidAmount = paidAmount;
		this.transactionDate = transactionDate;
		this.transactionForName = transactionForName;
		this.rotaryYearTitle = rotaryYearTitle;
		this.memberCategoryName = memberCategoryName;
		this.memberNameTitle = memberNameTitle;
		this.memberFirstName = memberFirstName;
		this.memberMiddleName = memberMiddleName;
		this.memberLastName = memberLastName;
		this.currencyCode = currencyCode;
		this.fellowship_name=fellowship_name;
		this.fellowship_id=fellowship_id;
		this.user_role_id=user_role_id;
	}
	
	public PaymentDetail(int paymentDetailId, int transactionForId,
			int rotaryYearId, int memberId, int memberCategoryId,
			float paymentAmount, int currencyId, String paymentStatus, 
			String paymentMethod, String transactionForName,
			String rotaryYearTitle, String memberCategoryName,
			String memberNameTitle, String memberFirstName,
			String memberMiddleName, String memberLastName, String currencyCode) {
		super();
		this.paymentDetailId = paymentDetailId;
		this.transactionForId = transactionForId;
		this.rotaryYearId = rotaryYearId;
		this.memberId = memberId;
		this.memberCategoryId = memberCategoryId;
		this.paymentAmount = paymentAmount;
		this.currencyId = currencyId;
		this.paymentStatus = paymentStatus;
		this.paymentMethod = paymentMethod;		
		this.transactionForName = transactionForName;
		this.rotaryYearTitle = rotaryYearTitle;
		this.memberCategoryName = memberCategoryName;
		this.memberNameTitle = memberNameTitle;
		this.memberFirstName = memberFirstName;
		this.memberMiddleName = memberMiddleName;
		this.memberLastName = memberLastName;
		this.currencyCode = currencyCode;
	}
	public PaymentDetail(int transactionForId, int rotaryYearId, int memberId,
			int memberCategoryId, float paymentAmount, int currencyId,
			String paymentStatus, String status,
			int createdBy, String ipAddress) {
		super();		
		this.transactionForId = transactionForId;
		this.rotaryYearId = rotaryYearId;
		this.memberId = memberId;
		this.memberCategoryId = memberCategoryId;
		this.paymentAmount = paymentAmount;
		this.currencyId = currencyId;
		this.paymentStatus = paymentStatus;		
		this.status = status;
		this.createdBy = createdBy;
		this.ipAddress = ipAddress;
	}
	public PaymentDetail(int paymentDetailId, int sequence,
			String paymentNumber, int transactionForId, int rotaryYearId,
			int memberId, int memberCategoryId, float paymentAmount,
			int currencyId, String paymentStatus, String paymentMethod,
			String createdDate) {
		super();
		this.paymentDetailId = paymentDetailId;
		this.sequence = sequence;
		this.paymentNumber = paymentNumber;
		this.transactionForId = transactionForId;
		this.rotaryYearId = rotaryYearId;
		this.memberId = memberId;
		this.memberCategoryId = memberCategoryId;
		this.paymentAmount = paymentAmount;
		this.currencyId = currencyId;
		this.paymentStatus = paymentStatus;
		this.paymentMethod = paymentMethod;
		this.createdDate = createdDate;
	}
	private int paymentDetailId;
	private int sequence;
	private String paymentNumber;
	private int transactionForId;
	private int rotaryYearId;
	private int memberId;
	private int memberCategoryId;
	private float paymentAmount;
	private int currencyId;
	private String paymentStatus;
	private String paymentMethod;
	private String status;
	private int createdBy;
	private String createdDate;
	private String ipAddress;
	private String transactionForName;
	private String rotaryYearTitle;
	private String memberCategoryName;
	private String memberNameTitle;
	private String memberFirstName;
	private String memberMiddleName;
	private String memberLastName;
	private String currencyCode;
	private String bankName;
	private String branchName;
	private String chequeNo;
	private float paidAmount;
	private String transactionDate;
	private int fellowship_id;
	private String fellowship_name;
	private int user_role_id;
	private float rmbdfees;
	private float rmbfees;
	private float paid_amount;
	
	
	public float getPaid_amount() {
		return paid_amount;
	}

	public void setPaid_amount(float paid_amount) {
		this.paid_amount = paid_amount;
	}

	public float getRmbdfees() {
		return rmbdfees;
	}

	public void setRmbdfees(float rmbdfees) {
		this.rmbdfees = rmbdfees;
	}

	public float getRmbfees() {
		return rmbfees;
	}

	public void setRmbfees(float rmbfees) {
		this.rmbfees = rmbfees;
	}

	public int getUser_role_id() {
		return user_role_id;
	}

	public void setUser_role_id(int user_role_id) {
		this.user_role_id = user_role_id;
	}

	public int getFellowship_id() {
		return fellowship_id;
	}

	public void setFellowship_id(int fellowship_id) {
		this.fellowship_id = fellowship_id;
	}

	public String getFellowship_name() {
		return fellowship_name;
	}

	public void setFellowship_name(String fellowship_name) {
		this.fellowship_name = fellowship_name;
	}

	public void setPaymentDetailId(int paymentDetailId) {
		this.paymentDetailId = paymentDetailId;
	}

	public void setSequence(int sequence) {
		this.sequence = sequence;
	}

	public void setPaymentNumber(String paymentNumber) {
		this.paymentNumber = paymentNumber;
	}

	public void setTransactionForId(int transactionForId) {
		this.transactionForId = transactionForId;
	}

	public void setRotaryYearId(int rotaryYearId) {
		this.rotaryYearId = rotaryYearId;
	}

	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}

	public void setMemberCategoryId(int memberCategoryId) {
		this.memberCategoryId = memberCategoryId;
	}

	public void setPaymentAmount(float paymentAmount) {
		this.paymentAmount = paymentAmount;
	}

	public void setCurrencyId(int currencyId) {
		this.currencyId = currencyId;
	}

	public void setPaymentStatus(String paymentStatus) {
		this.paymentStatus = paymentStatus;
	}

	public void setPaymentMethod(String paymentMethod) {
		this.paymentMethod = paymentMethod;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public void setCreatedBy(int createdBy) {
		this.createdBy = createdBy;
	}

	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}

	public void setIpAddress(String ipAddress) {
		this.ipAddress = ipAddress;
	}

	public void setTransactionForName(String transactionForName) {
		this.transactionForName = transactionForName;
	}

	public void setRotaryYearTitle(String rotaryYearTitle) {
		this.rotaryYearTitle = rotaryYearTitle;
	}

	public void setMemberCategoryName(String memberCategoryName) {
		this.memberCategoryName = memberCategoryName;
	}

	public void setMemberNameTitle(String memberNameTitle) {
		this.memberNameTitle = memberNameTitle;
	}

	public void setMemberFirstName(String memberFirstName) {
		this.memberFirstName = memberFirstName;
	}

	public void setMemberMiddleName(String memberMiddleName) {
		this.memberMiddleName = memberMiddleName;
	}

	public void setMemberLastName(String memberLastName) {
		this.memberLastName = memberLastName;
	}

	public void setCurrencyCode(String currencyCode) {
		this.currencyCode = currencyCode;
	}

	public void setBankName(String bankName) {
		this.bankName = bankName;
	}

	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}

	public void setChequeNo(String chequeNo) {
		this.chequeNo = chequeNo;
	}

	public void setPaidAmount(float paidAmount) {
		this.paidAmount = paidAmount;
	}

	public void setTransactionDate(String transactionDate) {
		this.transactionDate = transactionDate;
	}

	public int getPaymentDetailId() {
		return paymentDetailId;
	}
	public int getSequence() {
		return sequence;
	}
	public String getPaymentNumber() {
		return paymentNumber;
	}
	public int getTransactionForId() {
		return transactionForId;
	}
	public int getRotaryYearId() {
		return rotaryYearId;
	}
	public int getMemberId() {
		return memberId;
	}
	public int getMemberCategoryId() {
		return memberCategoryId;
	}
	public float getPaymentAmount() {
		return paymentAmount;
	}
	public int getCurrencyId() {
		return currencyId;
	}
	public String getPaymentStatus() {
		return paymentStatus;
	}
	public String getPaymentMethod() {
		return paymentMethod;
	}
	public String getStatus() {
		return status;
	}
	public int getCreatedBy() {
		return createdBy;
	}
	public String getCreatedDate() {
		return createdDate;
	}
	public String getIpAddress() {
		return ipAddress;
	}
	public String getTransactionForName() {
		return transactionForName;
	}
	public String getRotaryYearTitle() {
		return rotaryYearTitle;
	}
	public String getMemberCategoryName() {
		return memberCategoryName;
	}
	public String getMemberNameTitle() {
		return memberNameTitle;
	}
	public String getMemberFirstName() {
		return memberFirstName;
	}
	public String getMemberMiddleName() {
		return memberMiddleName;
	}
	public String getMemberLastName() {
		return memberLastName;
	}
	public String getCurrencyCode() {
		return currencyCode;
	}

	public String getBankName() {
		return bankName;
	}

	public String getBranchName() {
		return branchName;
	}

	public String getChequeNo() {
		return chequeNo;
	}

	public float getPaidAmount() {
		return paidAmount;
	}

	public String getTransactionDate() {
		return transactionDate;
	}	
}
