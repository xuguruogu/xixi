package com.xuguruogu.lingxi.common.result;

public class FailureResult<T> {

    private final Result<T> result;

    public FailureResult(String errMsg) {
        result = new Result<T>();
        result.setSuccess(false);
        result.setErrMsg(errMsg);
    }

    public Result<T> getInstance() {
        return result;
    }
}