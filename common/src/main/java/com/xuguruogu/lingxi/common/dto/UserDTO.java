package com.xuguruogu.lingxi.common.dto;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "user")
public class UserDTO implements Serializable {

    /**  */
    private static final long serialVersionUID = 7405788378757523812L;
    private long              id;
}
