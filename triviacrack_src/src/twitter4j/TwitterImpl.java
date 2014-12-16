// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import twitter4j.api.DirectMessagesResources;
import twitter4j.api.FavoritesResources;
import twitter4j.api.FriendsFollowersResources;
import twitter4j.api.HelpResources;
import twitter4j.api.ListsResources;
import twitter4j.api.PlacesGeoResources;
import twitter4j.api.SavedSearchesResources;
import twitter4j.api.SearchResource;
import twitter4j.api.SpamReportingResource;
import twitter4j.api.SuggestedUsersResources;
import twitter4j.api.TimelinesResources;
import twitter4j.api.TrendsResources;
import twitter4j.api.TweetsResources;
import twitter4j.api.UsersResources;
import twitter4j.auth.Authorization;
import twitter4j.conf.Configuration;

// Referenced classes of package twitter4j:
//            TwitterBaseImpl, Twitter, HttpParameter, TwitterException, 
//            HttpClient, TwitterAPIMonitor, HttpResponse, ObjectFactory, 
//            GeoLocation, StringUtil, Paging, OEmbedRequest, 
//            JSONException, JSONObject, GeoQuery, Query, 
//            StatusUpdate, UserList, User, Status, 
//            Place, SavedSearch, DirectMessage, TwitterAPIConfiguration, 
//            AccountSettings, ResponseList, IDs, PagableResponseList, 
//            OEmbed, Trends, SimilarPlaces, QueryResult, 
//            Relationship

