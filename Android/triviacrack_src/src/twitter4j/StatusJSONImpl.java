// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Date;
import twitter4j.conf.Configuration;

// Referenced classes of package twitter4j:
//            TwitterResponseImpl, Status, Logger, HttpResponse, 
//            TwitterObjectFactory, JSONException, JSONArray, ResponseListImpl, 
//            ResponseList, TwitterException, ParseUtil, JSONObject, 
//            UserJSONImpl, JSONImplFactory, PlaceJSONImpl, UserMentionEntity, 
//            UserMentionEntityJSONImpl, URLEntity, URLEntityJSONImpl, HashtagEntity, 
//            HashtagEntityJSONImpl, SymbolEntity, MediaEntity, MediaEntityJSONImpl, 
//            HTMLEntity, ScopesImpl, GeoLocation, Place, 
//            Scopes, User

final class StatusJSONImpl extends TwitterResponseImpl
    implements Serializable, Status
{

    private static final Logger logger = Logger.getLogger(twitter4j/StatusJSONImpl);
    private static final long serialVersionUID = 0xa65538e45c21f60fL;
    private long contributorsIDs[];
    private Date createdAt;
    private long currentUserRetweetId;
    private int favoriteCount;
    private GeoLocation geoLocation;
    private HashtagEntity hashtagEntities[];
    private long id;
    private String inReplyToScreenName;
    private long inReplyToStatusId;
    private long inReplyToUserId;
    private boolean isFavorited;
    private boolean isPossiblySensitive;
    private boolean isRetweeted;
    private boolean isTruncated;
    private String isoLanguageCode;
    private String lang;
    private MediaEntity mediaEntities[];
    private Place place;
    private long retweetCount;
    private Status retweetedStatus;
    private Scopes scopes;
    private String source;
    private SymbolEntity symbolEntities[];
    private String text;
    private URLEntity urlEntities[];
    private User user;
    private UserMentionEntity userMentionEntities[];

    StatusJSONImpl()
    {
        geoLocation = null;
        place = null;
        currentUserRetweetId = -1L;
        user = null;
    }

    StatusJSONImpl(HttpResponse httpresponse, Configuration configuration)
    {
        super(httpresponse);
        geoLocation = null;
        place = null;
        currentUserRetweetId = -1L;
        user = null;
        JSONObject jsonobject = httpresponse.asJSONObject();
        init(jsonobject);
        if (configuration.isJSONStoreEnabled())
        {
            TwitterObjectFactory.clearThreadLocalMap();
            TwitterObjectFactory.registerJSONObject(this, jsonobject);
        }
    }

    StatusJSONImpl(JSONObject jsonobject)
    {
        geoLocation = null;
        place = null;
        currentUserRetweetId = -1L;
        user = null;
        init(jsonobject);
    }

    StatusJSONImpl(JSONObject jsonobject, Configuration configuration)
    {
        geoLocation = null;
        place = null;
        currentUserRetweetId = -1L;
        user = null;
        init(jsonobject);
        if (configuration.isJSONStoreEnabled())
        {
            TwitterObjectFactory.registerJSONObject(this, jsonobject);
        }
    }

    static ResponseList createStatusList(HttpResponse httpresponse, Configuration configuration)
    {
        JSONArray jsonarray;
        int i;
        ResponseListImpl responselistimpl;
        int j;
        JSONObject jsonobject;
        StatusJSONImpl statusjsonimpl;
        try
        {
            if (configuration.isJSONStoreEnabled())
            {
                TwitterObjectFactory.clearThreadLocalMap();
            }
            jsonarray = httpresponse.asJSONArray();
            i = jsonarray.length();
            responselistimpl = new ResponseListImpl(i, httpresponse);
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
        jsonobject = jsonarray.getJSONObject(j);
        statusjsonimpl = new StatusJSONImpl(jsonobject);
        if (configuration.isJSONStoreEnabled())
        {
            TwitterObjectFactory.registerJSONObject(statusjsonimpl, jsonobject);
        }
        responselistimpl.add(statusjsonimpl);
        j++;
        if (true) goto _L2; else goto _L1
_L2:
        break MISSING_BLOCK_LABEL_38;
_L1:
        if (configuration.isJSONStoreEnabled())
        {
            TwitterObjectFactory.registerJSONObject(responselistimpl, jsonarray);
        }
        return responselistimpl;
    }

    private void init(JSONObject jsonobject)
    {
        int i;
        i = 0;
        id = ParseUtil.getLong("id", jsonobject);
        source = ParseUtil.getUnescapedString("source", jsonobject);
        createdAt = ParseUtil.getDate("created_at", jsonobject);
        isTruncated = ParseUtil.getBoolean("truncated", jsonobject);
        inReplyToStatusId = ParseUtil.getLong("in_reply_to_status_id", jsonobject);
        inReplyToUserId = ParseUtil.getLong("in_reply_to_user_id", jsonobject);
        isFavorited = ParseUtil.getBoolean("favorited", jsonobject);
        isRetweeted = ParseUtil.getBoolean("retweeted", jsonobject);
        inReplyToScreenName = ParseUtil.getUnescapedString("in_reply_to_screen_name", jsonobject);
        retweetCount = ParseUtil.getLong("retweet_count", jsonobject);
        favoriteCount = ParseUtil.getInt("favorite_count", jsonobject);
        isPossiblySensitive = ParseUtil.getBoolean("possibly_sensitive", jsonobject);
        JSONArray jsonarray6;
        if (!jsonobject.isNull("user"))
        {
            user = new UserJSONImpl(jsonobject.getJSONObject("user"));
        }
        geoLocation = JSONImplFactory.createGeoLocation(jsonobject);
        if (!jsonobject.isNull("place"))
        {
            place = new PlaceJSONImpl(jsonobject.getJSONObject("place"));
        }
        if (!jsonobject.isNull("retweeted_status"))
        {
            retweetedStatus = new StatusJSONImpl(jsonobject.getJSONObject("retweeted_status"));
        }
        if (jsonobject.isNull("contributors"))
        {
            break MISSING_BLOCK_LABEL_272;
        }
        jsonarray6 = jsonobject.getJSONArray("contributors");
        contributorsIDs = new long[jsonarray6.length()];
        int i3 = 0;
        do
        {
            UserMentionEntity ausermentionentity[];
            URLEntity aurlentity[];
            HashtagEntity ahashtagentity[];
            SymbolEntity asymbolentity[];
            MediaEntity amediaentity[];
            JSONObject jsonobject1;
            JSONArray jsonarray;
            int j;
            String as[];
            JSONObject jsonobject2;
            JSONObject jsonobject3;
            JSONArray jsonarray1;
            int k;
            int l;
            JSONArray jsonarray2;
            int i1;
            int j1;
            JSONArray jsonarray3;
            int k1;
            int l1;
            JSONArray jsonarray4;
            int i2;
            int j2;
            JSONArray jsonarray5;
            int k2;
            int l2;
            try
            {
                if (i3 >= jsonarray6.length())
                {
                    break;
                }
                contributorsIDs[i3] = Long.parseLong(jsonarray6.getString(i3));
            }
            catch (JSONException jsonexception)
            {
                throw new TwitterException(jsonexception);
            }
            i3++;
        } while (true);
        break MISSING_BLOCK_LABEL_279;
        contributorsIDs = new long[0];
        if (jsonobject.isNull("entities")) goto _L2; else goto _L1
_L1:
        jsonobject3 = jsonobject.getJSONObject("entities");
        if (jsonobject3.isNull("user_mentions")) goto _L4; else goto _L3
_L3:
        jsonarray5 = jsonobject3.getJSONArray("user_mentions");
        k2 = jsonarray5.length();
        userMentionEntities = new UserMentionEntity[k2];
        l2 = 0;
_L5:
        if (l2 >= k2)
        {
            break; /* Loop/switch isn't completed */
        }
        userMentionEntities[l2] = new UserMentionEntityJSONImpl(jsonarray5.getJSONObject(l2));
        l2++;
        if (true) goto _L5; else goto _L4
_L4:
        if (jsonobject3.isNull("urls")) goto _L7; else goto _L6
_L6:
        jsonarray4 = jsonobject3.getJSONArray("urls");
        i2 = jsonarray4.length();
        urlEntities = new URLEntity[i2];
        j2 = 0;
_L8:
        if (j2 >= i2)
        {
            break; /* Loop/switch isn't completed */
        }
        urlEntities[j2] = new URLEntityJSONImpl(jsonarray4.getJSONObject(j2));
        j2++;
        if (true) goto _L8; else goto _L7
_L7:
        if (jsonobject3.isNull("hashtags")) goto _L10; else goto _L9
_L9:
        jsonarray3 = jsonobject3.getJSONArray("hashtags");
        k1 = jsonarray3.length();
        hashtagEntities = new HashtagEntity[k1];
        l1 = 0;
_L11:
        if (l1 >= k1)
        {
            break; /* Loop/switch isn't completed */
        }
        hashtagEntities[l1] = new HashtagEntityJSONImpl(jsonarray3.getJSONObject(l1));
        l1++;
        if (true) goto _L11; else goto _L10
_L10:
        if (jsonobject3.isNull("symbols")) goto _L13; else goto _L12
_L12:
        jsonarray2 = jsonobject3.getJSONArray("symbols");
        i1 = jsonarray2.length();
        symbolEntities = new SymbolEntity[i1];
        j1 = 0;
_L14:
        if (j1 >= i1)
        {
            break; /* Loop/switch isn't completed */
        }
        symbolEntities[j1] = new HashtagEntityJSONImpl(jsonarray2.getJSONObject(j1));
        j1++;
        if (true) goto _L14; else goto _L13
_L13:
        if (jsonobject3.isNull("media")) goto _L2; else goto _L15
_L15:
        jsonarray1 = jsonobject3.getJSONArray("media");
        k = jsonarray1.length();
        mediaEntities = new MediaEntity[k];
        l = 0;
_L16:
        if (l >= k)
        {
            break; /* Loop/switch isn't completed */
        }
        mediaEntities[l] = new MediaEntityJSONImpl(jsonarray1.getJSONObject(l));
        l++;
        if (true) goto _L16; else goto _L2
_L2:
        if (!jsonobject.isNull("metadata"))
        {
            jsonobject2 = jsonobject.getJSONObject("metadata");
            if (!jsonobject2.isNull("iso_language_code"))
            {
                isoLanguageCode = ParseUtil.getUnescapedString("iso_language_code", jsonobject2);
            }
        }
        if (userMentionEntities != null) goto _L18; else goto _L17
_L17:
        ausermentionentity = new UserMentionEntity[0];
_L37:
        userMentionEntities = ausermentionentity;
        if (urlEntities != null) goto _L20; else goto _L19
_L19:
        aurlentity = new URLEntity[0];
_L32:
        urlEntities = aurlentity;
        if (hashtagEntities != null) goto _L22; else goto _L21
_L21:
        ahashtagentity = new HashtagEntity[0];
_L33:
        hashtagEntities = ahashtagentity;
        if (symbolEntities != null) goto _L24; else goto _L23
_L23:
        asymbolentity = new SymbolEntity[0];
_L34:
        symbolEntities = asymbolentity;
        if (mediaEntities != null) goto _L26; else goto _L25
_L25:
        amediaentity = new MediaEntity[0];
_L35:
        mediaEntities = amediaentity;
        text = HTMLEntity.unescapeAndSlideEntityIncdices(jsonobject.getString("text"), userMentionEntities, urlEntities, hashtagEntities, mediaEntities);
        if (!jsonobject.isNull("current_user_retweet"))
        {
            currentUserRetweetId = jsonobject.getJSONObject("current_user_retweet").getLong("id");
        }
        if (!jsonobject.isNull("lang"))
        {
            lang = ParseUtil.getUnescapedString("lang", jsonobject);
        }
        if (jsonobject.isNull("scopes")) goto _L28; else goto _L27
_L27:
        jsonobject1 = jsonobject.getJSONObject("scopes");
        if (jsonobject1.isNull("place_ids")) goto _L28; else goto _L29
_L29:
        jsonarray = jsonobject1.getJSONArray("place_ids");
        j = jsonarray.length();
        as = new String[j];
_L31:
        if (i >= j)
        {
            break; /* Loop/switch isn't completed */
        }
        as[i] = jsonarray.getString(i);
        i++;
        if (true) goto _L31; else goto _L30
_L18:
        ausermentionentity = userMentionEntities;
        continue; /* Loop/switch isn't completed */
_L20:
        aurlentity = urlEntities;
          goto _L32
_L22:
        ahashtagentity = hashtagEntities;
          goto _L33
_L24:
        asymbolentity = symbolEntities;
          goto _L34
_L26:
        amediaentity = mediaEntities;
          goto _L35
_L30:
        scopes = new ScopesImpl(as);
_L28:
        return;
        if (true) goto _L37; else goto _L36
_L36:
    }

    public volatile int compareTo(Object obj)
    {
        return compareTo((Status)obj);
    }

    public int compareTo(Status status)
    {
        long l = id - status.getId();
        if (l < 0xffffffff80000000L)
        {
            return 0x80000000;
        }
        if (l > 0x7fffffffL)
        {
            return 0x7fffffff;
        } else
        {
            return (int)l;
        }
    }

    public boolean equals(Object obj)
    {
        boolean flag = true;
        if (obj == null)
        {
            flag = false;
        } else
        if (this != obj && (!(obj instanceof Status) || ((Status)obj).getId() != id))
        {
            return false;
        }
        return flag;
    }

    public long[] getContributors()
    {
        return contributorsIDs;
    }

    public Date getCreatedAt()
    {
        return createdAt;
    }

    public long getCurrentUserRetweetId()
    {
        return currentUserRetweetId;
    }

    public int getFavoriteCount()
    {
        return favoriteCount;
    }

    public GeoLocation getGeoLocation()
    {
        return geoLocation;
    }

    public HashtagEntity[] getHashtagEntities()
    {
        return hashtagEntities;
    }

    public long getId()
    {
        return id;
    }

    public String getInReplyToScreenName()
    {
        return inReplyToScreenName;
    }

    public long getInReplyToStatusId()
    {
        return inReplyToStatusId;
    }

    public long getInReplyToUserId()
    {
        return inReplyToUserId;
    }

    public String getLang()
    {
        return lang;
    }

    public MediaEntity[] getMediaEntities()
    {
        return mediaEntities;
    }

    public Place getPlace()
    {
        return place;
    }

    public int getRetweetCount()
    {
        return (int)retweetCount;
    }

    public Status getRetweetedStatus()
    {
        return retweetedStatus;
    }

    public Scopes getScopes()
    {
        return scopes;
    }

    public String getSource()
    {
        return source;
    }

    public SymbolEntity[] getSymbolEntities()
    {
        return symbolEntities;
    }

    public String getText()
    {
        return text;
    }

    public URLEntity[] getURLEntities()
    {
        return urlEntities;
    }

    public User getUser()
    {
        return user;
    }

    public UserMentionEntity[] getUserMentionEntities()
    {
        return userMentionEntities;
    }

    public int hashCode()
    {
        return (int)id;
    }

    public boolean isFavorited()
    {
        return isFavorited;
    }

    public boolean isPossiblySensitive()
    {
        return isPossiblySensitive;
    }

    public boolean isRetweet()
    {
        return retweetedStatus != null;
    }

    public boolean isRetweeted()
    {
        return isRetweeted;
    }

    public boolean isRetweetedByMe()
    {
        return currentUserRetweetId != -1L;
    }

    public boolean isTruncated()
    {
        return isTruncated;
    }

    public String toString()
    {
        return (new StringBuilder()).append("StatusJSONImpl{createdAt=").append(createdAt).append(", id=").append(id).append(", text='").append(text).append('\'').append(", source='").append(source).append('\'').append(", isTruncated=").append(isTruncated).append(", inReplyToStatusId=").append(inReplyToStatusId).append(", inReplyToUserId=").append(inReplyToUserId).append(", isFavorited=").append(isFavorited).append(", isRetweeted=").append(isRetweeted).append(", favoriteCount=").append(favoriteCount).append(", inReplyToScreenName='").append(inReplyToScreenName).append('\'').append(", geoLocation=").append(geoLocation).append(", place=").append(place).append(", retweetCount=").append(retweetCount).append(", isPossiblySensitive=").append(isPossiblySensitive).append(", isoLanguageCode='").append(isoLanguageCode).append('\'').append(", lang='").append(lang).append('\'').append(", contributorsIDs=").append(Arrays.toString(contributorsIDs)).append(", retweetedStatus=").append(retweetedStatus).append(", userMentionEntities=").append(Arrays.toString(userMentionEntities)).append(", urlEntities=").append(Arrays.toString(urlEntities)).append(", hashtagEntities=").append(Arrays.toString(hashtagEntities)).append(", mediaEntities=").append(Arrays.toString(mediaEntities)).append(", symbolEntities=").append(Arrays.toString(symbolEntities)).append(", currentUserRetweetId=").append(currentUserRetweetId).append(", user=").append(user).append('}').toString();
    }

}
