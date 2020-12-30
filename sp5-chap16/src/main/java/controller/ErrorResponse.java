package controller;

public class ErrorResponse {
	private String mssage;

	public ErrorResponse(String message) {
		this.mssage = message;
	}

	public String getMessage() {
		return mssage;
	}

}
