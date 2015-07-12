// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j.auth;

import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import twitter4j.HttpResponse;
import twitter4j.JSONException;
import twitter4j.JSONObject;

public class OAuth2Token
    implements Serializable
{

    private static final long serialVersionUID = 0x834d9731aac72010L;
    private String accessToken;
    private String tokenType;

    public OAuth2Token(String s, String s1)
    {
        tokenType = s;
        accessToken = s1;
    }

    OAuth2Token(HttpResponse httpresponse)
    {
        JSONObject jsonobject = httpresponse.asJSONObject();
        tokenType = getRawString("token_type", jsonobject);
        try
        {
            accessToken = URLDecoder.decode(getRawString("access_token", jsonobject), "UTF-8");
            return;
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            return;
        }
    }

    private static String getRawString(String s, JSONObject jsonobject)
    {
        if (jsonobject.isNull(s))
        {
            return null;
        }
        String s1;
        try
        {
            s1 = jsonobject.getString(s);
        }
        catch (JSONException jsonexception)
        {
            return null;
        }
        return s1;
    }

    public boolean equals(Object obj)
    {
        if (obj != null && (obj instanceof OAuth2Token)) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        OAuth2Token oauth2token = (OAuth2Token)obj;
        if (tokenType == null) goto _L4; else goto _L3
_L3:
        if (!tokenType.equals(oauth2token.tokenType)) goto _L1; else goto _L5
_L5:
        if (accessToken == null)
        {
            break MISSING_BLOCK_LABEL_71;
        }
        if (!accessToken.equals(oauth2token.accessToken)) goto _L1; else goto _L6
_L6:
        return true;
_L4:
        if (oauth2token.tokenType != null)
        {
            return false;
        }
          goto _L5
        if (oauth2token.accessToken != null)
        {
            return false;
        }
          goto _L6
    }

    String generateAuthorizationHeader()
    {
        String s = "";
        String s1 = URLEncoder.encode(accessToken, "UTF-8");
        s = s1;
_L2:
        return (new StringBuilder()).append("Bearer ").append(s).toString();
        UnsupportedEncodingException unsupportedencodingexception;
        unsupportedencodingexception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public String getAccessToken()
    {
        return accessToken;
    }

    public String getTokenType()
    {
        return tokenType;
    }

    public int hashCode()
    {
        int i;
        int j;
        String s;
        int k;
        if (tokenType != null)
        {
            i = tokenType.hashCode();
        } else
        {
            i = 0;
        }
        j = i * 31;
        s = accessToken;
        k = 0;
        if (s != null)
        {
            k = accessToken.hashCode();
        }
        return j + k;
    }

    public String toString()
    {
        return (new StringBuilder()).append("OAuth2Token{tokenType='").append(tokenType).append('\'').append(", accessToken='").append(accessToken).append('\'').append('}').toString();
    }
}
