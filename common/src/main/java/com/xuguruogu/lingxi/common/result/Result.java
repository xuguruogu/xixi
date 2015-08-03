package com.xuguruogu.lingxi.common.result;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "result")
public class Result<T> extends ResultBase {

    /**  */
    private static final long serialVersionUID = 3633957344546381616L;

    @XmlElement(name = "dataObject")
    private T                 dataObject;

    /**
     * Getter method for property <tt>dataObject</tt>.
     * 
     * @return property value of dataObject
     */
    public T getDataObject() {
        return dataObject;
    }

    /**
     * Setter method for property <tt>dataObject</tt>.
     * 
     * @param dataObject value to be assigned to property dataObject
     */
    public void setDataObject(T dataObject) {
        this.dataObject = dataObject;
    }

}