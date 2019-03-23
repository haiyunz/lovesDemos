package com.example.demo.entiy;

public class HumanClass {
	private String faceNum;
	private double faceProbability;
	private String expression;
	private String faceShape;
	private String gender;
	private int age;
	private String race;
	private String leftEye;
	private String rigthEye;
	private String emotion;
	private String faceType;
	private double beauty;
	public String getFaceNum() {
		return faceNum;
	}
	public void setFaceNum(String faceNum) {
		this.faceNum = faceNum;
	}
	public double getFaceProbability() {
		return faceProbability;
	}
	public void setFaceProbability(double faceProbability) {
		this.faceProbability = faceProbability;
	}
	public String getExpression() {
		return expression;
	}
	public void setExpression(String expression) {
		this.expression = expression;
	}
	public String getFaceShape() {
		return faceShape;
	}
	public void setFaceShape(String faceShape) {
		this.faceShape = faceShape;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getRace() {
		return race;
	}
	public void setRace(String race) {
		this.race = race;
	}
	public String getLeftEye() {
		return leftEye;
	}
	public void setLeftEye(String leftEye) {
		this.leftEye = leftEye;
	}
	public String getRigthEye() {
		return rigthEye;
	}
	public void setRigthEye(String rigthEye) {
		this.rigthEye = rigthEye;
	}
	public String getEmotion() {
		return emotion;
	}
	public void setEmotion(String emotion) {
		this.emotion = emotion;
	}
	public String getFaceType() {
		return faceType;
	}
	public void setFaceType(String faceType) {
		this.faceType = faceType;
	}
	public double getBeauty() {
		return beauty;
	}
	
	public void setBeauty(double beauty) {
		this.beauty = beauty;
	}
	@Override
	public String toString() {
		return "HumanClass [faceNum=" + faceNum + ", faceProbability=" + faceProbability + ", expression=" + expression
				+ ", faceShape=" + faceShape + ", gender=" + gender + ", age=" + age + ", race=" + race + ", leftEye="
				+ leftEye + ", rigthEye=" + rigthEye + ", emotion=" + emotion + ", faceType=" + faceType + ", beauty="
				+ beauty + "]";
	}
	public HumanClass(String faceNum, int faceProbability, String expression, String faceShape, String gender, int age,
			String race, String leftEye, String rigthEye, String emotion, String faceType, int beauty) {
		super();
		this.faceNum = faceNum;
		this.faceProbability = faceProbability;
		this.expression = expression;
		this.faceShape = faceShape;
		this.gender = gender;
		this.age = age;
		this.race = race;
		this.leftEye = leftEye;
		this.rigthEye = rigthEye;
		this.emotion = emotion;
		this.faceType = faceType;
		this.beauty = beauty;
	}
	public HumanClass() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}
