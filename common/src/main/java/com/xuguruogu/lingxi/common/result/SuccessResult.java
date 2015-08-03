package com.xuguruogu.lingxi.common.result;

public class SuccessResult<T> {

    private final Result<T> result;

    public SuccessResult(T dataObject) {
        result = new Result<T>();
        result.setSuccess(true);
        result.setDataObject(dataObject);
    }

    public Result<T> getInstance() {
        return result;
    }
}