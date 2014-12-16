// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j.auth;

import java.io.Serializable;
import twitter4j.HttpResponse;

// Referenced classes of package twitter4j.auth:
//            OAuthToken

public class AccessToken extends OAuthToken
    implements Serializable
{

    private static final long serialVersionUID = 0x2247480a408bacb4L;
    private String screenName;
    private long userId;

    AccessToken(String s)
    {
        super(s);
        userId = -1L;
        screenName = getParameter("screen_name");
        String s1 = getParameter("user_id");
        if (s1 != null)
        {
            userId = Long.parseLong(s1);
        }
    }

    public AccessToken(String s, String s1)
    {
        String s2;
        super(s, s1);
        userId = -1L;
        int i = s.indexOf("-");
        if (i == -1)
        {
            break MISSING_BLOCK_LABEL_42;
        }
        s2 = s.substring(0, i);
        userId = Long.parseLong(s2);
        return;
        NumberFormatException numberformatexception;
        numberformatexception;
    }

    public AccessToken(String s, String s1, long l)
    {
        super(s, s1);
        userId = -1L;
        userId = l;
    }

    AccessToken(HttpResponse httpresponse)
    {
        this(httpresponse.asString());
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            if (!super.equals(obj))
            {
                return false;
            }
            AccessToken accesstoken = (AccessToken)obj;
            if (userId != accesstoken.userId)
            {
                return false;
            }
            if (screenName == null ? accesstoken.screenName != null : !screenName.equals(accesstoken.screenName))
            {
                return false;
            }
        }
        return true;
    }

    public volatile String getParameter(String s)
    {
        return super.getParameter(s);
    }

    public String getScreenName()
    {
        return screenName;
    }

    public volatile String getToken()
    {
        return super.getToken();
    }

    public volatile String getTokenSecret()
    {
        return super.getTokenSecret();
    }

    public long getUserId()
    {
        return userId;
    }

    public int hashCode()
    {
        int i = 31 * super.hashCode();
        int j;
        if (screenName != null)
        {
            j = screenName.hashCode();
        } else
        {
            j = 0;
        }
        return 31 * (j + i) + (int)(userId ^ userId >>> 32);
    }

    public String toString()
    {
        return (new StringBuilder()).append("AccessToken{screenName='").append(screenName).append('\'').append(", userId=").append(userId).append('}').toString();
    }
}
