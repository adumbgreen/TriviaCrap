// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j.auth;

import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import twitter4j.BASE64Encoder;
import twitter4j.HttpClient;
import twitter4j.HttpClientFactory;
import twitter4j.HttpParameter;
import twitter4j.HttpRequest;
import twitter4j.Logger;
import twitter4j.RequestMethod;
import twitter4j.TwitterException;
import twitter4j.conf.Configuration;

// Referenced classes of package twitter4j.auth:
//            Authorization, OAuthSupport, AccessToken, OAuthToken, 
//            RequestToken

public class OAuthAuthorization
    implements Serializable, Authorization, OAuthSupport
{

    private static final String HMAC_SHA1 = "HmacSHA1";
    private static final HttpParameter OAUTH_SIGNATURE_METHOD = new HttpParameter("oauth_signature_method", "HMAC-SHA1");
    private static final Random RAND = new Random();
    private static transient HttpClient http;
    private static final Logger logger = Logger.getLogger(twitter4j/auth/OAuthAuthorization);
    private static final long serialVersionUID = 0xf3b134f4fbef244cL;
    private final Configuration conf;
    private String consumerKey;
    private String consumerSecret;
    private OAuthToken oauthToken;
    private String realm;

    public OAuthAuthorization(Configuration configuration)
    {
        consumerKey = "";
        realm = null;
        oauthToken = null;
        conf = configuration;
        http = HttpClientFactory.getInstance(configuration.getHttpClientConfiguration());
        setOAuthConsumer(configuration.getOAuthConsumerKey(), configuration.getOAuthConsumerSecret());
        if (configuration.getOAuthAccessToken() != null && configuration.getOAuthAccessTokenSecret() != null)
        {
            setOAuthAccessToken(new AccessToken(configuration.getOAuthAccessToken(), configuration.getOAuthAccessTokenSecret()));
        }
    }

    static String constructRequestURL(String s)
    {
        int j;
        String s1;
        int k;
        int i = s.indexOf("?");
        if (-1 != i)
        {
            s = s.substring(0, i);
        }
        j = s.indexOf("/", 8);
        s1 = s.substring(0, j).toLowerCase();
        k = s1.indexOf(":", 8);
        if (-1 == k) goto _L2; else goto _L1
_L1:
        if (!s1.startsWith("http://") || !s1.endsWith(":80")) goto _L4; else goto _L3
_L3:
        s1 = s1.substring(0, k);
_L2:
        return (new StringBuilder()).append(s1).append(s.substring(j)).toString();
_L4:
        if (s1.startsWith("https://") && s1.endsWith(":443"))
        {
            s1 = s1.substring(0, k);
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    public static String encodeParameters(List list)
    {
        return encodeParameters(list, "&", false);
    }

    public static String encodeParameters(List list, String s, boolean flag)
    {
        StringBuilder stringbuilder = new StringBuilder();
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            HttpParameter httpparameter = (HttpParameter)iterator.next();
            if (!httpparameter.isFile())
            {
                if (stringbuilder.length() != 0)
                {
                    if (flag)
                    {
                        stringbuilder.append("\"");
                    }
                    stringbuilder.append(s);
                }
                stringbuilder.append(HttpParameter.encode(httpparameter.getName())).append("=");
                if (flag)
                {
                    stringbuilder.append("\"");
                }
                stringbuilder.append(HttpParameter.encode(httpparameter.getValue()));
            }
        } while (true);
        if (stringbuilder.length() != 0 && flag)
        {
            stringbuilder.append("\"");
        }
        return stringbuilder.toString();
    }

    private void ensureTokenIsAvailable()
    {
        if (oauthToken == null)
        {
            throw new IllegalStateException("No Token available.");
        } else
        {
            return;
        }
    }

    private static String normalizeRequestParameters(List list)
    {
        Collections.sort(list);
        return encodeParameters(list);
    }

    static String normalizeRequestParameters(HttpParameter ahttpparameter[])
    {
        return normalizeRequestParameters(toParamList(ahttpparameter));
    }

    private void parseGetParameters(String s, List list)
    {
        int i;
        int j;
        i = 0;
        j = s.indexOf("?");
        if (-1 == j) goto _L2; else goto _L1
_L1:
        String as[];
        s.split("&");
        as = s.substring(j + 1).split("&");
        int k = as.length;
_L8:
        if (i >= k) goto _L2; else goto _L3
_L3:
        String as1[] = as[i].split("=");
        if (as1.length != 2) goto _L5; else goto _L4
_L4:
        list.add(new HttpParameter(URLDecoder.decode(as1[0], "UTF-8"), URLDecoder.decode(as1[1], "UTF-8")));
          goto _L6
_L5:
        list.add(new HttpParameter(URLDecoder.decode(as1[0], "UTF-8"), ""));
          goto _L6
        UnsupportedEncodingException unsupportedencodingexception;
        unsupportedencodingexception;
_L2:
        return;
_L6:
        i++;
        if (true) goto _L8; else goto _L7
_L7:
    }

    private static List toParamList(HttpParameter ahttpparameter[])
    {
        ArrayList arraylist = new ArrayList(ahttpparameter.length);
        arraylist.addAll(Arrays.asList(ahttpparameter));
        return arraylist;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof OAuthSupport))
            {
                return false;
            }
            OAuthAuthorization oauthauthorization = (OAuthAuthorization)obj;
            if (consumerKey == null ? oauthauthorization.consumerKey != null : !consumerKey.equals(oauthauthorization.consumerKey))
            {
                return false;
            }
            if (consumerSecret == null ? oauthauthorization.consumerSecret != null : !consumerSecret.equals(oauthauthorization.consumerSecret))
            {
                return false;
            }
            if (oauthToken == null ? oauthauthorization.oauthToken != null : !oauthToken.equals(oauthauthorization.oauthToken))
            {
                return false;
            }
        }
        return true;
    }

    String generateAuthorizationHeader(String s, String s1, HttpParameter ahttpparameter[], String s2, String s3, OAuthToken oauthtoken)
    {
        if (ahttpparameter == null)
        {
            ahttpparameter = new HttpParameter[0];
        }
        ArrayList arraylist = new ArrayList(5);
        arraylist.add(new HttpParameter("oauth_consumer_key", consumerKey));
        arraylist.add(OAUTH_SIGNATURE_METHOD);
        arraylist.add(new HttpParameter("oauth_timestamp", s3));
        arraylist.add(new HttpParameter("oauth_nonce", s2));
        arraylist.add(new HttpParameter("oauth_version", "1.0"));
        if (oauthtoken != null)
        {
            arraylist.add(new HttpParameter("oauth_token", oauthtoken.getToken()));
        }
        ArrayList arraylist1 = new ArrayList(arraylist.size() + ahttpparameter.length);
        arraylist1.addAll(arraylist);
        if (!HttpParameter.containsFile(ahttpparameter))
        {
            arraylist1.addAll(toParamList(ahttpparameter));
        }
        parseGetParameters(s1, arraylist1);
        StringBuilder stringbuilder = (new StringBuilder(s)).append("&").append(HttpParameter.encode(constructRequestURL(s1))).append("&");
        stringbuilder.append(HttpParameter.encode(normalizeRequestParameters(arraylist1)));
        String s4 = stringbuilder.toString();
        logger.debug("OAuth base string: ", s4);
        String s5 = generateSignature(s4, oauthtoken);
        logger.debug("OAuth signature: ", s5);
        arraylist.add(new HttpParameter("oauth_signature", s5));
        if (realm != null)
        {
            arraylist.add(new HttpParameter("realm", realm));
        }
        return (new StringBuilder()).append("OAuth ").append(encodeParameters(arraylist, ",", true)).toString();
    }

    String generateAuthorizationHeader(String s, String s1, HttpParameter ahttpparameter[], OAuthToken oauthtoken)
    {
        long l = System.currentTimeMillis() / 1000L;
        return generateAuthorizationHeader(s, s1, ahttpparameter, String.valueOf(l + (long)RAND.nextInt()), String.valueOf(l), oauthtoken);
    }

    public List generateOAuthSignatureHttpParams(String s, String s1)
    {
        long l = System.currentTimeMillis() / 1000L;
        long l1 = l + (long)RAND.nextInt();
        ArrayList arraylist = new ArrayList(5);
        arraylist.add(new HttpParameter("oauth_consumer_key", consumerKey));
        arraylist.add(OAUTH_SIGNATURE_METHOD);
        arraylist.add(new HttpParameter("oauth_timestamp", l));
        arraylist.add(new HttpParameter("oauth_nonce", l1));
        arraylist.add(new HttpParameter("oauth_version", "1.0"));
        if (oauthToken != null)
        {
            arraylist.add(new HttpParameter("oauth_token", oauthToken.getToken()));
        }
        ArrayList arraylist1 = new ArrayList(arraylist.size());
        arraylist1.addAll(arraylist);
        parseGetParameters(s1, arraylist1);
        StringBuilder stringbuilder = (new StringBuilder(s)).append("&").append(HttpParameter.encode(constructRequestURL(s1))).append("&");
        stringbuilder.append(HttpParameter.encode(normalizeRequestParameters(arraylist1)));
        arraylist.add(new HttpParameter("oauth_signature", generateSignature(stringbuilder.toString(), oauthToken)));
        return arraylist;
    }

    String generateSignature(String s)
    {
        return generateSignature(s, null);
    }

    String generateSignature(String s, OAuthToken oauthtoken)
    {
        Mac mac;
        SecretKeySpec secretkeyspec;
        byte abyte0[];
        try
        {
            mac = Mac.getInstance("HmacSHA1");
        }
        catch (InvalidKeyException invalidkeyexception)
        {
            logger.error("Failed initialize \"Message Authentication Code\" (MAC)", invalidkeyexception);
            throw new AssertionError(invalidkeyexception);
        }
        catch (NoSuchAlgorithmException nosuchalgorithmexception)
        {
            logger.error("Failed to get HmacSHA1 \"Message Authentication Code\" (MAC)", nosuchalgorithmexception);
            throw new AssertionError(nosuchalgorithmexception);
        }
        if (oauthtoken != null) goto _L2; else goto _L1
_L1:
        secretkeyspec = new SecretKeySpec((new StringBuilder()).append(HttpParameter.encode(consumerSecret)).append("&").toString().getBytes(), "HmacSHA1");
_L4:
        mac.init(secretkeyspec);
        abyte0 = mac.doFinal(s.getBytes());
        return BASE64Encoder.encode(abyte0);
_L2:
        secretkeyspec = oauthtoken.getSecretKeySpec();
        if (secretkeyspec != null) goto _L4; else goto _L3
_L3:
        secretkeyspec = new SecretKeySpec((new StringBuilder()).append(HttpParameter.encode(consumerSecret)).append("&").append(HttpParameter.encode(oauthtoken.getTokenSecret())).toString().getBytes(), "HmacSHA1");
        oauthtoken.setSecretKeySpec(secretkeyspec);
          goto _L4
    }

    public String getAuthorizationHeader(HttpRequest httprequest)
    {
        return generateAuthorizationHeader(httprequest.getMethod().name(), httprequest.getURL(), httprequest.getParameters(), oauthToken);
    }

    public AccessToken getOAuthAccessToken()
    {
        ensureTokenIsAvailable();
        if (oauthToken instanceof AccessToken)
        {
            return (AccessToken)oauthToken;
        } else
        {
            oauthToken = new AccessToken(http.post(conf.getOAuthAccessTokenURL(), null, this, null));
            return (AccessToken)oauthToken;
        }
    }

    public AccessToken getOAuthAccessToken(String s)
    {
        ensureTokenIsAvailable();
        HttpClient httpclient = http;
        String s1 = conf.getOAuthAccessTokenURL();
        HttpParameter ahttpparameter[] = new HttpParameter[1];
        ahttpparameter[0] = new HttpParameter("oauth_verifier", s);
        oauthToken = new AccessToken(httpclient.post(s1, ahttpparameter, this, null));
        return (AccessToken)oauthToken;
    }

    public AccessToken getOAuthAccessToken(String s, String s1)
    {
        AccessToken accesstoken;
        try
        {
            String s2 = conf.getOAuthAccessTokenURL();
            if (s2.indexOf("http://") == 0)
            {
                s2 = (new StringBuilder()).append("https://").append(s2.substring(7)).toString();
            }
            HttpClient httpclient = http;
            HttpParameter ahttpparameter[] = new HttpParameter[3];
            ahttpparameter[0] = new HttpParameter("x_auth_username", s);
            ahttpparameter[1] = new HttpParameter("x_auth_password", s1);
            ahttpparameter[2] = new HttpParameter("x_auth_mode", "client_auth");
            oauthToken = new AccessToken(httpclient.post(s2, ahttpparameter, this, null));
            accesstoken = (AccessToken)oauthToken;
        }
        catch (TwitterException twitterexception)
        {
            throw new TwitterException("The screen name / password combination seems to be invalid.", twitterexception, twitterexception.getStatusCode());
        }
        return accesstoken;
    }

    public AccessToken getOAuthAccessToken(RequestToken requesttoken)
    {
        oauthToken = requesttoken;
        return getOAuthAccessToken();
    }

    public AccessToken getOAuthAccessToken(RequestToken requesttoken, String s)
    {
        oauthToken = requesttoken;
        return getOAuthAccessToken(s);
    }

    public RequestToken getOAuthRequestToken()
    {
        return getOAuthRequestToken(null, null);
    }

    public RequestToken getOAuthRequestToken(String s)
    {
        return getOAuthRequestToken(s, null);
    }

    public RequestToken getOAuthRequestToken(String s, String s1)
    {
        if (oauthToken instanceof AccessToken)
        {
            throw new IllegalStateException("Access token already available.");
        }
        ArrayList arraylist = new ArrayList();
        if (s != null)
        {
            arraylist.add(new HttpParameter("oauth_callback", s));
        }
        if (s1 != null)
        {
            arraylist.add(new HttpParameter("x_auth_access_type", s1));
        }
        oauthToken = new RequestToken(http.post(conf.getOAuthRequestTokenURL(), (HttpParameter[])arraylist.toArray(new HttpParameter[arraylist.size()]), this, null), this);
        return (RequestToken)oauthToken;
    }

    public int hashCode()
    {
        int i;
        int j;
        int k;
        int l;
        OAuthToken oauthtoken;
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
        oauthtoken = oauthToken;
        i1 = 0;
        if (oauthtoken != null)
        {
            i1 = oauthToken.hashCode();
        }
        return l + i1;
    }

    public boolean isEnabled()
    {
        return oauthToken != null && (oauthToken instanceof AccessToken);
    }

    public void setOAuthAccessToken(AccessToken accesstoken)
    {
        oauthToken = accesstoken;
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

    public void setOAuthRealm(String s)
    {
        realm = s;
    }

    public String toString()
    {
        return (new StringBuilder()).append("OAuthAuthorization{consumerKey='").append(consumerKey).append('\'').append(", consumerSecret='******************************************'").append(", oauthToken=").append(oauthToken).append('}').toString();
    }

}
