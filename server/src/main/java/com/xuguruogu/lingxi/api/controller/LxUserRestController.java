package com.xuguruogu.lingxi.api.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.xuguruogu.lingxi.api.dto.Result;
import com.xuguruogu.lingxi.api.dto.UserDTO;
import com.xuguruogu.lingxi.core.facede.UserFacade;
import com.xuguruogu.lingxi.entity.User;

@RestController
@RequestMapping(value = { "/api/v1/user" }, method = { RequestMethod.POST, RequestMethod.GET })
public class LxUserRestController {
    private static Logger     logger = LoggerFactory.getLogger(LxUserRestController.class);

    @Autowired
    private static UserFacade userFacade;

    @RequestMapping(value = "/{login}")
    public Result<UserDTO> login(User user, HttpServletResponse resp, HttpServletRequest req) {
        return new Result<UserDTO>();
    }
}