class TwitterImpl extends TwitterBaseImpl
    implements Twitter
{

    private static final Map implicitParamsMap = new HashMap();
    private static final Map implicitParamsStrMap = new HashMap();
    private static final long serialVersionUID = 0x7f45bc252edf5f0aL;
    private final HttpParameter IMPLICIT_PARAMS[];
    private final String IMPLICIT_PARAMS_STR;
    private final HttpParameter INCLUDE_MY_RETWEET;

    TwitterImpl(Configuration configuration, Authorization authorization)
    {
        super(configuration, authorization);
        INCLUDE_MY_RETWEET = new HttpParameter("include_my_retweet", configuration.isIncludeMyRetweetEnabled());
        HttpParameter ahttpparameter[] = (HttpParameter[])implicitParamsMap.get(configuration);
        String s = (String)implicitParamsStrMap.get(configuration);
        String s1;
        boolean flag;
        String s2;
        ArrayList arraylist;
        HttpParameter ahttpparameter1[];
        if (ahttpparameter == null)
        {
            if (configuration.isIncludeEntitiesEnabled())
            {
                s1 = "include_entities=true";
            } else
            {
                s1 = "";
            }
        } else
        {
            s1 = s;
        }
        if (configuration.getContributingTo() != -1L)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            if (!"".equals(s1))
            {
                s1 = (new StringBuilder()).append(s1).append("?").toString();
            }
            s2 = (new StringBuilder()).append(s1).append("contributingto=").append(configuration.getContributingTo()).toString();
        } else
        {
            s2 = s1;
        }
        implicitParamsStrMap.put(configuration, s2);
        arraylist = new ArrayList(2);
        if (configuration.isIncludeEntitiesEnabled())
        {
            arraylist.add(new HttpParameter("include_entities", "true"));
        }
        if (flag)
        {
            arraylist.add(new HttpParameter("contributingto", configuration.getContributingTo()));
        }
        if (configuration.isTrimUserEnabled())
        {
            arraylist.add(new HttpParameter("trim_user", "1"));
        }
        ahttpparameter1 = (HttpParameter[])arraylist.toArray(new HttpParameter[arraylist.size()]);
        implicitParamsMap.put(configuration, ahttpparameter1);
        IMPLICIT_PARAMS = ahttpparameter1;
        IMPLICIT_PARAMS_STR = s2;
    }

    private void addParameterToList(List list1, String s, String s1)
    {
        if (s1 != null)
        {
            list1.add(new HttpParameter(s, s1));
        }
    }

    private void checkFileValidity(File file)
    {
        if (!file.exists())
        {
            throw new TwitterException(new FileNotFoundException((new StringBuilder()).append(file).append(" is not found.").toString()));
        }
        if (!file.isFile())
        {
            throw new TwitterException(new IOException((new StringBuilder()).append(file).append(" is not a file.").toString()));
        } else
        {
            return;
        }
    }

    private HttpResponse get(String s)
    {
        long l;
        ensureAuthorizationEnabled();
        if (IMPLICIT_PARAMS_STR.length() > 0)
        {
            if (s.contains("?"))
            {
                s = (new StringBuilder()).append(s).append("&").append(IMPLICIT_PARAMS_STR).toString();
            } else
            {
                s = (new StringBuilder()).append(s).append("?").append(IMPLICIT_PARAMS_STR).toString();
            }
        }
        if (!conf.isMBeanEnabled())
        {
            return http.get(s, null, auth, this);
        }
        l = System.currentTimeMillis();
        HttpResponse httpresponse = http.get(s, null, auth, this);
        long l2 = System.currentTimeMillis() - l;
        TwitterAPIMonitor.getInstance().methodCalled(s, l2, isOk(httpresponse));
        return httpresponse;
        Exception exception;
        exception;
        long l1 = System.currentTimeMillis() - l;
        TwitterAPIMonitor.getInstance().methodCalled(s, l1, isOk(null));
        throw exception;
    }

    private HttpResponse get(String s, HttpParameter ahttpparameter[])
    {
        long l;
        ensureAuthorizationEnabled();
        if (!conf.isMBeanEnabled())
        {
            return http.get(s, mergeImplicitParams(ahttpparameter), auth, this);
        }
        l = System.currentTimeMillis();
        HttpResponse httpresponse = http.get(s, mergeImplicitParams(ahttpparameter), auth, this);
        long l2 = System.currentTimeMillis() - l;
        TwitterAPIMonitor.getInstance().methodCalled(s, l2, isOk(httpresponse));
        return httpresponse;
        Exception exception;
        exception;
        long l1 = System.currentTimeMillis() - l;
        TwitterAPIMonitor.getInstance().methodCalled(s, l1, isOk(null));
        throw exception;
    }

    private boolean isOk(HttpResponse httpresponse)
    {
        return httpresponse != null && httpresponse.getStatusCode() < 300;
    }

    private HttpParameter[] mergeImplicitParams(HttpParameter ahttpparameter[])
    {
        return mergeParameters(ahttpparameter, IMPLICIT_PARAMS);
    }

    private HttpParameter[] mergeParameters(HttpParameter ahttpparameter[], HttpParameter httpparameter)
    {
        if (ahttpparameter != null && httpparameter != null)
        {
            HttpParameter ahttpparameter1[] = new HttpParameter[1 + ahttpparameter.length];
            System.arraycopy(ahttpparameter, 0, ahttpparameter1, 0, ahttpparameter.length);
            ahttpparameter1[-1 + ahttpparameter1.length] = httpparameter;
            ahttpparameter = ahttpparameter1;
        } else
        {
            if (ahttpparameter == null && httpparameter == null)
            {
                return new HttpParameter[0];
            }
            if (ahttpparameter == null)
            {
                return (new HttpParameter[] {
                    httpparameter
                });
            }
        }
        return ahttpparameter;
    }

    private HttpParameter[] mergeParameters(HttpParameter ahttpparameter[], HttpParameter ahttpparameter1[])
    {
        if (ahttpparameter != null && ahttpparameter1 != null)
        {
            HttpParameter ahttpparameter2[] = new HttpParameter[ahttpparameter.length + ahttpparameter1.length];
            System.arraycopy(ahttpparameter, 0, ahttpparameter2, 0, ahttpparameter.length);
            System.arraycopy(ahttpparameter1, 0, ahttpparameter2, ahttpparameter.length, ahttpparameter1.length);
            ahttpparameter = ahttpparameter2;
        } else
        {
            if (ahttpparameter == null && ahttpparameter1 == null)
            {
                return new HttpParameter[0];
            }
            if (ahttpparameter == null)
            {
                return ahttpparameter1;
            }
        }
        return ahttpparameter;
    }

    private HttpResponse post(String s)
    {
        long l;
        ensureAuthorizationEnabled();
        if (!conf.isMBeanEnabled())
        {
            return http.post(s, IMPLICIT_PARAMS, auth, this);
        }
        l = System.currentTimeMillis();
        HttpResponse httpresponse = http.post(s, IMPLICIT_PARAMS, auth, this);
        long l2 = System.currentTimeMillis() - l;
        TwitterAPIMonitor.getInstance().methodCalled(s, l2, isOk(httpresponse));
        return httpresponse;
        Exception exception;
        exception;
        long l1 = System.currentTimeMillis() - l;
        TwitterAPIMonitor.getInstance().methodCalled(s, l1, isOk(null));
        throw exception;
    }

    private HttpResponse post(String s, HttpParameter ahttpparameter[])
    {
        long l;
        ensureAuthorizationEnabled();
        if (!conf.isMBeanEnabled())
        {
            return http.post(s, mergeImplicitParams(ahttpparameter), auth, this);
        }
        l = System.currentTimeMillis();
        HttpResponse httpresponse = http.post(s, mergeImplicitParams(ahttpparameter), auth, this);
        long l2 = System.currentTimeMillis() - l;
        TwitterAPIMonitor.getInstance().methodCalled(s, l2, isOk(httpresponse));
        return httpresponse;
        Exception exception;
        exception;
        long l1 = System.currentTimeMillis() - l;
        TwitterAPIMonitor.getInstance().methodCalled(s, l1, isOk(null));
        throw exception;
    }

    private transient UserList updateUserList(String s, boolean flag, String s1, HttpParameter ahttpparameter[])
    {
        ArrayList arraylist = new ArrayList();
        Collections.addAll(arraylist, ahttpparameter);
        if (s != null)
        {
            arraylist.add(new HttpParameter("name", s));
        }
        String s2;
        if (flag)
        {
            s2 = "public";
        } else
        {
            s2 = "private";
        }
        arraylist.add(new HttpParameter("mode", s2));
        if (s1 != null)
        {
            arraylist.add(new HttpParameter("description", s1));
        }
        return factory.createAUserList(post((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/update.json").toString(), (HttpParameter[])arraylist.toArray(new HttpParameter[arraylist.size()])));
    }

    public User createBlock(long l)
    {
        return factory.createUser(post((new StringBuilder()).append(conf.getRestBaseURL()).append("blocks/create.json?user_id=").append(l).toString()));
    }

    public User createBlock(String s)
    {
        return factory.createUser(post((new StringBuilder()).append(conf.getRestBaseURL()).append("blocks/create.json?screen_name=").append(s).toString()));
    }

    public Status createFavorite(long l)
    {
        return factory.createStatus(post((new StringBuilder()).append(conf.getRestBaseURL()).append("favorites/create.json?id=").append(l).toString()));
    }

    public User createFriendship(long l)
    {
        return factory.createUser(post((new StringBuilder()).append(conf.getRestBaseURL()).append("friendships/create.json?user_id=").append(l).toString()));
    }

    public User createFriendship(long l, boolean flag)
    {
        return factory.createUser(post((new StringBuilder()).append(conf.getRestBaseURL()).append("friendships/create.json?user_id=").append(l).append("&follow=").append(flag).toString()));
    }

    public User createFriendship(String s)
    {
        return factory.createUser(post((new StringBuilder()).append(conf.getRestBaseURL()).append("friendships/create.json?screen_name=").append(s).toString()));
    }

    public User createFriendship(String s, boolean flag)
    {
        return factory.createUser(post((new StringBuilder()).append(conf.getRestBaseURL()).append("friendships/create.json?screen_name=").append(s).append("&follow=").append(flag).toString()));
    }

    public Place createPlace(String s, String s1, String s2, GeoLocation geolocation, String s3)
    {
        ArrayList arraylist = new ArrayList(3);
        arraylist.add(new HttpParameter("name", s));
        arraylist.add(new HttpParameter("contained_within", s1));
        arraylist.add(new HttpParameter("token", s2));
        arraylist.add(new HttpParameter("lat", geolocation.getLatitude()));
        arraylist.add(new HttpParameter("long", geolocation.getLongitude()));
        if (s3 != null)
        {
            arraylist.add(new HttpParameter("attribute:street_address", s3));
        }
        return factory.createPlace(post((new StringBuilder()).append(conf.getRestBaseURL()).append("geo/place.json").toString(), (HttpParameter[])arraylist.toArray(new HttpParameter[arraylist.size()])));
    }

    public SavedSearch createSavedSearch(String s)
    {
        ObjectFactory objectfactory = factory;
        String s1 = (new StringBuilder()).append(conf.getRestBaseURL()).append("saved_searches/create.json").toString();
        HttpParameter ahttpparameter[] = new HttpParameter[1];
        ahttpparameter[0] = new HttpParameter("query", s);
        return objectfactory.createSavedSearch(post(s1, ahttpparameter));
    }

    public UserList createUserList(String s, boolean flag, String s1)
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(new HttpParameter("name", s));
        String s2;
        if (flag)
        {
            s2 = "public";
        } else
        {
            s2 = "private";
        }
        arraylist.add(new HttpParameter("mode", s2));
        if (s1 != null)
        {
            arraylist.add(new HttpParameter("description", s1));
        }
        return factory.createAUserList(post((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/create.json").toString(), (HttpParameter[])arraylist.toArray(new HttpParameter[arraylist.size()])));
    }

    public UserList createUserListMember(long l, long l1)
    {
        ObjectFactory objectfactory = factory;
        String s = (new StringBuilder()).append(conf.getRestBaseURL()).append("lists/members/create.json").toString();
        HttpParameter ahttpparameter[] = new HttpParameter[2];
        ahttpparameter[0] = new HttpParameter("user_id", l1);
        ahttpparameter[1] = new HttpParameter("list_id", l);
        return objectfactory.createAUserList(post(s, ahttpparameter));
    }

    public UserList createUserListMember(long l, String s, long l1)
    {
        ObjectFactory objectfactory = factory;
        String s1 = (new StringBuilder()).append(conf.getRestBaseURL()).append("lists/members/create.json").toString();
        HttpParameter ahttpparameter[] = new HttpParameter[3];
        ahttpparameter[0] = new HttpParameter("user_id", l1);
        ahttpparameter[1] = new HttpParameter("owner_id", l);
        ahttpparameter[2] = new HttpParameter("slug", s);
        return objectfactory.createAUserList(post(s1, ahttpparameter));
    }

    public UserList createUserListMember(String s, String s1, long l)
    {
        ObjectFactory objectfactory = factory;
        String s2 = (new StringBuilder()).append(conf.getRestBaseURL()).append("lists/members/create.json").toString();
        HttpParameter ahttpparameter[] = new HttpParameter[3];
        ahttpparameter[0] = new HttpParameter("user_id", l);
        ahttpparameter[1] = new HttpParameter("owner_screen_name", s);
        ahttpparameter[2] = new HttpParameter("slug", s1);
        return objectfactory.createAUserList(post(s2, ahttpparameter));
    }

    public UserList createUserListMembers(long l, String s, long al[])
    {
        ObjectFactory objectfactory = factory;
        String s1 = (new StringBuilder()).append(conf.getRestBaseURL()).append("lists/members/create_all.json").toString();
        HttpParameter ahttpparameter[] = new HttpParameter[3];
        ahttpparameter[0] = new HttpParameter("owner_id", l);
        ahttpparameter[1] = new HttpParameter("slug", s);
        ahttpparameter[2] = new HttpParameter("user_id", StringUtil.join(al));
        return objectfactory.createAUserList(post(s1, ahttpparameter));
    }

    public UserList createUserListMembers(long l, String s, String as[])
    {
        ObjectFactory objectfactory = factory;
        String s1 = (new StringBuilder()).append(conf.getRestBaseURL()).append("lists/members/create_all.json").toString();
        HttpParameter ahttpparameter[] = new HttpParameter[3];
        ahttpparameter[0] = new HttpParameter("owner_id", l);
        ahttpparameter[1] = new HttpParameter("slug", s);
        ahttpparameter[2] = new HttpParameter("screen_name", StringUtil.join(as));
        return objectfactory.createAUserList(post(s1, ahttpparameter));
    }

    public UserList createUserListMembers(long l, long al[])
    {
        ObjectFactory objectfactory = factory;
        String s = (new StringBuilder()).append(conf.getRestBaseURL()).append("lists/members/create_all.json").toString();
        HttpParameter ahttpparameter[] = new HttpParameter[2];
        ahttpparameter[0] = new HttpParameter("list_id", l);
        ahttpparameter[1] = new HttpParameter("user_id", StringUtil.join(al));
        return objectfactory.createAUserList(post(s, ahttpparameter));
    }

    public UserList createUserListMembers(long l, String as[])
    {
        ObjectFactory objectfactory = factory;
        String s = (new StringBuilder()).append(conf.getRestBaseURL()).append("lists/members/create_all.json").toString();
        HttpParameter ahttpparameter[] = new HttpParameter[2];
        ahttpparameter[0] = new HttpParameter("list_id", l);
        ahttpparameter[1] = new HttpParameter("screen_name", StringUtil.join(as));
        return objectfactory.createAUserList(post(s, ahttpparameter));
    }

    public UserList createUserListMembers(String s, String s1, long al[])
    {
        ObjectFactory objectfactory = factory;
        String s2 = (new StringBuilder()).append(conf.getRestBaseURL()).append("lists/members/create_all.json").toString();
        HttpParameter ahttpparameter[] = new HttpParameter[3];
        ahttpparameter[0] = new HttpParameter("owner_screen_name", s);
        ahttpparameter[1] = new HttpParameter("slug", s1);
        ahttpparameter[2] = new HttpParameter("user_id", StringUtil.join(al));
        return objectfactory.createAUserList(post(s2, ahttpparameter));
    }

    public UserList createUserListMembers(String s, String s1, String as[])
    {
        ObjectFactory objectfactory = factory;
        String s2 = (new StringBuilder()).append(conf.getRestBaseURL()).append("lists/members/create_all.json").toString();
        HttpParameter ahttpparameter[] = new HttpParameter[3];
        ahttpparameter[0] = new HttpParameter("owner_screen_name", s);
        ahttpparameter[1] = new HttpParameter("slug", s1);
        ahttpparameter[2] = new HttpParameter("screen_name", StringUtil.join(as));
        return objectfactory.createAUserList(post(s2, ahttpparameter));
    }

    public UserList createUserListSubscription(long l)
    {
        ObjectFactory objectfactory = factory;
        String s = (new StringBuilder()).append(conf.getRestBaseURL()).append("lists/subscribers/create.json").toString();
        HttpParameter ahttpparameter[] = new HttpParameter[1];
        ahttpparameter[0] = new HttpParameter("list_id", l);
        return objectfactory.createAUserList(post(s, ahttpparameter));
    }

    public UserList createUserListSubscription(long l, String s)
    {
        ObjectFactory objectfactory = factory;
        String s1 = (new StringBuilder()).append(conf.getRestBaseURL()).append("lists/subscribers/create.json").toString();
        HttpParameter ahttpparameter[] = new HttpParameter[2];
        ahttpparameter[0] = new HttpParameter("owner_id", l);
        ahttpparameter[1] = new HttpParameter("slug", s);
        return objectfactory.createAUserList(post(s1, ahttpparameter));
    }

    public UserList createUserListSubscription(String s, String s1)
    {
        ObjectFactory objectfactory = factory;
        String s2 = (new StringBuilder()).append(conf.getRestBaseURL()).append("lists/subscribers/create.json").toString();
        HttpParameter ahttpparameter[] = new HttpParameter[2];
        ahttpparameter[0] = new HttpParameter("owner_screen_name", s);
        ahttpparameter[1] = new HttpParameter("slug", s1);
        return objectfactory.createAUserList(post(s2, ahttpparameter));
    }

    public User destroyBlock(long l)
    {
        return factory.createUser(post((new StringBuilder()).append(conf.getRestBaseURL()).append("blocks/destroy.json?user_id=").append(l).toString()));
    }

    public User destroyBlock(String s)
    {
        return factory.createUser(post((new StringBuilder()).append(conf.getRestBaseURL()).append("blocks/destroy.json?screen_name=").append(s).toString()));
    }

    public DirectMessage destroyDirectMessage(long l)
    {
        return factory.createDirectMessage(post((new StringBuilder()).append(conf.getRestBaseURL()).append("direct_messages/destroy.json?id=").append(l).toString()));
    }

    public Status destroyFavorite(long l)
    {
        return factory.createStatus(post((new StringBuilder()).append(conf.getRestBaseURL()).append("favorites/destroy.json?id=").append(l).toString()));
    }

    public User destroyFriendship(long l)
    {
        return factory.createUser(post((new StringBuilder()).append(conf.getRestBaseURL()).append("friendships/destroy.json?user_id=").append(l).toString()));
    }

    public User destroyFriendship(String s)
    {
        return factory.createUser(post((new StringBuilder()).append(conf.getRestBaseURL()).append("friendships/destroy.json?screen_name=").append(s).toString()));
    }

    public SavedSearch destroySavedSearch(int i)
    {
        return factory.createSavedSearch(post((new StringBuilder()).append(conf.getRestBaseURL()).append("saved_searches/destroy/").append(i).append(".json").toString()));
    }

    public Status destroyStatus(long l)
    {
        return factory.createStatus(post((new StringBuilder()).append(conf.getRestBaseURL()).append("statuses/destroy/").append(l).append(".json").toString()));
    }

    public UserList destroyUserList(long l)
    {
        ObjectFactory objectfactory = factory;
        String s = (new StringBuilder()).append(conf.getRestBaseURL()).append("lists/destroy.json").toString();
        HttpParameter ahttpparameter[] = new HttpParameter[1];
        ahttpparameter[0] = new HttpParameter("list_id", l);
        return objectfactory.createAUserList(post(s, ahttpparameter));
    }

    public UserList destroyUserList(long l, String s)
    {
        ObjectFactory objectfactory = factory;
        String s1 = (new StringBuilder()).append(conf.getRestBaseURL()).append("lists/destroy.json").toString();
        HttpParameter ahttpparameter[] = new HttpParameter[2];
        ahttpparameter[0] = new HttpParameter("owner_id", l);
        ahttpparameter[1] = new HttpParameter("slug", s);
        return objectfactory.createAUserList(post(s1, ahttpparameter));
    }

    public UserList destroyUserList(String s, String s1)
    {
        ObjectFactory objectfactory = factory;
        String s2 = (new StringBuilder()).append(conf.getRestBaseURL()).append("lists/destroy.json").toString();
        HttpParameter ahttpparameter[] = new HttpParameter[2];
        ahttpparameter[0] = new HttpParameter("owner_screen_name", s);
        ahttpparameter[1] = new HttpParameter("slug", s1);
        return objectfactory.createAUserList(post(s2, ahttpparameter));
    }

    public UserList destroyUserListMember(long l, long l1)
    {
        ObjectFactory objectfactory = factory;
        String s = (new StringBuilder()).append(conf.getRestBaseURL()).append("lists/members/destroy.json").toString();
        HttpParameter ahttpparameter[] = new HttpParameter[2];
        ahttpparameter[0] = new HttpParameter("list_id", l);
        ahttpparameter[1] = new HttpParameter("user_id", l1);
        return objectfactory.createAUserList(post(s, ahttpparameter));
    }

    public UserList destroyUserListMember(long l, String s)
    {
        ObjectFactory objectfactory = factory;
        String s1 = (new StringBuilder()).append(conf.getRestBaseURL()).append("lists/members/destroy.json").toString();
        HttpParameter ahttpparameter[] = new HttpParameter[2];
        ahttpparameter[0] = new HttpParameter("list_id", l);
        ahttpparameter[1] = new HttpParameter("screen_name", s);
        return objectfactory.createAUserList(post(s1, ahttpparameter));
    }

    public UserList destroyUserListMember(long l, String s, long l1)
    {
        ObjectFactory objectfactory = factory;
        String s1 = (new StringBuilder()).append(conf.getRestBaseURL()).append("lists/members/destroy.json").toString();
        HttpParameter ahttpparameter[] = new HttpParameter[3];
        ahttpparameter[0] = new HttpParameter("owner_id", l);
        ahttpparameter[1] = new HttpParameter("slug", s);
        ahttpparameter[2] = new HttpParameter("user_id", l1);
        return objectfactory.createAUserList(post(s1, ahttpparameter));
    }

    public UserList destroyUserListMember(String s, String s1, long l)
    {
        ObjectFactory objectfactory = factory;
        String s2 = (new StringBuilder()).append(conf.getRestBaseURL()).append("lists/members/destroy.json").toString();
        HttpParameter ahttpparameter[] = new HttpParameter[3];
        ahttpparameter[0] = new HttpParameter("owner_screen_name", s);
        ahttpparameter[1] = new HttpParameter("slug", s1);
        ahttpparameter[2] = new HttpParameter("user_id", l);
        return objectfactory.createAUserList(post(s2, ahttpparameter));
    }

    public UserList destroyUserListMembers(long l, long al[])
    {
        ObjectFactory objectfactory = factory;
        String s = (new StringBuilder()).append(conf.getRestBaseURL()).append("lists/members/destroy_all.json").toString();
        HttpParameter ahttpparameter[] = new HttpParameter[2];
        ahttpparameter[0] = new HttpParameter("list_id", l);
        ahttpparameter[1] = new HttpParameter("user_id", StringUtil.join(al));
        return objectfactory.createAUserList(post(s, ahttpparameter));
    }

    public UserList destroyUserListMembers(long l, String as[])
    {
        ObjectFactory objectfactory = factory;
        String s = (new StringBuilder()).append(conf.getRestBaseURL()).append("lists/members/destroy_all.json").toString();
        HttpParameter ahttpparameter[] = new HttpParameter[2];
        ahttpparameter[0] = new HttpParameter("list_id", l);
        ahttpparameter[1] = new HttpParameter("screen_name", StringUtil.join(as));
        return objectfactory.createAUserList(post(s, ahttpparameter));
    }

    public UserList destroyUserListMembers(String s, String s1, String as[])
    {
        ObjectFactory objectfactory = factory;
        String s2 = (new StringBuilder()).append(conf.getRestBaseURL()).append("lists/members/destroy_all.json").toString();
        HttpParameter ahttpparameter[] = new HttpParameter[3];
        ahttpparameter[0] = new HttpParameter("owner_screen_name", s);
        ahttpparameter[1] = new HttpParameter("slug", s1);
        ahttpparameter[2] = new HttpParameter("screen_name", StringUtil.join(as));
        return objectfactory.createAUserList(post(s2, ahttpparameter));
    }

    public UserList destroyUserListSubscription(long l)
    {
        ObjectFactory objectfactory = factory;
        String s = (new StringBuilder()).append(conf.getRestBaseURL()).append("lists/subscribers/destroy.json").toString();
        HttpParameter ahttpparameter[] = new HttpParameter[1];
        ahttpparameter[0] = new HttpParameter("list_id", l);
        return objectfactory.createAUserList(post(s, ahttpparameter));
    }

    public UserList destroyUserListSubscription(long l, String s)
    {
        ObjectFactory objectfactory = factory;
        String s1 = (new StringBuilder()).append(conf.getRestBaseURL()).append("lists/subscribers/destroy.json").toString();
        HttpParameter ahttpparameter[] = new HttpParameter[2];
        ahttpparameter[0] = new HttpParameter("owner_id", l);
        ahttpparameter[1] = new HttpParameter("slug", s);
        return objectfactory.createAUserList(post(s1, ahttpparameter));
    }

    public UserList destroyUserListSubscription(String s, String s1)
    {
        ObjectFactory objectfactory = factory;
        String s2 = (new StringBuilder()).append(conf.getRestBaseURL()).append("lists/subscribers/destroy.json").toString();
        HttpParameter ahttpparameter[] = new HttpParameter[2];
        ahttpparameter[0] = new HttpParameter("owner_screen_name", s);
        ahttpparameter[1] = new HttpParameter("slug", s1);
        return objectfactory.createAUserList(post(s2, ahttpparameter));
    }

    public DirectMessagesResources directMessages()
    {
        return this;
    }

    public FavoritesResources favorites()
    {
        return this;
    }

    public FriendsFollowersResources friendsFollowers()
    {
        return this;
    }

    public TwitterAPIConfiguration getAPIConfiguration()
    {
        return factory.createTwitterAPIConfiguration(get((new StringBuilder()).append(conf.getRestBaseURL()).append("help/configuration.json").toString()));
    }

    public AccountSettings getAccountSettings()
    {
        return factory.createAccountSettings(get((new StringBuilder()).append(conf.getRestBaseURL()).append("account/settings.json").toString()));
    }

    public ResponseList getAvailableTrends()
    {
        return factory.createLocationList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("trends/available.json").toString()));
    }

    public IDs getBlocksIDs()
    {
        return factory.createIDs(get((new StringBuilder()).append(conf.getRestBaseURL()).append("blocks/ids.json").toString()));
    }

    public IDs getBlocksIDs(long l)
    {
        return factory.createIDs(get((new StringBuilder()).append(conf.getRestBaseURL()).append("blocks/ids.json?cursor=").append(l).toString()));
    }

    public PagableResponseList getBlocksList()
    {
        return getBlocksList(-1L);
    }

    public PagableResponseList getBlocksList(long l)
    {
        return factory.createPagableUserList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("blocks/list.json?cursor=").append(l).toString()));
    }

    public ResponseList getClosestTrends(GeoLocation geolocation)
    {
        ObjectFactory objectfactory = factory;
        String s = (new StringBuilder()).append(conf.getRestBaseURL()).append("trends/closest.json").toString();
        HttpParameter ahttpparameter[] = new HttpParameter[2];
        ahttpparameter[0] = new HttpParameter("lat", geolocation.getLatitude());
        ahttpparameter[1] = new HttpParameter("long", geolocation.getLongitude());
        return objectfactory.createLocationList(get(s, ahttpparameter));
    }

    public ResponseList getContributees(long l)
    {
        return factory.createUserList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("users/contributees.json?user_id=").append(l).toString()));
    }

    public ResponseList getContributees(String s)
    {
        return factory.createUserList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("users/contributees.json?screen_name=").append(s).toString()));
    }

    public ResponseList getContributors(long l)
    {
        return factory.createUserList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("users/contributors.json?user_id=").append(l).toString()));
    }

    public ResponseList getContributors(String s)
    {
        return factory.createUserList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("users/contributors.json?screen_name=").append(s).toString()));
    }

    public InputStream getDMImageAsStream(String s)
    {
        return get(s).asStream();
    }

    public ResponseList getDirectMessages()
    {
        return factory.createDirectMessageList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("direct_messages.json").toString()));
    }

    public ResponseList getDirectMessages(Paging paging)
    {
        return factory.createDirectMessageList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("direct_messages.json").toString(), paging.asPostParameterArray()));
    }

    public ResponseList getFavorites()
    {
        return factory.createStatusList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("favorites/list.json").toString()));
    }

    public ResponseList getFavorites(long l)
    {
        return factory.createStatusList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("favorites/list.json?user_id=").append(l).toString()));
    }

    public ResponseList getFavorites(long l, Paging paging)
    {
        ObjectFactory objectfactory = factory;
        String s = (new StringBuilder()).append(conf.getRestBaseURL()).append("favorites/list.json").toString();
        HttpParameter ahttpparameter[] = new HttpParameter[1];
        ahttpparameter[0] = new HttpParameter("user_id", l);
        return objectfactory.createStatusList(get(s, mergeParameters(ahttpparameter, paging.asPostParameterArray())));
    }

    public ResponseList getFavorites(String s)
    {
        return factory.createStatusList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("favorites/list.json?screen_name=").append(s).toString()));
    }

    public ResponseList getFavorites(String s, Paging paging)
    {
        ObjectFactory objectfactory = factory;
        String s1 = (new StringBuilder()).append(conf.getRestBaseURL()).append("favorites/list.json").toString();
        HttpParameter ahttpparameter[] = new HttpParameter[1];
        ahttpparameter[0] = new HttpParameter("screen_name", s);
        return objectfactory.createStatusList(get(s1, mergeParameters(ahttpparameter, paging.asPostParameterArray())));
    }

    public ResponseList getFavorites(Paging paging)
    {
        return factory.createStatusList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("favorites/list.json").toString(), paging.asPostParameterArray()));
    }

    public IDs getFollowersIDs(long l)
    {
        return factory.createIDs(get((new StringBuilder()).append(conf.getRestBaseURL()).append("followers/ids.json?cursor=").append(l).toString()));
    }

    public IDs getFollowersIDs(long l, long l1)
    {
        return factory.createIDs(get((new StringBuilder()).append(conf.getRestBaseURL()).append("followers/ids.json?user_id=").append(l).append("&cursor=").append(l1).toString()));
    }

    public IDs getFollowersIDs(String s, long l)
    {
        return factory.createIDs(get((new StringBuilder()).append(conf.getRestBaseURL()).append("followers/ids.json?screen_name=").append(s).append("&cursor=").append(l).toString()));
    }

    public PagableResponseList getFollowersList(long l, long l1)
    {
        return getFollowersList(l, l1, 20);
    }

    public PagableResponseList getFollowersList(long l, long l1, int i)
    {
        return factory.createPagableUserList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("followers/list.json?user_id=").append(l).append("&cursor=").append(l1).append("&count=").append(i).toString()));
    }

    public PagableResponseList getFollowersList(String s, long l)
    {
        return getFollowersList(s, l, 20);
    }

    public PagableResponseList getFollowersList(String s, long l, int i)
    {
        return factory.createPagableUserList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("followers/list.json?screen_name=").append(s).append("&cursor=").append(l).append("&count=").append(i).toString()));
    }

    public IDs getFriendsIDs(long l)
    {
        return factory.createIDs(get((new StringBuilder()).append(conf.getRestBaseURL()).append("friends/ids.json?cursor=").append(l).toString()));
    }

    public IDs getFriendsIDs(long l, long l1)
    {
        return factory.createIDs(get((new StringBuilder()).append(conf.getRestBaseURL()).append("friends/ids.json?user_id=").append(l).append("&cursor=").append(l1).toString()));
    }

    public IDs getFriendsIDs(String s, long l)
    {
        return factory.createIDs(get((new StringBuilder()).append(conf.getRestBaseURL()).append("friends/ids.json?screen_name=").append(s).append("&cursor=").append(l).toString()));
    }

    public PagableResponseList getFriendsList(long l, long l1)
    {
        return factory.createPagableUserList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("friends/list.json?user_id=").append(l).append("&cursor=").append(l1).toString()));
    }

    public PagableResponseList getFriendsList(String s, long l)
    {
        return factory.createPagableUserList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("friends/list.json?screen_name=").append(s).append("&cursor=").append(l).toString()));
    }

    public Place getGeoDetails(String s)
    {
        return factory.createPlace(get((new StringBuilder()).append(conf.getRestBaseURL()).append("geo/id/").append(s).append(".json").toString()));
    }

    public ResponseList getHomeTimeline()
    {
        ObjectFactory objectfactory = factory;
        String s = (new StringBuilder()).append(conf.getRestBaseURL()).append("statuses/home_timeline.json").toString();
        HttpParameter ahttpparameter[] = new HttpParameter[1];
        ahttpparameter[0] = INCLUDE_MY_RETWEET;
        return objectfactory.createStatusList(get(s, ahttpparameter));
    }

    public ResponseList getHomeTimeline(Paging paging)
    {
        ObjectFactory objectfactory = factory;
        String s = (new StringBuilder()).append(conf.getRestBaseURL()).append("statuses/home_timeline.json").toString();
        HttpParameter ahttpparameter[] = paging.asPostParameterArray();
        HttpParameter ahttpparameter1[] = new HttpParameter[1];
        ahttpparameter1[0] = INCLUDE_MY_RETWEET;
        return objectfactory.createStatusList(get(s, mergeParameters(ahttpparameter, ahttpparameter1)));
    }

    public IDs getIncomingFriendships(long l)
    {
        return factory.createIDs(get((new StringBuilder()).append(conf.getRestBaseURL()).append("friendships/incoming.json?cursor=").append(l).toString()));
    }

    public ResponseList getLanguages()
    {
        return factory.createLanguageList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("help/languages.json").toString()));
    }

    public ResponseList getMemberSuggestions(String s)
    {
        HttpResponse httpresponse;
        try
        {
            httpresponse = get((new StringBuilder()).append(conf.getRestBaseURL()).append("users/suggestions/").append(URLEncoder.encode(s, "UTF-8")).append("/members.json").toString());
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new RuntimeException(unsupportedencodingexception);
        }
        return factory.createUserListFromJSONArray(httpresponse);
    }

    public ResponseList getMentionsTimeline()
    {
        return factory.createStatusList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("statuses/mentions_timeline.json").toString()));
    }

    public ResponseList getMentionsTimeline(Paging paging)
    {
        return factory.createStatusList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("statuses/mentions_timeline.json").toString(), paging.asPostParameterArray()));
    }

    public OEmbed getOEmbed(OEmbedRequest oembedrequest)
    {
        return factory.createOEmbed(get((new StringBuilder()).append(conf.getRestBaseURL()).append("statuses/oembed.json").toString(), oembedrequest.asHttpParameterArray()));
    }

    public IDs getOutgoingFriendships(long l)
    {
        return factory.createIDs(get((new StringBuilder()).append(conf.getRestBaseURL()).append("friendships/outgoing.json?cursor=").append(l).toString()));
    }

    public Trends getPlaceTrends(int i)
    {
        return factory.createTrends(get((new StringBuilder()).append(conf.getRestBaseURL()).append("trends/place.json?id=").append(i).toString()));
    }

    public String getPrivacyPolicy()
    {
        String s;
        try
        {
            s = get((new StringBuilder()).append(conf.getRestBaseURL()).append("help/privacy.json").toString()).asJSONObject().getString("privacy");
        }
        catch (JSONException jsonexception)
        {
            throw new TwitterException(jsonexception);
        }
        return s;
    }

    public Map getRateLimitStatus()
    {
        return factory.createRateLimitStatuses(get((new StringBuilder()).append(conf.getRestBaseURL()).append("application/rate_limit_status.json").toString()));
    }

    public transient Map getRateLimitStatus(String as[])
    {
        return factory.createRateLimitStatuses(get((new StringBuilder()).append(conf.getRestBaseURL()).append("application/rate_limit_status.json?resources=").append(StringUtil.join(as)).toString()));
    }

    public IDs getRetweeterIds(long l, int i, long l1)
    {
        return factory.createIDs(get((new StringBuilder()).append(conf.getRestBaseURL()).append("statuses/retweeters/ids.json?id=").append(l).append("&cursor=").append(l1).append("&count=").append(i).toString()));
    }

    public IDs getRetweeterIds(long l, long l1)
    {
        return getRetweeterIds(l, 100, l1);
    }

    public ResponseList getRetweets(long l)
    {
        return factory.createStatusList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("statuses/retweets/").append(l).append(".json?count=100").toString()));
    }

    public ResponseList getRetweetsOfMe()
    {
        return factory.createStatusList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("statuses/retweets_of_me.json").toString()));
    }

    public ResponseList getRetweetsOfMe(Paging paging)
    {
        return factory.createStatusList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("statuses/retweets_of_me.json").toString(), paging.asPostParameterArray()));
    }

    public ResponseList getSavedSearches()
    {
        return factory.createSavedSearchList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("saved_searches/list.json").toString()));
    }

    public ResponseList getSentDirectMessages()
    {
        return factory.createDirectMessageList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("direct_messages/sent.json").toString()));
    }

    public ResponseList getSentDirectMessages(Paging paging)
    {
        return factory.createDirectMessageList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("direct_messages/sent.json").toString(), paging.asPostParameterArray()));
    }

    public SimilarPlaces getSimilarPlaces(GeoLocation geolocation, String s, String s1, String s2)
    {
        ArrayList arraylist = new ArrayList(3);
        arraylist.add(new HttpParameter("lat", geolocation.getLatitude()));
        arraylist.add(new HttpParameter("long", geolocation.getLongitude()));
        arraylist.add(new HttpParameter("name", s));
        if (s1 != null)
        {
            arraylist.add(new HttpParameter("contained_within", s1));
        }
        if (s2 != null)
        {
            arraylist.add(new HttpParameter("attribute:street_address", s2));
        }
        return factory.createSimilarPlaces(get((new StringBuilder()).append(conf.getRestBaseURL()).append("geo/similar_places.json").toString(), (HttpParameter[])arraylist.toArray(new HttpParameter[arraylist.size()])));
    }

    public ResponseList getSuggestedUserCategories()
    {
        return factory.createCategoryList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("users/suggestions.json").toString()));
    }

    public String getTermsOfService()
    {
        String s;
        try
        {
            s = get((new StringBuilder()).append(conf.getRestBaseURL()).append("help/tos.json").toString()).asJSONObject().getString("tos");
        }
        catch (JSONException jsonexception)
        {
            throw new TwitterException(jsonexception);
        }
        return s;
    }

    public PagableResponseList getUserListMembers(long l, long l1)
    {
        return factory.createPagableUserList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/members.json?list_id=").append(l).append("&cursor=").append(l1).toString()));
    }

    public PagableResponseList getUserListMembers(long l, String s, long l1)
    {
        return factory.createPagableUserList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/members.json?owner_id=").append(l).append("&slug=").append(s).append("&cursor=").append(l1).toString()));
    }

    public PagableResponseList getUserListMembers(String s, String s1, long l)
    {
        return factory.createPagableUserList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/members.json?owner_screen_name=").append(s).append("&slug=").append(s1).append("&cursor=").append(l).toString()));
    }

    public PagableResponseList getUserListMemberships(long l)
    {
        return factory.createPagableUserListList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/memberships.json?cursor=").append(l).toString()));
    }

    public PagableResponseList getUserListMemberships(long l, long l1)
    {
        return getUserListMemberships(l, l1, false);
    }

    public PagableResponseList getUserListMemberships(long l, long l1, boolean flag)
    {
        return factory.createPagableUserListList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/memberships.json?user_id=").append(l).append("&cursor=").append(l1).append("&filter_to_owned_lists=").append(flag).toString()));
    }

    public PagableResponseList getUserListMemberships(String s, long l)
    {
        return getUserListMemberships(s, l, false);
    }

    public PagableResponseList getUserListMemberships(String s, long l, boolean flag)
    {
        return factory.createPagableUserListList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/memberships.json?screen_name=").append(s).append("&cursor=").append(l).append("&filter_to_owned_lists=").append(flag).toString()));
    }

    public ResponseList getUserListStatuses(long l, String s, Paging paging)
    {
        ObjectFactory objectfactory = factory;
        String s1 = (new StringBuilder()).append(conf.getRestBaseURL()).append("lists/statuses.json").toString();
        HttpParameter ahttpparameter[] = paging.asPostParameterArray(Paging.SMCP, "count");
        HttpParameter ahttpparameter1[] = new HttpParameter[2];
        ahttpparameter1[0] = new HttpParameter("owner_id", l);
        ahttpparameter1[1] = new HttpParameter("slug", s);
        return objectfactory.createStatusList(get(s1, mergeParameters(ahttpparameter, ahttpparameter1)));
    }

    public ResponseList getUserListStatuses(long l, Paging paging)
    {
        return factory.createStatusList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/statuses.json").toString(), mergeParameters(paging.asPostParameterArray(Paging.SMCP, "count"), new HttpParameter("list_id", l))));
    }

    public ResponseList getUserListStatuses(String s, String s1, Paging paging)
    {
        ObjectFactory objectfactory = factory;
        String s2 = (new StringBuilder()).append(conf.getRestBaseURL()).append("lists/statuses.json").toString();
        HttpParameter ahttpparameter[] = paging.asPostParameterArray(Paging.SMCP, "count");
        HttpParameter ahttpparameter1[] = new HttpParameter[2];
        ahttpparameter1[0] = new HttpParameter("owner_screen_name", s);
        ahttpparameter1[1] = new HttpParameter("slug", s1);
        return objectfactory.createStatusList(get(s2, mergeParameters(ahttpparameter, ahttpparameter1)));
    }

    public PagableResponseList getUserListSubscribers(long l, long l1)
    {
        return factory.createPagableUserList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/subscribers.json?list_id=").append(l).append("&cursor=").append(l1).toString()));
    }

    public PagableResponseList getUserListSubscribers(long l, String s, long l1)
    {
        return factory.createPagableUserList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/subscribers.json?owner_id=").append(l).append("&slug=").append(s).append("&cursor=").append(l1).toString()));
    }

    public PagableResponseList getUserListSubscribers(String s, String s1, long l)
    {
        return factory.createPagableUserList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/subscribers.json?owner_screen_name=").append(s).append("&slug=").append(s1).append("&cursor=").append(l).toString()));
    }

    public PagableResponseList getUserListSubscriptions(String s, long l)
    {
        return factory.createPagableUserListList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/subscriptions.json?screen_name=").append(s).append("&cursor=").append(l).toString()));
    }

    public ResponseList getUserLists(long l)
    {
        return factory.createUserListList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/list.json?user_id=").append(l).toString()));
    }

    public ResponseList getUserLists(String s)
    {
        return factory.createUserListList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/list.json?screen_name=").append(s).toString()));
    }

    public PagableResponseList getUserListsOwnerships(long l, int i, long l1)
    {
        ObjectFactory objectfactory = factory;
        String s = (new StringBuilder()).append(conf.getRestBaseURL()).append("lists/ownerships.json").toString();
        HttpParameter ahttpparameter[] = new HttpParameter[3];
        ahttpparameter[0] = new HttpParameter("user_id", l);
        ahttpparameter[1] = new HttpParameter("count", i);
        ahttpparameter[2] = new HttpParameter("cursor", l1);
        return objectfactory.createPagableUserListList(get(s, ahttpparameter));
    }

    public PagableResponseList getUserListsOwnerships(String s, int i, long l)
    {
        ObjectFactory objectfactory = factory;
        String s1 = (new StringBuilder()).append(conf.getRestBaseURL()).append("lists/ownerships.json").toString();
        HttpParameter ahttpparameter[] = new HttpParameter[3];
        ahttpparameter[0] = new HttpParameter("screen_name", s);
        ahttpparameter[1] = new HttpParameter("count", i);
        ahttpparameter[2] = new HttpParameter("cursor", l);
        return objectfactory.createPagableUserListList(get(s1, ahttpparameter));
    }

    public ResponseList getUserSuggestions(String s)
    {
        HttpResponse httpresponse;
        try
        {
            httpresponse = get((new StringBuilder()).append(conf.getRestBaseURL()).append("users/suggestions/").append(URLEncoder.encode(s, "UTF-8")).append(".json").toString());
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new RuntimeException(unsupportedencodingexception);
        }
        return factory.createUserListFromJSONArray_Users(httpresponse);
    }

    public ResponseList getUserTimeline()
    {
        return getUserTimeline(new Paging());
    }

    public ResponseList getUserTimeline(long l)
    {
        return getUserTimeline(l, new Paging());
    }

    public ResponseList getUserTimeline(long l, Paging paging)
    {
        ObjectFactory objectfactory = factory;
        String s = (new StringBuilder()).append(conf.getRestBaseURL()).append("statuses/user_timeline.json").toString();
        HttpParameter ahttpparameter[] = new HttpParameter[2];
        ahttpparameter[0] = new HttpParameter("user_id", l);
        ahttpparameter[1] = INCLUDE_MY_RETWEET;
        return objectfactory.createStatusList(get(s, mergeParameters(ahttpparameter, paging.asPostParameterArray())));
    }

    public ResponseList getUserTimeline(String s)
    {
        return getUserTimeline(s, new Paging());
    }

    public ResponseList getUserTimeline(String s, Paging paging)
    {
        ObjectFactory objectfactory = factory;
        String s1 = (new StringBuilder()).append(conf.getRestBaseURL()).append("statuses/user_timeline.json").toString();
        HttpParameter ahttpparameter[] = new HttpParameter[2];
        ahttpparameter[0] = new HttpParameter("screen_name", s);
        ahttpparameter[1] = INCLUDE_MY_RETWEET;
        return objectfactory.createStatusList(get(s1, mergeParameters(ahttpparameter, paging.asPostParameterArray())));
    }

    public ResponseList getUserTimeline(Paging paging)
    {
        ObjectFactory objectfactory = factory;
        String s = (new StringBuilder()).append(conf.getRestBaseURL()).append("statuses/user_timeline.json").toString();
        HttpParameter ahttpparameter[] = new HttpParameter[1];
        ahttpparameter[0] = INCLUDE_MY_RETWEET;
        return objectfactory.createStatusList(get(s, mergeParameters(ahttpparameter, paging.asPostParameterArray())));
    }

    public HelpResources help()
    {
        return this;
    }

    public ListsResources list()
    {
        return this;
    }

    public ResponseList lookupFriendships(long al[])
    {
        return factory.createFriendshipList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("friendships/lookup.json?user_id=").append(StringUtil.join(al)).toString()));
    }

    public ResponseList lookupFriendships(String as[])
    {
        return factory.createFriendshipList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("friendships/lookup.json?screen_name=").append(StringUtil.join(as)).toString()));
    }

    public ResponseList lookupUsers(long al[])
    {
        ObjectFactory objectfactory = factory;
        String s = (new StringBuilder()).append(conf.getRestBaseURL()).append("users/lookup.json").toString();
        HttpParameter ahttpparameter[] = new HttpParameter[1];
        ahttpparameter[0] = new HttpParameter("user_id", StringUtil.join(al));
        return objectfactory.createUserList(get(s, ahttpparameter));
    }

    public ResponseList lookupUsers(String as[])
    {
        ObjectFactory objectfactory = factory;
        String s = (new StringBuilder()).append(conf.getRestBaseURL()).append("users/lookup.json").toString();
        HttpParameter ahttpparameter[] = new HttpParameter[1];
        ahttpparameter[0] = new HttpParameter("screen_name", StringUtil.join(as));
        return objectfactory.createUserList(get(s, ahttpparameter));
    }

    public PlacesGeoResources placesGeo()
    {
        return this;
    }

    public void removeProfileBanner()
    {
        post((new StringBuilder()).append(conf.getRestBaseURL()).append("account/remove_profile_banner.json").toString());
    }

    public User reportSpam(long l)
    {
        return factory.createUser(post((new StringBuilder()).append(conf.getRestBaseURL()).append("users/report_spam.json?user_id=").append(l).toString()));
    }

    public User reportSpam(String s)
    {
        return factory.createUser(post((new StringBuilder()).append(conf.getRestBaseURL()).append("users/report_spam.json?screen_name=").append(s).toString()));
    }

    public Status retweetStatus(long l)
    {
        return factory.createStatus(post((new StringBuilder()).append(conf.getRestBaseURL()).append("statuses/retweet/").append(l).append(".json").toString()));
    }

    public ResponseList reverseGeoCode(GeoQuery geoquery)
    {
        ResponseList responselist;
        try
        {
            responselist = factory.createPlaceList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("geo/reverse_geocode.json").toString(), geoquery.asHttpParameterArray()));
        }
        catch (TwitterException twitterexception)
        {
            if (twitterexception.getStatusCode() == 404)
            {
                return factory.createEmptyResponseList();
            } else
            {
                throw twitterexception;
            }
        }
        return responselist;
    }

    public SavedSearchesResources savedSearches()
    {
        return this;
    }

    public QueryResult search(Query query)
    {
        if (query.nextPage() != null)
        {
            return factory.createQueryResult(get((new StringBuilder()).append(conf.getRestBaseURL()).append("search/tweets.json").append(query.nextPage()).toString()), query);
        } else
        {
            return factory.createQueryResult(get((new StringBuilder()).append(conf.getRestBaseURL()).append("search/tweets.json").toString(), query.asHttpParameterArray()), query);
        }
    }

    public SearchResource search()
    {
        return this;
    }

    public ResponseList searchPlaces(GeoQuery geoquery)
    {
        return factory.createPlaceList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("geo/search.json").toString(), geoquery.asHttpParameterArray()));
    }

    public ResponseList searchUsers(String s, int i)
    {
        ObjectFactory objectfactory = factory;
        String s1 = (new StringBuilder()).append(conf.getRestBaseURL()).append("users/search.json").toString();
        HttpParameter ahttpparameter[] = new HttpParameter[3];
        ahttpparameter[0] = new HttpParameter("q", s);
        ahttpparameter[1] = new HttpParameter("per_page", 20);
        ahttpparameter[2] = new HttpParameter("page", i);
        return objectfactory.createUserList(get(s1, ahttpparameter));
    }

    public DirectMessage sendDirectMessage(long l, String s)
    {
        ObjectFactory objectfactory = factory;
        String s1 = (new StringBuilder()).append(conf.getRestBaseURL()).append("direct_messages/new.json").toString();
        HttpParameter ahttpparameter[] = new HttpParameter[2];
        ahttpparameter[0] = new HttpParameter("user_id", l);
        ahttpparameter[1] = new HttpParameter("text", s);
        return objectfactory.createDirectMessage(post(s1, ahttpparameter));
    }

    public DirectMessage sendDirectMessage(String s, String s1)
    {
        ObjectFactory objectfactory = factory;
        String s2 = (new StringBuilder()).append(conf.getRestBaseURL()).append("direct_messages/new.json").toString();
        HttpParameter ahttpparameter[] = new HttpParameter[2];
        ahttpparameter[0] = new HttpParameter("screen_name", s);
        ahttpparameter[1] = new HttpParameter("text", s1);
        return objectfactory.createDirectMessage(post(s2, ahttpparameter));
    }

    public DirectMessage showDirectMessage(long l)
    {
        return factory.createDirectMessage(get((new StringBuilder()).append(conf.getRestBaseURL()).append("direct_messages/show.json?id=").append(l).toString()));
    }

    public Relationship showFriendship(long l, long l1)
    {
        ObjectFactory objectfactory = factory;
        String s = (new StringBuilder()).append(conf.getRestBaseURL()).append("friendships/show.json").toString();
        HttpParameter ahttpparameter[] = new HttpParameter[2];
        ahttpparameter[0] = new HttpParameter("source_id", l);
        ahttpparameter[1] = new HttpParameter("target_id", l1);
        return objectfactory.createRelationship(get(s, ahttpparameter));
    }

    public Relationship showFriendship(String s, String s1)
    {
        return factory.createRelationship(get((new StringBuilder()).append(conf.getRestBaseURL()).append("friendships/show.json").toString(), HttpParameter.getParameterArray("source_screen_name", s, "target_screen_name", s1)));
    }

    public SavedSearch showSavedSearch(int i)
    {
        return factory.createSavedSearch(get((new StringBuilder()).append(conf.getRestBaseURL()).append("saved_searches/show/").append(i).append(".json").toString()));
    }

    public Status showStatus(long l)
    {
        ObjectFactory objectfactory = factory;
        String s = (new StringBuilder()).append(conf.getRestBaseURL()).append("statuses/show/").append(l).append(".json").toString();
        HttpParameter ahttpparameter[] = new HttpParameter[1];
        ahttpparameter[0] = INCLUDE_MY_RETWEET;
        return objectfactory.createStatus(get(s, ahttpparameter));
    }

    public User showUser(long l)
    {
        return factory.createUser(get((new StringBuilder()).append(conf.getRestBaseURL()).append("users/show.json?user_id=").append(l).toString()));
    }

    public User showUser(String s)
    {
        return factory.createUser(get((new StringBuilder()).append(conf.getRestBaseURL()).append("users/show.json?screen_name=").append(s).toString()));
    }

    public UserList showUserList(long l)
    {
        return factory.createAUserList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/show.json?list_id=").append(l).toString()));
    }

    public UserList showUserList(long l, String s)
    {
        return factory.createAUserList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/show.json?owner_id=").append(l).append("&slug=").append(s).toString()));
    }

    public UserList showUserList(String s, String s1)
    {
        return factory.createAUserList(get((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/show.json?owner_screen_name=").append(s).append("&slug=").append(s1).toString()));
    }

    public User showUserListMembership(long l, long l1)
    {
        return factory.createUser(get((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/members/show.json?list_id=").append(l).append("&user_id=").append(l1).toString()));
    }

    public User showUserListMembership(long l, String s, long l1)
    {
        return factory.createUser(get((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/members/show.json?owner_id=").append(l).append("&slug=").append(s).append("&user_id=").append(l1).toString()));
    }

    public User showUserListMembership(String s, String s1, long l)
    {
        return factory.createUser(get((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/members/show.json?owner_screen_name=").append(s).append("&slug=").append(s1).append("&user_id=").append(l).toString()));
    }

    public User showUserListSubscription(long l, long l1)
    {
        return factory.createUser(get((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/subscribers/show.json?list_id=").append(l).append("&user_id=").append(l1).toString()));
    }

    public User showUserListSubscription(long l, String s, long l1)
    {
        return factory.createUser(get((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/subscribers/show.json?owner_id=").append(l).append("&slug=").append(s).append("&user_id=").append(l1).toString()));
    }

    public User showUserListSubscription(String s, String s1, long l)
    {
        return factory.createUser(get((new StringBuilder()).append(conf.getRestBaseURL()).append("lists/subscribers/show.json?owner_screen_name=").append(s).append("&slug=").append(s1).append("&user_id=").append(l).toString()));
    }

    public SpamReportingResource spamReporting()
    {
        return this;
    }

    public SuggestedUsersResources suggestedUsers()
    {
        return this;
    }

    public TimelinesResources timelines()
    {
        return this;
    }

    public String toString()
    {
        return (new StringBuilder()).append("TwitterImpl{INCLUDE_MY_RETWEET=").append(INCLUDE_MY_RETWEET).append('}').toString();
    }

    public TrendsResources trends()
    {
        return this;
    }

    public TweetsResources tweets()
    {
        return this;
    }

    public AccountSettings updateAccountSettings(Integer integer, Boolean boolean1, String s, String s1, String s2, String s3)
    {
        ArrayList arraylist = new ArrayList(6);
        if (integer != null)
        {
            arraylist.add(new HttpParameter("trend_location_woeid", integer.intValue()));
        }
        if (boolean1 != null)
        {
            arraylist.add(new HttpParameter("sleep_time_enabled", boolean1.toString()));
        }
        if (s != null)
        {
            arraylist.add(new HttpParameter("start_sleep_time", s));
        }
        if (s1 != null)
        {
            arraylist.add(new HttpParameter("end_sleep_time", s1));
        }
        if (s2 != null)
        {
            arraylist.add(new HttpParameter("time_zone", s2));
        }
        if (s3 != null)
        {
            arraylist.add(new HttpParameter("lang", s3));
        }
        return factory.createAccountSettings(post((new StringBuilder()).append(conf.getRestBaseURL()).append("account/settings.json").toString(), (HttpParameter[])arraylist.toArray(new HttpParameter[arraylist.size()])));
    }

    public Relationship updateFriendship(long l, boolean flag, boolean flag1)
    {
        ObjectFactory objectfactory = factory;
        String s = (new StringBuilder()).append(conf.getRestBaseURL()).append("friendships/update.json").toString();
        HttpParameter ahttpparameter[] = new HttpParameter[3];
        ahttpparameter[0] = new HttpParameter("user_id", l);
        ahttpparameter[1] = new HttpParameter("device", flag);
        ahttpparameter[2] = new HttpParameter("retweets", flag1);
        return objectfactory.createRelationship(post(s, ahttpparameter));
    }

    public Relationship updateFriendship(String s, boolean flag, boolean flag1)
    {
        ObjectFactory objectfactory = factory;
        String s1 = (new StringBuilder()).append(conf.getRestBaseURL()).append("friendships/update.json").toString();
        HttpParameter ahttpparameter[] = new HttpParameter[3];
        ahttpparameter[0] = new HttpParameter("screen_name", s);
        ahttpparameter[1] = new HttpParameter("device", flag);
        ahttpparameter[2] = new HttpParameter("retweets", flag1);
        return objectfactory.createRelationship(post(s1, ahttpparameter));
    }

    public User updateProfile(String s, String s1, String s2, String s3)
    {
        ArrayList arraylist = new ArrayList(4);
        addParameterToList(arraylist, "name", s);
        addParameterToList(arraylist, "url", s1);
        addParameterToList(arraylist, "location", s2);
        addParameterToList(arraylist, "description", s3);
        return factory.createUser(post((new StringBuilder()).append(conf.getRestBaseURL()).append("account/update_profile.json").toString(), (HttpParameter[])arraylist.toArray(new HttpParameter[arraylist.size()])));
    }

    public User updateProfileBackgroundImage(File file, boolean flag)
    {
        checkFileValidity(file);
        ObjectFactory objectfactory = factory;
        String s = (new StringBuilder()).append(conf.getRestBaseURL()).append("account/update_profile_background_image.json").toString();
        HttpParameter ahttpparameter[] = new HttpParameter[2];
        ahttpparameter[0] = new HttpParameter("image", file);
        ahttpparameter[1] = new HttpParameter("tile", flag);
        return objectfactory.createUser(post(s, ahttpparameter));
    }

    public User updateProfileBackgroundImage(InputStream inputstream, boolean flag)
    {
        ObjectFactory objectfactory = factory;
        String s = (new StringBuilder()).append(conf.getRestBaseURL()).append("account/update_profile_background_image.json").toString();
        HttpParameter ahttpparameter[] = new HttpParameter[2];
        ahttpparameter[0] = new HttpParameter("image", "image", inputstream);
        ahttpparameter[1] = new HttpParameter("tile", flag);
        return objectfactory.createUser(post(s, ahttpparameter));
    }

    public void updateProfileBanner(File file)
    {
        checkFileValidity(file);
        String s = (new StringBuilder()).append(conf.getRestBaseURL()).append("account/update_profile_banner.json").toString();
        HttpParameter ahttpparameter[] = new HttpParameter[1];
        ahttpparameter[0] = new HttpParameter("banner", file);
        post(s, ahttpparameter);
    }

    public void updateProfileBanner(InputStream inputstream)
    {
        String s = (new StringBuilder()).append(conf.getRestBaseURL()).append("account/update_profile_banner.json").toString();
        HttpParameter ahttpparameter[] = new HttpParameter[1];
        ahttpparameter[0] = new HttpParameter("banner", "banner", inputstream);
        post(s, ahttpparameter);
    }

    public User updateProfileColors(String s, String s1, String s2, String s3, String s4)
    {
        ArrayList arraylist = new ArrayList(6);
        addParameterToList(arraylist, "profile_background_color", s);
        addParameterToList(arraylist, "profile_text_color", s1);
        addParameterToList(arraylist, "profile_link_color", s2);
        addParameterToList(arraylist, "profile_sidebar_fill_color", s3);
        addParameterToList(arraylist, "profile_sidebar_border_color", s4);
        return factory.createUser(post((new StringBuilder()).append(conf.getRestBaseURL()).append("account/update_profile_colors.json").toString(), (HttpParameter[])arraylist.toArray(new HttpParameter[arraylist.size()])));
    }

    public User updateProfileImage(File file)
    {
        checkFileValidity(file);
        ObjectFactory objectfactory = factory;
        String s = (new StringBuilder()).append(conf.getRestBaseURL()).append("account/update_profile_image.json").toString();
        HttpParameter ahttpparameter[] = new HttpParameter[1];
        ahttpparameter[0] = new HttpParameter("image", file);
        return objectfactory.createUser(post(s, ahttpparameter));
    }

    public User updateProfileImage(InputStream inputstream)
    {
        ObjectFactory objectfactory = factory;
        String s = (new StringBuilder()).append(conf.getRestBaseURL()).append("account/update_profile_image.json").toString();
        HttpParameter ahttpparameter[] = new HttpParameter[1];
        ahttpparameter[0] = new HttpParameter("image", "image", inputstream);
        return objectfactory.createUser(post(s, ahttpparameter));
    }

    public Status updateStatus(String s)
    {
        ObjectFactory objectfactory = factory;
        String s1 = (new StringBuilder()).append(conf.getRestBaseURL()).append("statuses/update.json").toString();
        HttpParameter ahttpparameter[] = new HttpParameter[1];
        ahttpparameter[0] = new HttpParameter("status", s);
        return objectfactory.createStatus(post(s1, ahttpparameter));
    }

    public Status updateStatus(StatusUpdate statusupdate)
    {
        StringBuilder stringbuilder = (new StringBuilder()).append(conf.getRestBaseURL());
        String s;
        String s1;
        if (statusupdate.isWithMedia())
        {
            s = "statuses/update_with_media.json";
        } else
        {
            s = "statuses/update.json";
        }
        s1 = stringbuilder.append(s).toString();
        return factory.createStatus(post(s1, statusupdate.asHttpParameterArray()));
    }

    public UserList updateUserList(long l, String s, String s1, boolean flag, String s2)
    {
        HttpParameter ahttpparameter[] = new HttpParameter[2];
        ahttpparameter[0] = new HttpParameter("owner_id", l);
        ahttpparameter[1] = new HttpParameter("slug", s);
        return updateUserList(s1, flag, s2, ahttpparameter);
    }

    public UserList updateUserList(long l, String s, boolean flag, String s1)
    {
        HttpParameter ahttpparameter[] = new HttpParameter[1];
        ahttpparameter[0] = new HttpParameter("list_id", l);
        return updateUserList(s, flag, s1, ahttpparameter);
    }

    public UserList updateUserList(String s, String s1, String s2, boolean flag, String s3)
    {
        HttpParameter ahttpparameter[] = new HttpParameter[2];
        ahttpparameter[0] = new HttpParameter("owner_screen_name", s);
        ahttpparameter[1] = new HttpParameter("slug", s1);
        return updateUserList(s2, flag, s3, ahttpparameter);
    }

    public UsersResources users()
    {
        return this;
    }

    public User verifyCredentials()
    {
        return super.fillInIDAndScreenName();
    }

}
