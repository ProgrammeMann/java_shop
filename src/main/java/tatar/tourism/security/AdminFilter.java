package tatar.tourism.security;

import tatar.tourism.pojo.User;
import tatar.tourism.pojo.UserTypes;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by programmemann on 19.11.16.
 */
@WebFilter(filterName = "adminFilter", urlPatterns = {"/adminPage"})
public class AdminFilter implements javax.servlet.Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest request,
                         ServletResponse response,
                         FilterChain chain) throws IOException, ServletException {
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;
        if (((HttpServletRequest) request).getSession().getAttribute("user") != null) {
            if (((User) ((HttpServletRequest) request).getSession().getAttribute("user")).getRole().equals(UserTypes.ADMIN.toString())) {
                chain.doFilter(request, response);
            } else {
                ((HttpServletRequest) request).getServletContext().getRequestDispatcher("/indez.jsp").forward(httpRequest, httpResponse);
            }
        }
        else {
            ((HttpServletRequest) request).getServletContext().getRequestDispatcher("/index.jsp").forward(httpRequest, httpResponse);
        }

    }

    @Override
    public void destroy() {

    }
}
