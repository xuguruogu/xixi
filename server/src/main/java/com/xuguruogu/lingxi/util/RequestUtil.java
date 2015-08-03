package com.xuguruogu.lingxi.util;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 
 * @author hukn
 *
 */
public final class RequestUtil {

    private static Logger log      = LoggerFactory.getLogger(RequestUtil.class);

	private RequestUtil() {
	}

	public static String buildOriginalURL(HttpServletRequest request) {
		StringBuffer originalURL = request.getRequestURL();
		if (log.isDebugEnabled()) {
			log.debug("Build original URL start:" + originalURL);
		}
		Map parameters = request.getParameterMap();
		if (parameters != null && parameters.size() > 0) {
			originalURL.append("?");
			Set set = parameters.keySet();
			for (Iterator iterator = set.iterator(); iterator.hasNext();) {
				String key = (String) iterator.next();
				String[] values = (String[]) parameters.get(key);
				for (int i = 0; i < values.length; i++) {
					String value = values[i];
					originalURL.append(key).append("=").append(value).append(
							"&");
				}
			}
			originalURL.deleteCharAt(originalURL.length() - 1);
		}
		if (log.isDebugEnabled()) {
			log.debug("Build original URL End:" + originalURL);
		}
		return originalURL.toString();
	}

	public static String buildServerURL(HttpServletRequest request) {
		StringBuffer sb = new StringBuffer(request.getScheme());
		sb.append("://");
		sb.append(request.getServerName());
		if (request.getServerPort() != 80) {
			sb.append(":");
			sb.append(request.getServerPort());
		}
		sb.append(request.getContextPath());
		if (log.isDebugEnabled()) {
			log.debug("Build Server URL:" + sb);
		}
		return sb.toString();
	}
}
