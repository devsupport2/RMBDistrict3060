package com.ui.model;

public class MemberThankYouSlip {

      public MemberThankYouSlip(int fellowship_id,String fellowship_name,int thankYouSlipId, int toMemberId, String toFirstName, String toMiddleName, String toLastName,
            String fromFirstName, String fromLastName, float amount, String slipDate, String businessType, String referralType, String comments, int createdBy) {
    super();
    this.fellowship_id = fellowship_id;
    this.fellowship_name = fellowship_name;
    this.thankYouSlipId = thankYouSlipId;
    this.toMemberId = toMemberId;
    this.toFirstName = toFirstName;
    this.toMiddleName = toMiddleName;
    this.toLastName = toLastName;
    this.fromFirstName = fromFirstName;
    this.fromLastName = fromLastName;
    this.amount = amount;
    this.slipDate = slipDate;
    this.businessType = businessType;
    this.referralType = referralType;
    this.comments = comments;
    this.createdBy = createdBy;
    
    
  }

      
      public MemberThankYouSlip(int thankYouSlipId, int toMemberId, String toFirstName, String toMiddleName, String toLastName,
              String fromFirstName, String fromLastName, float amount, String slipDate, String businessType, String referralType, String comments, int createdBy) {
      super();

      this.thankYouSlipId = thankYouSlipId;
      this.toMemberId = toMemberId;
      this.toFirstName = toFirstName;
      this.toMiddleName = toMiddleName;
      this.toLastName = toLastName;
      this.fromFirstName = fromFirstName;
      this.fromLastName = fromLastName;
      this.amount = amount;
      this.slipDate = slipDate;
      this.businessType = businessType;
      this.referralType = referralType;
      this.comments = comments;
      this.createdBy = createdBy;
      
      
    }


      public MemberThankYouSlip(int thankYouSlipId, int toMemberId, String memberFirstName, String memberMiddleName,
            String memberLastName, float amount, String slipDate, String businessType, String referralType,
            String comments, int createdBy) {
        super();
        this.thankYouSlipId = thankYouSlipId;
        this.toMemberId = toMemberId;
        this.memberFirstName = memberFirstName;
        this.memberMiddleName = memberMiddleName;
        this.memberLastName = memberLastName;
        this.amount = amount;
        this.slipDate = slipDate;
        this.businessType = businessType;
        this.referralType = referralType;
        this.comments = comments;
        this.createdBy = createdBy;
    }
      public MemberThankYouSlip(int thankYouSlipId, int toMemberId, String memberFirstName, String memberMiddleName,
            String memberLastName, float amount, String slipDate, String businessType, String referralType,
            String comments) {
        super();
        this.thankYouSlipId = thankYouSlipId;
        this.toMemberId = toMemberId;
        this.memberFirstName = memberFirstName;
        this.memberMiddleName = memberMiddleName;
        this.memberLastName = memberLastName;
        this.amount = amount;
        this.slipDate = slipDate;
        this.businessType = businessType;
        this.referralType = referralType;
        this.comments = comments;        
    }
  
	public MemberThankYouSlip(int thankYouSlipId, int toMemberId, String memberFirstName, String memberMiddleName,
			String memberLastName, float amount, String slipDate, String businessType, String referralType,
			String comments, String fromFirstName,String fromMiddleName, String fromLastName ) {
		super();
		this.thankYouSlipId = thankYouSlipId;
		this.toMemberId = toMemberId;
		this.memberFirstName = memberFirstName;
		this.memberMiddleName = memberMiddleName;
		this.memberLastName = memberLastName;
		this.amount = amount;
		this.slipDate = slipDate;
		this.businessType = businessType;
		this.referralType = referralType;
		this.comments = comments;
		this.fromFirstName = fromFirstName;
		this.fromMiddleName = fromMiddleName;
	    this.fromLastName = fromLastName;
	}

