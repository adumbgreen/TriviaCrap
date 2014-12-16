// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j.auth;

import java.io.Serializable;
import twitter4j.HttpRequest;

// Referenced classes of package twitter4j.auth:
//            Authorization

public class NullAuthorization
    implements Serializable, Authorization
{

    private static final NullAuthorization SINGLETON = new NullAuthorization();
    private static final long serialVersionUID = 0x951384d391fa32aaL;

    private NullAuthorization()
    {
    }

    public static NullAuthorization getInstance()
    {
        return SINGLETON;
    }

    private Object readResolve()
    {
        return SINGLETON;
    }

    public boolean equals(Object obj)
    {
        return SINGLETON == obj;
    }

    public String getAuthorizationHeader(HttpRequest httprequest)
    {
        return null;
    }

    public boolean isEnabled()
    {
        return false;
    }

    public String toString()
    {
        return "NullAuthentication{SINGLETON}";
    }

}
