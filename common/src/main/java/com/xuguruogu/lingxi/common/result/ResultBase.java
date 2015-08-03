package com.xuguruogu.lingxi.common.result;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlElement;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

public abstract class ResultBase implements Serializable {

    /**  */
    private static final long serialVersionUID = -8654126554080844419L;

    @XmlElement(name = "errMsg")
    private String            errMsg;

    @XmlElement(name = "success")
    private boolean           success          = false;

    /**
     * Getter method for property <tt>erMsg</tt>.
     * 
     * @return property value of erMsg
     */
    public String getErrMsg() {
        return errMsg;
    }

    /**
     * Setter method for property <tt>erMsg</tt>.
     * 
     * @param erMsg value to be assigned to property erMsg
     */
    public void setErrMsg(String errMsg) {
        this.errMsg = errMsg;
    }

    public boolean isSuccess() {
        return success;
    }

    public void setSuccess(boolean success) {
        this.success = success;
    }

    @Override
    public String toString() {
        return ToStringBuilder.reflectionToString(this, ToStringStyle.SHORT_PREFIX_STYLE);
    }

}