	public MemberThankYouSlip(int toMemberId, float amount, String slipDate, String businessType, String referralType,
			String comments, String status, int createdBy, String ipAddress) {
		super();
		this.toMemberId = toMemberId;
		this.amount = amount;
		this.slipDate = slipDate;
		this.businessType = businessType;
		this.referralType = referralType;
		this.comments = comments;
		this.status = status;
		this.createdBy = createdBy;
		this.ipAddress = ipAddress;
	}
	public MemberThankYouSlip(int thankYouSlipId,int toMemberId, float amount, String slipDate, String businessType, String referralType,
			String comments, String status, int createdBy, String ipAddress) {
		super();
		this.thankYouSlipId=thankYouSlipId;
		this.toMemberId = toMemberId;
		this.amount = amount;
		this.slipDate = slipDate;
		this.businessType = businessType;
		this.referralType = referralType;
		this.comments = comments;
		this.status = status;
		this.createdBy = createdBy;
		this.ipAddress = ipAddress;
	}

	private int thankYouSlipId;
	private int toMemberId;
	private float amount;
	private String slipDate;
	private String businessType;
	private String referralType;
	private String comments;
	private String status;
	private int createdBy;
	private String createdDate;
	private String ipAddress;
	private String memberFirstName;
	private String memberMiddleName;
	private String memberLastName;
	private String toFirstName;
    private String toMiddleName;
    private String toLastName;
    private String fromFirstName; 
    private String fromMiddleName; 
    private String fromLastName;
    private int fellowship_id;
    private String fellowship_name;
    
    
    public int getFellowship_id() {
		return fellowship_id;
	}


	public String getFellowship_name() {
		return fellowship_name;
	}


	public void setThankYouSlipId(int thankYouSlipId) {
		this.thankYouSlipId = thankYouSlipId;
	}


	public void setToMemberId(int toMemberId) {
		this.toMemberId = toMemberId;
	}


	public void setAmount(float amount) {
		this.amount = amount;
	}


	public void setSlipDate(String slipDate) {
		this.slipDate = slipDate;
	}


	public void setBusinessType(String businessType) {
		this.businessType = businessType;
	}


	public void setReferralType(String referralType) {
		this.referralType = referralType;
	}


	public void setComments(String comments) {
		this.comments = comments;
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


	public void setMemberFirstName(String memberFirstName) {
		this.memberFirstName = memberFirstName;
	}


	public void setMemberMiddleName(String memberMiddleName) {
		this.memberMiddleName = memberMiddleName;
	}


	public void setMemberLastName(String memberLastName) {
		this.memberLastName = memberLastName;
	}


	public void setFromMiddleName(String fromMiddleName) {
		this.fromMiddleName = fromMiddleName;
	}


	public void setFellowship_id(int fellowship_id) {
		this.fellowship_id = fellowship_id;
	}


	public void setFellowship_name(String fellowship_name) {
		this.fellowship_name = fellowship_name;
	}


	public String getToFirstName() {
      return toFirstName;
    }


    public void setToFirstName(String toFirstName) {
      this.toFirstName = toFirstName;
    }


    public String getToMiddleName() {
      return toMiddleName;
    }


    public void setToMiddleName(String toMiddleName) {
      this.toMiddleName = toMiddleName;
    }


    public String getToLastName() {
      return toLastName;
    }


    public void setToLastName(String toLastName) {
      this.toLastName = toLastName;
    }


    public String getFromFirstName() {
      return fromFirstName;
    }


    public void setFromFirstName(String fromFirstName) {
      this.fromFirstName = fromFirstName;
    }


    public String getFromLastName() {
      return fromLastName;
    }


    public void setFromLastName(String fromLastName) {
      this.fromLastName = fromLastName;
    }

    

	public int getThankYouSlipId() {
		return thankYouSlipId;
	}

	public int getToMemberId() {
		return toMemberId;
	}

	public float getAmount() {
		return amount;
	}

	public String getSlipDate() {
		return slipDate;
	}

	public String getBusinessType() {
		return businessType;
	}

	public String getReferralType() {
		return referralType;
	}

	public String getComments() {
		return comments;
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

	public String getMemberFirstName() {
		return memberFirstName;
	}

	public String getMemberMiddleName() {
		return memberMiddleName;
	}
	public String getMemberLastName() {
      return memberLastName;
    }
	public String getFromMiddleName() {
      return fromMiddleName;
  }
}
