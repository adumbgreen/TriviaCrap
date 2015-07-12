// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Map;
import twitter4j.auth.Authorization;

// Referenced classes of package twitter4j:
//            HttpParameter, RequestMethod

public final class HttpRequest
    implements Serializable
{

    private static final HttpParameter NULL_PARAMETERS[] = new HttpParameter[0];
    private static final long serialVersionUID = 0x2eb4a519dbc50ddcL;
    private final Authorization authorization;
    private final RequestMethod method;
    private final HttpParameter parameters[];
    private final Map requestHeaders;
    private final String url;

    public HttpRequest(RequestMethod requestmethod, String s, HttpParameter ahttpparameter[], Authorization authorization1, Map map)
    {
        method = requestmethod;
        if (requestmethod != RequestMethod.POST && ahttpparameter != null && ahttpparameter.length != 0)
        {
            url = (new StringBuilder()).append(s).append("?").append(HttpParameter.encodeParameters(ahttpparameter)).toString();
            parameters = NULL_PARAMETERS;
        } else
        {
            url = s;
            parameters = ahttpparameter;
        }
        authorization = authorization1;
        requestHeaders = map;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            HttpRequest httprequest = (HttpRequest)obj;
            if (authorization == null ? httprequest.authorization != null : !authorization.equals(httprequest.authorization))
            {
                return false;
            }
            if (!Arrays.equals(parameters, httprequest.parameters))
            {
                return false;
            }
            if (requestHeaders == null ? httprequest.requestHeaders != null : !requestHeaders.equals(httprequest.requestHeaders))
            {
                return false;
            }
            if (method == null ? httprequest.method != null : !method.equals(httprequest.method))
            {
                return false;
            }
            if (url == null ? httprequest.url != null : !url.equals(httprequest.url))
            {
                return false;
            }
        }
        return true;
    }

    public Authorization getAuthorization()
    {
        return authorization;
    }

    public RequestMethod getMethod()
    {
        return method;
    }

    public HttpParameter[] getParameters()
    {
        return parameters;
    }

    public Map getRequestHeaders()
    {
        return requestHeaders;
    }

    public String getURL()
    {
        return url;
    }

    public int hashCode()
    {
        int i;
        int j;
        int k;
        int l;
        int i1;
        int j1;
        int k1;
        int l1;
        Map map;
        int i2;
        if (method != null)
        {
            i = method.hashCode();
        } else
        {
            i = 0;
        }
        j = i * 31;
        if (url != null)
        {
            k = url.hashCode();
        } else
        {
            k = 0;
        }
        l = 31 * (k + j);
        if (parameters != null)
        {
            i1 = Arrays.hashCode(parameters);
        } else
        {
            i1 = 0;
        }
        j1 = 31 * (i1 + l);
        if (authorization != null)
        {
            k1 = authorization.hashCode();
        } else
        {
            k1 = 0;
        }
        l1 = 31 * (k1 + j1);
        map = requestHeaders;
        i2 = 0;
        if (map != null)
        {
            i2 = requestHeaders.hashCode();
        }
        return l1 + i2;
    }

    public String toString()
    {
        StringBuilder stringbuilder = (new StringBuilder()).append("HttpRequest{requestMethod=").append(method).append(", url='").append(url).append('\'').append(", postParams=");
        java.util.List list;
        if (parameters == null)
        {
            list = null;
        } else
        {
            list = Arrays.asList(parameters);
        }
        return stringbuilder.append(list).append(", authentication=").append(authorization).append(", requestHeaders=").append(requestHeaders).append('}').toString();
    }

}
