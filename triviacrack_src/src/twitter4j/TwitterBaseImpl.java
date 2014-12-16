// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import twitter4j.auth.AccessToken;
import twitter4j.auth.Authorization;
import twitter4j.auth.AuthorizationFactory;
import twitter4j.auth.BasicAuthorization;
import twitter4j.auth.NullAuthorization;
import twitter4j.auth.OAuth2Authorization;
import twitter4j.auth.OAuth2Support;
import twitter4j.auth.OAuth2Token;
import twitter4j.auth.OAuthAuthorization;
import twitter4j.auth.OAuthSupport;
import twitter4j.auth.RequestToken;
import twitter4j.conf.Configuration;

// Referenced classes of package twitter4j:
//            HttpResponseListener, TwitterBase, HttpClientFactory, RateLimitStatusListener, 
//            UserJSONImpl, HttpClient, User, XAuthAuthorization, 
//            HttpResponseEvent, TwitterException, RateLimitStatusEvent, JSONImplFactory, 
//            HttpResponse, ObjectFactory

abstract class TwitterBaseImpl
    implements Serializable, HttpResponseListener, TwitterBase, OAuth2Support, OAuthSupport
{

    private static final String WWW_DETAILS = "See http://twitter4j.org/en/configuration.html for details";
    private static final long serialVersionUID = 0x936a484597d56116L;
    Authorization auth;
    Configuration conf;
    ObjectFactory factory;
    transient HttpClient http;
    private transient long id;
    private List rateLimitStatusListeners;
    private transient String screenName;

    TwitterBaseImpl(Configuration configuration, Authorization authorization)
    {
        screenName = null;
        id = 0L;
        rateLimitStatusListeners = new ArrayList(0);
        conf = configuration;
        auth = authorization;
        init();
    }

    private OAuthSupport getOAuth()
    {
        if (!(auth instanceof OAuthSupport))
        {
            throw new IllegalStateException("OAuth consumer key/secret combination not supplied");
        } else
        {
            return (OAuthSupport)auth;
        }
    }

    private OAuth2Support getOAuth2()
    {
        if (!(auth instanceof OAuth2Support))
        {
            throw new IllegalStateException("OAuth consumer key/secret combination not supplied");
        } else
        {
            return (OAuth2Support)auth;
        }
    }

    private void init()
    {
        if (auth == null)
        {
            String s = conf.getOAuthConsumerKey();
            String s1 = conf.getOAuthConsumerSecret();
            if (s != null && s1 != null)
            {
                if (conf.isApplicationOnlyAuthEnabled())
                {
                    OAuth2Authorization oauth2authorization = new OAuth2Authorization(conf);
                    String s2 = conf.getOAuth2TokenType();
                    String s3 = conf.getOAuth2AccessToken();
                    if (s2 != null && s3 != null)
                    {
                        oauth2authorization.setOAuth2Token(new OAuth2Token(s2, s3));
                    }
                    auth = oauth2authorization;
                } else
                {
                    OAuthAuthorization oauthauthorization = new OAuthAuthorization(conf);
                    String s4 = conf.getOAuthAccessToken();
                    String s5 = conf.getOAuthAccessTokenSecret();
                    if (s4 != null && s5 != null)
                    {
                        oauthauthorization.setOAuthAccessToken(new AccessToken(s4, s5));
                    }
                    auth = oauthauthorization;
                }
            } else
            {
                auth = NullAuthorization.getInstance();
            }
        }
        http = HttpClientFactory.getInstance(conf.getHttpClientConfiguration());
        setFactory();
    }

    private void readObject(ObjectInputStream objectinputstream)
    {
        objectinputstream.readFields();
        conf = (Configuration)objectinputstream.readObject();
        auth = (Authorization)objectinputstream.readObject();
        rateLimitStatusListeners = (List)objectinputstream.readObject();
        http = HttpClientFactory.getInstance(conf.getHttpClientConfiguration());
        setFactory();
    }

    private void writeObject(ObjectOutputStream objectoutputstream)
    {
        objectoutputstream.putFields();
        objectoutputstream.writeFields();
        objectoutputstream.writeObject(conf);
        objectoutputstream.writeObject(auth);
        ArrayList arraylist = new ArrayList(0);
        Iterator iterator = rateLimitStatusListeners.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            RateLimitStatusListener ratelimitstatuslistener = (RateLimitStatusListener)iterator.next();
            if (ratelimitstatuslistener instanceof Serializable)
            {
                arraylist.add(ratelimitstatuslistener);
            }
        } while (true);
        objectoutputstream.writeObject(arraylist);
    }

    public void addRateLimitStatusListener(RateLimitStatusListener ratelimitstatuslistener)
    {
        rateLimitStatusListeners.add(ratelimitstatuslistener);
    }

    final void ensureAuthorizationEnabled()
    {
        if (!auth.isEnabled())
        {
            throw new IllegalStateException("Authentication credentials are missing. See http://twitter4j.org/en/configuration.html for details");
        } else
        {
            return;
        }
    }

    final void ensureOAuthEnabled()
    {
        if (!(auth instanceof OAuthAuthorization))
        {
            throw new IllegalStateException("OAuth required. Authentication credentials are missing. See http://twitter4j.org/en/configuration.html for details");
        } else
        {
            return;
        }
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof TwitterBaseImpl))
            {
                return false;
            }
            TwitterBaseImpl twitterbaseimpl = (TwitterBaseImpl)obj;
            if (auth == null ? twitterbaseimpl.auth != null : !auth.equals(twitterbaseimpl.auth))
            {
                return false;
            }
            if (!conf.equals(twitterbaseimpl.conf))
            {
                return false;
            }
            if (http == null ? twitterbaseimpl.http != null : !http.equals(twitterbaseimpl.http))
            {
                return false;
            }
            if (!rateLimitStatusListeners.equals(twitterbaseimpl.rateLimitStatusListeners))
            {
                return false;
            }
        }
        return true;
    }

    User fillInIDAndScreenName()
    {
        ensureAuthorizationEnabled();
        UserJSONImpl userjsonimpl = new UserJSONImpl(http.get((new StringBuilder()).append(conf.getRestBaseURL()).append("account/verify_credentials.json").toString(), null, auth, this), conf);
        screenName = userjsonimpl.getScreenName();
        id = userjsonimpl.getId();
        return userjsonimpl;
    }

    public final Authorization getAuthorization()
    {
        return auth;
    }

    public Configuration getConfiguration()
    {
        return conf;
    }

    public long getId()
    {
        if (!auth.isEnabled())
        {
            throw new IllegalStateException("Neither user ID/password combination nor OAuth consumer key/secret combination supplied");
        }
        if (0L == id)
        {
            fillInIDAndScreenName();
        }
        return id;
    }

    public OAuth2Token getOAuth2Token()
    {
        this;
        JVM INSTR monitorenter ;
        OAuth2Token oauth2token = getOAuth2().getOAuth2Token();
        this;
        JVM INSTR monitorexit ;
        return oauth2token;
        Exception exception;
        exception;
        throw exception;
    }

    public AccessToken getOAuthAccessToken()
    {
        this;
        JVM INSTR monitorenter ;
        Authorization authorization = getAuthorization();
        if (!(authorization instanceof BasicAuthorization)) goto _L2; else goto _L1
_L1:
        BasicAuthorization basicauthorization;
        Authorization authorization1;
        basicauthorization = (BasicAuthorization)authorization;
        authorization1 = AuthorizationFactory.getInstance(conf);
        if (!(authorization1 instanceof OAuthAuthorization)) goto _L4; else goto _L3
_L3:
        AccessToken accesstoken1;
        auth = authorization1;
        accesstoken1 = ((OAuthAuthorization)authorization1).getOAuthAccessToken(basicauthorization.getUserId(), basicauthorization.getPassword());
_L5:
        screenName = accesstoken1.getScreenName();
        id = accesstoken1.getUserId();
        this;
        JVM INSTR monitorexit ;
        return accesstoken1;
_L4:
        throw new IllegalStateException("consumer key / secret combination not supplied.");
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
_L2:
label0:
        {
            if (!(authorization instanceof XAuthAuthorization))
            {
                break label0;
            }
            XAuthAuthorization xauthauthorization = (XAuthAuthorization)authorization;
            auth = xauthauthorization;
            OAuthAuthorization oauthauthorization = new OAuthAuthorization(conf);
            oauthauthorization.setOAuthConsumer(xauthauthorization.getConsumerKey(), xauthauthorization.getConsumerSecret());
            accesstoken1 = oauthauthorization.getOAuthAccessToken(xauthauthorization.getUserId(), xauthauthorization.getPassword());
        }
          goto _L5
        AccessToken accesstoken = getOAuth().getOAuthAccessToken();
        accesstoken1 = accesstoken;
          goto _L5
    }

    public AccessToken getOAuthAccessToken(String s)
    {
        this;
        JVM INSTR monitorenter ;
        AccessToken accesstoken;
        accesstoken = getOAuth().getOAuthAccessToken(s);
        screenName = accesstoken.getScreenName();
        this;
        JVM INSTR monitorexit ;
        return accesstoken;
        Exception exception;
        exception;
        throw exception;
    }

    public AccessToken getOAuthAccessToken(String s, String s1)
    {
        this;
        JVM INSTR monitorenter ;
        AccessToken accesstoken = getOAuth().getOAuthAccessToken(s, s1);
        this;
        JVM INSTR monitorexit ;
        return accesstoken;
        Exception exception;
        exception;
        throw exception;
    }

    public AccessToken getOAuthAccessToken(RequestToken requesttoken)
    {
        this;
        JVM INSTR monitorenter ;
        AccessToken accesstoken;
        accesstoken = getOAuth().getOAuthAccessToken(requesttoken);
        screenName = accesstoken.getScreenName();
        this;
        JVM INSTR monitorexit ;
        return accesstoken;
        Exception exception;
        exception;
        throw exception;
    }

    public AccessToken getOAuthAccessToken(RequestToken requesttoken, String s)
    {
        this;
        JVM INSTR monitorenter ;
        AccessToken accesstoken = getOAuth().getOAuthAccessToken(requesttoken, s);
        this;
        JVM INSTR monitorexit ;
        return accesstoken;
        Exception exception;
        exception;
        throw exception;
    }

    public RequestToken getOAuthRequestToken()
    {
        return getOAuthRequestToken(null);
    }

    public RequestToken getOAuthRequestToken(String s)
    {
        return getOAuth().getOAuthRequestToken(s);
    }

    public RequestToken getOAuthRequestToken(String s, String s1)
    {
        return getOAuth().getOAuthRequestToken(s, s1);
    }

    public String getScreenName()
    {
        if (!auth.isEnabled())
        {
            throw new IllegalStateException("Neither user ID/password combination nor OAuth consumer key/secret combination supplied");
        }
        if (screenName == null)
        {
            if (auth instanceof BasicAuthorization)
            {
                screenName = ((BasicAuthorization)auth).getUserId();
                if (screenName.contains("@"))
                {
                    screenName = null;
                }
            }
            if (screenName == null)
            {
                fillInIDAndScreenName();
            }
        }
        return screenName;
    }

    public int hashCode()
    {
        int i = 31 * conf.hashCode();
        int j;
        int k;
        Authorization authorization;
        int l;
        if (http != null)
        {
            j = http.hashCode();
        } else
        {
            j = 0;
        }
        k = 31 * (31 * (j + i) + rateLimitStatusListeners.hashCode());
        authorization = auth;
        l = 0;
        if (authorization != null)
        {
            l = auth.hashCode();
        }
        return k + l;
    }

    public void httpResponseReceived(HttpResponseEvent httpresponseevent)
    {
        if (rateLimitStatusListeners.size() != 0)
        {
            HttpResponse httpresponse = httpresponseevent.getResponse();
            TwitterException twitterexception = httpresponseevent.getTwitterException();
            RateLimitStatus ratelimitstatus;
            int i;
            if (twitterexception != null)
            {
                ratelimitstatus = twitterexception.getRateLimitStatus();
                i = twitterexception.getStatusCode();
            } else
            {
                ratelimitstatus = JSONImplFactory.createRateLimitStatusFromResponseHeader(httpresponse);
                i = httpresponse.getStatusCode();
            }
            if (ratelimitstatus != null)
            {
                RateLimitStatusEvent ratelimitstatusevent = new RateLimitStatusEvent(this, ratelimitstatus, httpresponseevent.isAuthenticated());
                if (i == 420 || i == 503 || i == 429)
                {
                    RateLimitStatusListener ratelimitstatuslistener;
                    for (Iterator iterator = rateLimitStatusListeners.iterator(); iterator.hasNext(); ratelimitstatuslistener.onRateLimitReached(ratelimitstatusevent))
                    {
                        ratelimitstatuslistener = (RateLimitStatusListener)iterator.next();
                        ratelimitstatuslistener.onRateLimitStatus(ratelimitstatusevent);
                    }

                } else
                {
                    for (Iterator iterator1 = rateLimitStatusListeners.iterator(); iterator1.hasNext(); ((RateLimitStatusListener)iterator1.next()).onRateLimitStatus(ratelimitstatusevent)) { }
                }
            }
        }
    }

    public void invalidateOAuth2Token()
    {
        this;
        JVM INSTR monitorenter ;
        getOAuth2().invalidateOAuth2Token();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    void setFactory()
    {
        factory = new JSONImplFactory(conf);
    }

    public void setOAuth2Token(OAuth2Token oauth2token)
    {
        getOAuth2().setOAuth2Token(oauth2token);
    }

    public void setOAuthAccessToken(AccessToken accesstoken)
    {
        this;
        JVM INSTR monitorenter ;
        getOAuth().setOAuthAccessToken(accesstoken);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void setOAuthConsumer(String s, String s1)
    {
        this;
        JVM INSTR monitorenter ;
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_24;
        }
        throw new NullPointerException("consumer key is null");
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        if (s1 != null)
        {
            break MISSING_BLOCK_LABEL_39;
        }
        throw new NullPointerException("consumer secret is null");
        if (!(auth instanceof NullAuthorization)) goto _L2; else goto _L1
_L1:
        if (!conf.isApplicationOnlyAuthEnabled()) goto _L4; else goto _L3
_L3:
        OAuth2Authorization oauth2authorization = new OAuth2Authorization(conf);
        oauth2authorization.setOAuthConsumer(s, s1);
        auth = oauth2authorization;
_L5:
        this;
        JVM INSTR monitorexit ;
        return;
_L4:
        OAuthAuthorization oauthauthorization = new OAuthAuthorization(conf);
        oauthauthorization.setOAuthConsumer(s, s1);
        auth = oauthauthorization;
          goto _L5
_L2:
        if (!(auth instanceof BasicAuthorization))
        {
            continue; /* Loop/switch isn't completed */
        }
        XAuthAuthorization xauthauthorization = new XAuthAuthorization((BasicAuthorization)auth);
        xauthauthorization.setOAuthConsumer(s, s1);
        auth = xauthauthorization;
          goto _L5
        if (!(auth instanceof OAuthAuthorization) && !(auth instanceof OAuth2Authorization)) goto _L5; else goto _L6
_L6:
        throw new IllegalStateException("consumer key/secret pair already set.");
    }

    public String toString()
    {
        return (new StringBuilder()).append("TwitterBase{conf=").append(conf).append(", http=").append(http).append(", rateLimitStatusListeners=").append(rateLimitStatusListeners).append(", auth=").append(auth).append('}').toString();
    }
}
