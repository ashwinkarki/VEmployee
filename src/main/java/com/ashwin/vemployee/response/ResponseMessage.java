package com.ashwin.vemployee.response;


import org.springframework.http.HttpStatus;

public class ResponseMessage {

        public enum ResponseMsg { success, error}

        private String msg;
        private HttpStatus httpStatus;
        private Object object;

        public ResponseMessage() {
            this.msg = ResponseMsg.success.toString();
            this.httpStatus = HttpStatus.OK;
        }

        public ResponseMessage(ResponseMsg msg) {
            this.msg = msg.toString();
            this.httpStatus = HttpStatus.OK;
        }

        public ResponseMessage(String msg) {
            this.msg = msg;
            this.httpStatus = HttpStatus.OK;
        }

    public ResponseMessage(String msg, HttpStatus httpStatus, Object object) {
        this.msg = msg;
        this.httpStatus = httpStatus;
        this.object = object;
    }
}
