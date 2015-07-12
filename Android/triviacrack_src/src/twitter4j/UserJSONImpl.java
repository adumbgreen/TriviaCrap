// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j;

import java.io.Serializable;
import java.util.Date;
import twitter4j.conf.Configuration;

// Referenced classes of package twitter4j:
//            TwitterResponseImpl, User, TwitterObjectFactory, HttpResponse, 
//            JSONException, JSONObject, JSONArray, PagableResponseListImpl, 
//            PagableResponseList, TwitterException, ResponseListImpl, ResponseList, 
//            URLEntity, URLEntityJSONImpl, ParseUtil, HTMLEntity, 
//            StatusJSONImpl, Status

final class UserJSONImpl extends TwitterResponseImpl
    implements Serializable, User
{

    private static final long serialVersionUID = 0xb463de6321399809L;
    private Date createdAt;
    private String description;
    private URLEntity descriptionURLEntities[];
    private int favouritesCount;
    private int followersCount;
    private int friendsCount;
    private long id;
    private boolean isContributorsEnabled;
    private boolean isFollowRequestSent;
    private boolean isGeoEnabled;
    private boolean isProtected;
    private boolean isVerified;
    private String lang;
    private int listedCount;
    private String location;
    private String name;
    private String profileBackgroundColor;
    private String profileBackgroundImageUrl;
    private String profileBackgroundImageUrlHttps;
    private boolean profileBackgroundTiled;
    private String profileBannerImageUrl;
    private String profileImageUrl;
    private String profileImageUrlHttps;
    private String profileLinkColor;
    private String profileSidebarBorderColor;
    private String profileSidebarFillColor;
    private String profileTextColor;
    private boolean profileUseBackgroundImage;
    private String screenName;
    private boolean showAllInlineMedia;
    private Status status;
    private int statusesCount;
    private String timeZone;
    private boolean translator;
    private String url;
    private URLEntity urlEntity;
    private int utcOffset;

    UserJSONImpl()
    {
    }

    UserJSONImpl(HttpResponse httpresponse, Configuration configuration)
    {
        super(httpresponse);
        if (configuration.isJSONStoreEnabled())
        {
            TwitterObjectFactory.clearThreadLocalMap();
        }
        JSONObject jsonobject = httpresponse.asJSONObject();
        init(jsonobject);
        if (configuration.isJSONStoreEnabled())
        {
            TwitterObjectFactory.registerJSONObject(this, jsonobject);
        }
    }

    UserJSONImpl(JSONObject jsonobject)
    {
        init(jsonobject);
    }

    static PagableResponseList createPagableUserList(HttpResponse httpresponse, Configuration configuration)
    {
        JSONObject jsonobject;
        JSONArray jsonarray;
        int i;
        PagableResponseListImpl pagableresponselistimpl;
        int j;
        JSONObject jsonobject1;
        UserJSONImpl userjsonimpl;
        try
        {
            if (configuration.isJSONStoreEnabled())
            {
                TwitterObjectFactory.clearThreadLocalMap();
            }
            jsonobject = httpresponse.asJSONObject();
            jsonarray = jsonobject.getJSONArray("users");
            i = jsonarray.length();
            pagableresponselistimpl = new PagableResponseListImpl(i, jsonobject, httpresponse);
        }
        catch (JSONException jsonexception)
        {
            throw new TwitterException(jsonexception);
        }
        j = 0;
        if (j >= i)
        {
            break; /* Loop/switch isn't completed */
        }
        jsonobject1 = jsonarray.getJSONObject(j);
        userjsonimpl = new UserJSONImpl(jsonobject1);
        if (configuration.isJSONStoreEnabled())
        {
            TwitterObjectFactory.registerJSONObject(userjsonimpl, jsonobject1);
        }
        pagableresponselistimpl.add(userjsonimpl);
        j++;
        if (true) goto _L2; else goto _L1
_L2:
        break MISSING_BLOCK_LABEL_48;
_L1:
        if (configuration.isJSONStoreEnabled())
        {
            TwitterObjectFactory.registerJSONObject(pagableresponselistimpl, jsonobject);
        }
        return pagableresponselistimpl;
    }

    static ResponseList createUserList(HttpResponse httpresponse, Configuration configuration)
    {
        return createUserList(httpresponse.asJSONArray(), httpresponse, configuration);
    }

    static ResponseList createUserList(JSONArray jsonarray, HttpResponse httpresponse, Configuration configuration)
    {
        int j;
        int i;
        ResponseListImpl responselistimpl;
        JSONObject jsonobject;
        UserJSONImpl userjsonimpl;
        try
        {
            if (configuration.isJSONStoreEnabled())
            {
                TwitterObjectFactory.clearThreadLocalMap();
            }
            i = jsonarray.length();
            responselistimpl = new ResponseListImpl(i, httpresponse);
        }
        catch (JSONException jsonexception)
        {
            throw new TwitterException(jsonexception);
        }
        j = 0;
_L2:
        if (j >= i)
        {
            break MISSING_BLOCK_LABEL_89;
        }
        jsonobject = jsonarray.getJSONObject(j);
        userjsonimpl = new UserJSONImpl(jsonobject);
        responselistimpl.add(userjsonimpl);
        if (configuration.isJSONStoreEnabled())
        {
            TwitterObjectFactory.registerJSONObject(userjsonimpl, jsonobject);
        }
        break MISSING_BLOCK_LABEL_118;
        if (configuration.isJSONStoreEnabled())
        {
            TwitterObjectFactory.registerJSONObject(responselistimpl, jsonarray);
        }
        return responselistimpl;
        j++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private static URLEntity[] getURLEntitiesFromJSON(JSONObject jsonobject, String s)
    {
        URLEntity aurlentity[];
label0:
        {
            if (!jsonobject.isNull("entities"))
            {
                JSONObject jsonobject1 = jsonobject.getJSONObject("entities");
                if (!jsonobject1.isNull(s))
                {
                    JSONObject jsonobject2 = jsonobject1.getJSONObject(s);
                    if (!jsonobject2.isNull("urls"))
                    {
                        JSONArray jsonarray = jsonobject2.getJSONArray("urls");
                        int i = jsonarray.length();
                        aurlentity = new URLEntity[i];
                        for (int j = 0; j < i; j++)
                        {
                            aurlentity[j] = new URLEntityJSONImpl(jsonarray.getJSONObject(j));
                        }

                        break label0;
                    }
                }
            }
            aurlentity = null;
        }
        return aurlentity;
    }

    private void init(JSONObject jsonobject)
    {
        URLEntity aurlentity[];
        id = ParseUtil.getLong("id", jsonobject);
        name = ParseUtil.getRawString("name", jsonobject);
        screenName = ParseUtil.getRawString("screen_name", jsonobject);
        location = ParseUtil.getRawString("location", jsonobject);
        descriptionURLEntities = getURLEntitiesFromJSON(jsonobject, "description");
        if (descriptionURLEntities != null)
        {
            break MISSING_BLOCK_LABEL_468;
        }
        aurlentity = new URLEntity[0];
_L1:
        URLEntity aurlentity1[];
        descriptionURLEntities = aurlentity;
        aurlentity1 = getURLEntitiesFromJSON(jsonobject, "url");
        if (aurlentity1 == null)
        {
            break MISSING_BLOCK_LABEL_94;
        }
        if (aurlentity1.length > 0)
        {
            urlEntity = aurlentity1[0];
        }
        description = ParseUtil.getRawString("description", jsonobject);
        if (description != null)
        {
            description = HTMLEntity.unescapeAndSlideEntityIncdices(description, null, descriptionURLEntities, null, null);
        }
        isContributorsEnabled = ParseUtil.getBoolean("contributors_enabled", jsonobject);
        profileImageUrl = ParseUtil.getRawString("profile_image_url", jsonobject);
        profileImageUrlHttps = ParseUtil.getRawString("profile_image_url_https", jsonobject);
        url = ParseUtil.getRawString("url", jsonobject);
        isProtected = ParseUtil.getBoolean("protected", jsonobject);
        isGeoEnabled = ParseUtil.getBoolean("geo_enabled", jsonobject);
        isVerified = ParseUtil.getBoolean("verified", jsonobject);
        translator = ParseUtil.getBoolean("is_translator", jsonobject);
        followersCount = ParseUtil.getInt("followers_count", jsonobject);
        profileBackgroundColor = ParseUtil.getRawString("profile_background_color", jsonobject);
        profileTextColor = ParseUtil.getRawString("profile_text_color", jsonobject);
        profileLinkColor = ParseUtil.getRawString("profile_link_color", jsonobject);
        profileSidebarFillColor = ParseUtil.getRawString("profile_sidebar_fill_color", jsonobject);
        profileSidebarBorderColor = ParseUtil.getRawString("profile_sidebar_border_color", jsonobject);
        profileUseBackgroundImage = ParseUtil.getBoolean("profile_use_background_image", jsonobject);
        showAllInlineMedia = ParseUtil.getBoolean("show_all_inline_media", jsonobject);
        friendsCount = ParseUtil.getInt("friends_count", jsonobject);
        createdAt = ParseUtil.getDate("created_at", jsonobject, "EEE MMM dd HH:mm:ss z yyyy");
        favouritesCount = ParseUtil.getInt("favourites_count", jsonobject);
        utcOffset = ParseUtil.getInt("utc_offset", jsonobject);
        timeZone = ParseUtil.getRawString("time_zone", jsonobject);
        profileBackgroundImageUrl = ParseUtil.getRawString("profile_background_image_url", jsonobject);
        profileBackgroundImageUrlHttps = ParseUtil.getRawString("profile_background_image_url_https", jsonobject);
        profileBannerImageUrl = ParseUtil.getRawString("profile_banner_url", jsonobject);
        profileBackgroundTiled = ParseUtil.getBoolean("profile_background_tile", jsonobject);
        lang = ParseUtil.getRawString("lang", jsonobject);
        statusesCount = ParseUtil.getInt("statuses_count", jsonobject);
        listedCount = ParseUtil.getInt("listed_count", jsonobject);
        isFollowRequestSent = ParseUtil.getBoolean("follow_request_sent", jsonobject);
        if (!jsonobject.isNull("status"))
        {
            status = new StatusJSONImpl(jsonobject.getJSONObject("status"));
            return;
        }
        break MISSING_BLOCK_LABEL_516;
        try
        {
            aurlentity = descriptionURLEntities;
        }
        catch (JSONException jsonexception)
        {
            throw new TwitterException((new StringBuilder()).append(jsonexception.getMessage()).append(":").append(jsonobject.toString()).toString(), jsonexception);
        }
          goto _L1
    }

    private String toResizedURL(String s, String s1)
    {
        if (s != null)
        {
            int i = s.lastIndexOf("_");
            int j = s.lastIndexOf(".");
            int k = s.lastIndexOf("/");
            String s2 = (new StringBuilder()).append(s.substring(0, i)).append(s1).toString();
            if (j > k)
            {
                s2 = (new StringBuilder()).append(s2).append(s.substring(j)).toString();
            }
            return s2;
        } else
        {
            return null;
        }
    }

    public volatile int compareTo(Object obj)
    {
        return compareTo((User)obj);
    }

    public int compareTo(User user)
    {
        return (int)(id - user.getId());
    }

    public boolean equals(Object obj)
    {
        boolean flag = true;
        if (obj == null)
        {
            flag = false;
        } else
        if (this != obj && (!(obj instanceof User) || ((User)obj).getId() != id))
        {
            return false;
        }
        return flag;
    }

    public String getBiggerProfileImageURL()
    {
        return toResizedURL(profileImageUrl, "_bigger");
    }

    public String getBiggerProfileImageURLHttps()
    {
        return toResizedURL(profileImageUrlHttps, "_bigger");
    }

    public Date getCreatedAt()
    {
        return createdAt;
    }

    public String getDescription()
    {
        return description;
    }

    public URLEntity[] getDescriptionURLEntities()
    {
        return descriptionURLEntities;
    }

    public int getFavouritesCount()
    {
        return favouritesCount;
    }

    public int getFollowersCount()
    {
        return followersCount;
    }

    public int getFriendsCount()
    {
        return friendsCount;
    }

    public long getId()
    {
        return id;
    }

    public String getLang()
    {
        return lang;
    }

    public int getListedCount()
    {
        return listedCount;
    }

    public String getLocation()
    {
        return location;
    }

    public String getMiniProfileImageURL()
    {
        return toResizedURL(profileImageUrl, "_mini");
    }

    public String getMiniProfileImageURLHttps()
    {
        return toResizedURL(profileImageUrlHttps, "_mini");
    }

    public String getName()
    {
        return name;
    }

    public String getOriginalProfileImageURL()
    {
        return toResizedURL(profileImageUrl, "");
    }

    public String getOriginalProfileImageURLHttps()
    {
        return toResizedURL(profileImageUrlHttps, "");
    }

    public String getProfileBackgroundColor()
    {
        return profileBackgroundColor;
    }

    public String getProfileBackgroundImageURL()
    {
        return profileBackgroundImageUrl;
    }

    public String getProfileBackgroundImageUrlHttps()
    {
        return profileBackgroundImageUrlHttps;
    }

    public String getProfileBannerIPadRetinaURL()
    {
        if (profileBannerImageUrl != null)
        {
            return (new StringBuilder()).append(profileBannerImageUrl).append("/ipad_retina").toString();
        } else
        {
            return null;
        }
    }

    public String getProfileBannerIPadURL()
    {
        if (profileBannerImageUrl != null)
        {
            return (new StringBuilder()).append(profileBannerImageUrl).append("/ipad").toString();
        } else
        {
            return null;
        }
    }

    public String getProfileBannerMobileRetinaURL()
    {
        if (profileBannerImageUrl != null)
        {
            return (new StringBuilder()).append(profileBannerImageUrl).append("/mobile_retina").toString();
        } else
        {
            return null;
        }
    }

    public String getProfileBannerMobileURL()
    {
        if (profileBannerImageUrl != null)
        {
            return (new StringBuilder()).append(profileBannerImageUrl).append("/mobile").toString();
        } else
        {
            return null;
        }
    }

    public String getProfileBannerRetinaURL()
    {
        if (profileBannerImageUrl != null)
        {
            return (new StringBuilder()).append(profileBannerImageUrl).append("/web_retina").toString();
        } else
        {
            return null;
        }
    }

    public String getProfileBannerURL()
    {
        if (profileBannerImageUrl != null)
        {
            return (new StringBuilder()).append(profileBannerImageUrl).append("/web").toString();
        } else
        {
            return null;
        }
    }

    public String getProfileImageURL()
    {
        return profileImageUrl;
    }

    public String getProfileImageURLHttps()
    {
        return profileImageUrlHttps;
    }

    public String getProfileLinkColor()
    {
        return profileLinkColor;
    }

    public String getProfileSidebarBorderColor()
    {
        return profileSidebarBorderColor;
    }

    public String getProfileSidebarFillColor()
    {
        return profileSidebarFillColor;
    }

    public String getProfileTextColor()
    {
        return profileTextColor;
    }

    public String getScreenName()
    {
        return screenName;
    }

    public Status getStatus()
    {
        return status;
    }

    public int getStatusesCount()
    {
        return statusesCount;
    }

    public String getTimeZone()
    {
        return timeZone;
    }

    public String getURL()
    {
        return url;
    }

    public URLEntity getURLEntity()
    {
        if (urlEntity == null)
        {
            String s;
            if (url == null)
            {
                s = "";
            } else
            {
                s = url;
            }
            urlEntity = new URLEntityJSONImpl(0, s.length(), s, s, s);
        }
        return urlEntity;
    }

    public int getUtcOffset()
    {
        return utcOffset;
    }

    public int hashCode()
    {
        return (int)id;
    }

    public boolean isContributorsEnabled()
    {
        return isContributorsEnabled;
    }

    public boolean isFollowRequestSent()
    {
        return isFollowRequestSent;
    }

    public boolean isGeoEnabled()
    {
        return isGeoEnabled;
    }

    public boolean isProfileBackgroundTiled()
    {
        return profileBackgroundTiled;
    }

    public boolean isProfileUseBackgroundImage()
    {
        return profileUseBackgroundImage;
    }

    public boolean isProtected()
    {
        return isProtected;
    }

    public boolean isShowAllInlineMedia()
    {
        return showAllInlineMedia;
    }

    public boolean isTranslator()
    {
        return translator;
    }

    public boolean isVerified()
    {
        return isVerified;
    }

    public String toString()
    {
        return (new StringBuilder()).append("UserJSONImpl{id=").append(id).append(", name='").append(name).append('\'').append(", screenName='").append(screenName).append('\'').append(", location='").append(location).append('\'').append(", description='").append(description).append('\'').append(", isContributorsEnabled=").append(isContributorsEnabled).append(", profileImageUrl='").append(profileImageUrl).append('\'').append(", profileImageUrlHttps='").append(profileImageUrlHttps).append('\'').append(", url='").append(url).append('\'').append(", isProtected=").append(isProtected).append(", followersCount=").append(followersCount).append(", status=").append(status).append(", profileBackgroundColor='").append(profileBackgroundColor).append('\'').append(", profileTextColor='").append(profileTextColor).append('\'').append(", profileLinkColor='").append(profileLinkColor).append('\'').append(", profileSidebarFillColor='").append(profileSidebarFillColor).append('\'').append(", profileSidebarBorderColor='").append(profileSidebarBorderColor).append('\'').append(", profileUseBackgroundImage=").append(profileUseBackgroundImage).append(", showAllInlineMedia=").append(showAllInlineMedia).append(", friendsCount=").append(friendsCount).append(", createdAt=").append(createdAt).append(", favouritesCount=").append(favouritesCount).append(", utcOffset=").append(utcOffset).append(", timeZone='").append(timeZone).append('\'').append(", profileBackgroundImageUrl='").append(profileBackgroundImageUrl).append('\'').append(", profileBackgroundImageUrlHttps='").append(profileBackgroundImageUrlHttps).append('\'').append(", profileBackgroundTiled=").append(profileBackgroundTiled).append(", lang='").append(lang).append('\'').append(", statusesCount=").append(statusesCount).append(", isGeoEnabled=").append(isGeoEnabled).append(", isVerified=").append(isVerified).append(", translator=").append(translator).append(", listedCount=").append(listedCount).append(", isFollowRequestSent=").append(isFollowRequestSent).append('}').toString();
    }
}
