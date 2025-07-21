package tag;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.tagext.SimpleTagSupport;

import java.io.IOException;

public class UrlResolverTag extends SimpleTagSupport {
    private String target;

    public void setTarget(String target) {
        this.target = target;
    }

    @Override
    public void doTag() throws JspException, IOException {
        HttpServletRequest request = (HttpServletRequest) getJspContext()
                .getAttribute("jakarta.servlet.jsp.jspRequest", jakarta.servlet.jsp.PageContext.REQUEST_SCOPE);

        String contextPath = request.getContextPath();
        String relativeUrl = contextPath + target;

        JspWriter out = getJspContext().getOut();
        if (target.endsWith(".css")) {
            out.write("<link rel=\"stylesheet\" href=\"" + relativeUrl + "\">");
        } else if (target.endsWith(".js")) {
            out.write("<script src=\"" + relativeUrl + "\"></script>");
        } else if (target.matches(".*\\.(png|jpg|jpeg|gif)")) {
            out.write("<img src=\"" + relativeUrl + "\">");
        } else {
            out.write(relativeUrl);
        }
    }
}
