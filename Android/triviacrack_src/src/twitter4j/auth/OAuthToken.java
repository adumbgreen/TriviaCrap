// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j.auth;

import java.io.Serializable;
import javax.crypto.spec.SecretKeySpec;
import twitter4j.HttpResponse;

abstract class OAuthToken
    implements Serializable
{

    private static final long serialVersionUID = 0x932d5f6422220bc8L;
    private String responseStr[];
    private transient SecretKeySpec secretKeySpec;
    private final String token;
    private final String tokenSecret;

    OAuthToken(String s)
    {
        responseStr = null;
        responseStr = s.split("&");
        tokenSecret = getParameter("oauth_token_secret");
        token = getParameter("oauth_token");
    }

    public OAuthToken(String s, String s1)
    {
        responseStr = null;
        token = s;
        tokenSecret = s1;
    }

    OAuthToken(HttpResponse httpresponse)
    {
        this(httpresponse.asString());
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof OAuthToken))
            {
                return false;
            }
            OAuthToken oauthtoken = (OAuthToken)obj;
            if (!token.equals(oauthtoken.token))
            {
                return false;
            }
            if (!tokenSecret.equals(oauthtoken.tokenSecret))
            {
                return false;
            }
        }
        return true;
    }

    public String getParameter(String s)
    {
        String as[] = responseStr;
        int i = as.length;
        int j = 0;
        do
        {
label0:
            {
                String s1 = null;
                if (j < i)
                {
                    String s2 = as[j];
                    if (!s2.startsWith((new StringBuilder()).append(s).append('=').toString()))
                    {
                        break label0;
                    }
                    s1 = s2.split("=")[1].trim();
                }
                return s1;
            }
            j++;
        } while (true);
    }

    SecretKeySpec getSecretKeySpec()
    {
        return secretKeySpec;
    }

    public String getToken()
    {
        return token;
    }

    public String getTokenSecret()
    {
        return tokenSecret;
    }

    public int hashCode()
    {
        return 31 * token.hashCode() + tokenSecret.hashCode();
    }

    void setSecretKeySpec(SecretKeySpec secretkeyspec)
    {
        secretKeySpec = secretkeyspec;
    }

    public String toString()
    {
        return (new StringBuilder()).append("OAuthToken{token='").append(token).append('\'').append(", tokenSecret='").append(tokenSecret).append('\'').append(", secretKeySpec=").append(secretKeySpec).append('}').toString();
    }
}
