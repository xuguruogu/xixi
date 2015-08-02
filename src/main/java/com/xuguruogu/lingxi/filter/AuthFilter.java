package com.xuguruogu.lingxi.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.xuguruogu.lingxi.constants.UserConstants;
import com.xuguruogu.lingxi.util.RequestUtil;

/**
 * 
 * @author hukn
 *
 */
public class AuthFilter implements Filter {

    /**
     * 
     */
    private static Logger log      = LoggerFactory.getLogger(LoginFilter.class);

    // *********************************************************************
    // Configuration state

    /** Secure URL whereat CAS offers its login service. */
    private String        LoginURL = "/login";

    // *********************************************************************
    // Initialization

    public void init(FilterConfig config) throws ServletException {
        if (log.isDebugEnabled()) {
            log.info("Init Auth Filter");
        }
    }

    // *********************************************************************
    // Filter processing

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain fc)
                                                                                          throws ServletException,
                                                                                          IOException {
        request.setCharacterEncoding("utf-8");

        if (log.isDebugEnabled()) {
            log.debug("entering doFilter()");
        }

        // make sure we've got an HTTP request
        if (!(request instanceof HttpServletRequest) || !(response instanceof HttpServletResponse)) {
            log.error("doFilter() called on a request or response"
                      + " that was not an HttpServletRequest or response.");
            throw new ServletException("AuthFilter protects only HTTP resources");
        }

        HttpSession session = ((HttpServletRequest) request).getSession();

        // if our attribute's already present and valid, pass through the filter
        // chain
        Object loginflag = session.getAttribute(UserConstants.SESSION_KEY_USER_NAME);
        if (loginflag != null && !loginflag.equals("")) {
            log.debug("CAS_FILTER_LOGINFLAG attribute was present "
                      + "and acceptable - passing  request through filter..");
            fc.doFilter(request, response);
            return;
        }
        // unknown state... redirect to CAS
        String url = RequestUtil.buildOriginalURL((HttpServletRequest) request);
        if (log.isDebugEnabled()) {
            log.debug("oriUrl is:" + url);
        }
        if (session != null) {
            session.setAttribute(UserConstants.SESSION_KEY_ORIURL, url);
        }
        redirectToCAS((HttpServletRequest) request, (HttpServletResponse) response);

        // continue processing the request
        return;
    }

    // *********************************************************************
    // Utility methods

    /**
     * Redirects the user to CAS, determining the service from the request.
     */
    private void redirectToCAS(HttpServletRequest request, HttpServletResponse response)
                                                                                        throws IOException,
                                                                                        ServletException {
        if (log.isDebugEnabled()) {
            log.debug("entering redirectToCAS()");
        }
        String casLoginString = RequestUtil.buildServerURL(request) + LoginURL;

        if (log.isDebugEnabled()) {
            log.debug("Redirecting browser to [" + casLoginString + ")");
        }
        ((HttpServletResponse) response).sendRedirect(casLoginString);

        if (log.isDebugEnabled()) {
            log.debug("returning from redirectToCAS()");
        }
    }

    /*
     * (non-Javadoc)
     * 
     * @see javax.servlet.Filter#destroy()
     */
    public void destroy() {
        // TODO Auto-generated method stub
        if (log.isDebugEnabled()) {
            log.info("Destroy Auth Filter");
        }
    }

    public String getLoginURL() {
        return LoginURL;
    }

    public void setLoginURL(String loginURL) {
        LoginURL = loginURL;
    }
    
}
