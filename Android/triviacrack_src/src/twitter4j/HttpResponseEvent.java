// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j;

import twitter4j.auth.Authorization;

// Referenced classes of package twitter4j:
//            HttpRequest, HttpResponse, TwitterException

public final class HttpResponseEvent
{

    private final HttpRequest request;
    private final HttpResponse response;
    private final TwitterException twitterException;

    HttpResponseEvent(HttpRequest httprequest, HttpResponse httpresponse, TwitterException twitterexception)
    {
        request = httprequest;
        response = httpresponse;
        twitterException = twitterexception;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            HttpResponseEvent httpresponseevent = (HttpResponseEvent)obj;
            if (request == null ? httpresponseevent.request != null : !request.equals(httpresponseevent.request))
            {
                return false;
            }
            if (response == null ? httpresponseevent.response != null : !response.equals(httpresponseevent.response))
            {
                return false;
            }
        }
        return true;
    }

    public HttpRequest getRequest()
    {
        return request;
    }

    public HttpResponse getResponse()
    {
        return response;
    }

    public TwitterException getTwitterException()
    {
        return twitterException;
    }

    public int hashCode()
    {
        int i;
        int j;
        HttpResponse httpresponse;
        int k;
        if (request != null)
        {
            i = request.hashCode();
        } else
        {
            i = 0;
        }
        j = i * 31;
        httpresponse = response;
        k = 0;
        if (httpresponse != null)
        {
            k = response.hashCode();
        }
        return j + k;
    }

    public boolean isAuthenticated()
    {
        return request.getAuthorization().isEnabled();
    }

    public String toString()
    {
        return (new StringBuilder()).append("HttpResponseEvent{request=").append(request).append(", response=").append(response).append('}').toString();
    }
}
