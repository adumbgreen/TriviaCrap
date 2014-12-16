// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j.auth;

import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import twitter4j.BASE64Encoder;
import twitter4j.HttpClient;
import twitter4j.HttpClientFactory;
import twitter4j.HttpParameter;
import twitter4j.HttpRequest;
import twitter4j.HttpResponse;
import twitter4j.TwitterException;
import twitter4j.conf.Configuration;

// Referenced classes of package twitter4j.auth:
//            Authorization, OAuth2Support, OAuth2Token

public class OAuth2Authorization
    implements Serializable, Authorization, OAuth2Support
{

    private static final long serialVersionUID = 0xd7d2114a94e99869L;
    private final Configuration conf;
    private String consumerKey;
    private String consumerSecret;
    private final HttpClient http;
    private OAuth2Token token;

    public OAuth2Authorization(Configuration configuration)
    {
        conf = configuration;
        setOAuthConsumer(configuration.getOAuthConsumerKey(), configuration.getOAuthConsumerSecret());
        http = HttpClientFactory.getInstance(configuration.getHttpClientConfiguration());
    }

    public boolean equals(Object obj)
    {
        if (obj != null && (obj instanceof OAuth2Authorization)) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        OAuth2Authorization oauth2authorization = (OAuth2Authorization)obj;
        if (consumerKey == null) goto _L4; else goto _L3
_L3:
        if (!consumerKey.equals(oauth2authorization.consumerKey)) goto _L1; else goto _L5
_L5:
        if (consumerSecret == null) goto _L7; else goto _L6
_L6:
        if (!consumerSecret.equals(oauth2authorization.consumerSecret)) goto _L1; else goto _L8
_L8:
        if (token == null)
        {
            break MISSING_BLOCK_LABEL_101;
        }
        if (!token.equals(oauth2authorization.token)) goto _L1; else goto _L9
_L9:
        return true;
_L4:
        if (oauth2authorization.consumerKey != null)
        {
            return false;
        }
          goto _L5
_L7:
        if (oauth2authorization.consumerSecret != null)
        {
            return false;
        }
          goto _L8
        if (oauth2authorization.token != null)
        {
            return false;
        }
          goto _L9
    }

    public String getAuthorizationHeader(HttpRequest httprequest)
    {
        if (token != null) goto _L2; else goto _L1
_L1:
        String s = "";
        String s1 = (new StringBuilder()).append(URLEncoder.encode(consumerKey, "UTF-8")).append(":").append(URLEncoder.encode(consumerSecret, "UTF-8")).toString();
        s = s1;
_L4:
        return (new StringBuilder()).append("Basic ").append(BASE64Encoder.encode(s.getBytes())).toString();
_L2:
        return token.generateAuthorizationHeader();
        UnsupportedEncodingException unsupportedencodingexception;
        unsupportedencodingexception;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public OAuth2Token getOAuth2Token()
    {
        if (token != null)
        {
            throw new IllegalStateException("OAuth 2 Bearer Token is already available.");
        }
        HttpParameter ahttpparameter[] = new HttpParameter[1];
        ahttpparameter[0] = new HttpParameter("grant_type", "client_credentials");
        HttpResponse httpresponse = http.post(conf.getOAuth2TokenURL(), ahttpparameter, this, null);
        if (httpresponse.getStatusCode() != 200)
        {
            throw new TwitterException("Obtaining OAuth 2 Bearer Token failed.", httpresponse);
        } else
        {
            token = new OAuth2Token(httpresponse);
            return token;
        }
    }

    public int hashCode()
    {
        int i;
        int j;
        int k;
        int l;
        OAuth2Token oauth2token;
        int i1;
        if (consumerKey != null)
        {
            i = consumerKey.hashCode();
        } else
        {
            i = 0;
        }
        j = i * 31;
        if (consumerSecret != null)
        {
            k = consumerSecret.hashCode();
        } else
        {
            k = 0;
        }
        l = 31 * (k + j);
        oauth2token = token;
        i1 = 0;
        if (oauth2token != null)
        {
            i1 = token.hashCode();
        }
        return l + i1;
    }

    public void invalidateOAuth2Token()
    {
        HttpParameter ahttpparameter[];
        OAuth2Token oauth2token;
        if (token == null)
        {
            throw new IllegalStateException("OAuth 2 Bearer Token is not available.");
        }
        ahttpparameter = new HttpParameter[1];
        ahttpparameter[0] = new HttpParameter("access_token", token.getAccessToken());
        oauth2token = token;
        token = null;
        HttpResponse httpresponse = http.post(conf.getOAuth2InvalidateTokenURL(), ahttpparameter, this, null);
        if (httpresponse.getStatusCode() != 200)
        {
            throw new TwitterException("Invalidating OAuth 2 Bearer Token failed.", httpresponse);
        }
        break MISSING_BLOCK_LABEL_105;
        Exception exception;
        exception;
        token = oauth2token;
        throw exception;
    }

    public boolean isEnabled()
    {
        return token != null;
    }

    public void setOAuth2Token(OAuth2Token oauth2token)
    {
        token = oauth2token;
    }

    public void setOAuthConsumer(String s, String s1)
    {
        if (s == null)
        {
            s = "";
        }
        consumerKey = s;
        if (s1 == null)
        {
            s1 = "";
        }
        consumerSecret = s1;
    }

    public String toString()
    {
        StringBuilder stringbuilder = (new StringBuilder()).append("OAuth2Authorization{consumerKey='").append(consumerKey).append('\'').append(", consumerSecret='******************************************'").append(", token=");
        String s;
        if (token == null)
        {
            s = "null";
        } else
        {
            s = token.toString();
        }
        return stringbuilder.append(s).append('}').toString();
    }
}
