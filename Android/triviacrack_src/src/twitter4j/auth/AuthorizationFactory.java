// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j.auth;

import twitter4j.conf.Configuration;

// Referenced classes of package twitter4j.auth:
//            OAuth2Authorization, OAuth2Token, NullAuthorization, OAuthAuthorization, 
//            AccessToken, BasicAuthorization, Authorization

public final class AuthorizationFactory
{

    public AuthorizationFactory()
    {
    }

    public static Authorization getInstance(Configuration configuration)
    {
        String s;
        String s1;
        s = configuration.getOAuthConsumerKey();
        s1 = configuration.getOAuthConsumerSecret();
        if (s == null || s1 == null) goto _L2; else goto _L1
_L1:
        if (!configuration.isApplicationOnlyAuthEnabled()) goto _L4; else goto _L3
_L3:
        Object obj;
        obj = new OAuth2Authorization(configuration);
        String s4 = configuration.getOAuth2TokenType();
        String s5 = configuration.getOAuth2AccessToken();
        if (s4 != null && s5 != null)
        {
            ((OAuth2Authorization) (obj)).setOAuth2Token(new OAuth2Token(s4, s5));
        }
_L6:
        if (obj == null)
        {
            obj = NullAuthorization.getInstance();
        }
        return ((Authorization) (obj));
_L4:
        obj = new OAuthAuthorization(configuration);
        String s6 = configuration.getOAuthAccessToken();
        String s7 = configuration.getOAuthAccessTokenSecret();
        if (s6 != null && s7 != null)
        {
            ((OAuthAuthorization) (obj)).setOAuthAccessToken(new AccessToken(s6, s7));
        }
        continue; /* Loop/switch isn't completed */
_L2:
        String s2 = configuration.getUser();
        String s3 = configuration.getPassword();
        obj = null;
        if (s2 != null)
        {
            obj = null;
            if (s3 != null)
            {
                obj = new BasicAuthorization(s2, s3);
            }
        }
        if (true) goto _L6; else goto _L5
_L5:
    }
}
