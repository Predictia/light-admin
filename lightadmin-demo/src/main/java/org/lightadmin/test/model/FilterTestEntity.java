package org.lightadmin.test.model;
import org.lightadmin.demo.model.AbstractEntity;
import org.lightadmin.demo.model.EmailAddress;

import javax.persistence.Entity;
import java.math.BigDecimal;

@Entity
public class FilterTestEntity extends AbstractEntity {

	private String textField;

	private Integer integerField;

	private BigDecimal decimalField;

	private EmailAddress emailAddress;

	public FilterTestEntity( final String textField, final int integerField, final BigDecimal decimalField ) {
		this.textField = textField;
		this.integerField = integerField;
		this.decimalField = decimalField;
	}

	public FilterTestEntity() {
	}

	public String getTextField() {
		return textField;
	}

	public void setTextField( final String textField ) {
		this.textField = textField;
	}

	public Integer getIntegerField() {
		return integerField;
	}

	public void setIntegerField( final Integer integerField ) {
		this.integerField = integerField;
	}

	public BigDecimal getDecimalField() {
		return decimalField;
	}

	public void setDecimalField( final BigDecimal decimalField ) {
		this.decimalField = decimalField;
	}
}