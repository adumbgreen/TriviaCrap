// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Date;
import twitter4j.conf.Configuration;

// Referenced classes of package twitter4j:
//            TwitterResponseImpl, DirectMessage, HttpResponse, TwitterObjectFactory, 
//            JSONException, JSONArray, ResponseListImpl, ResponseList, 
//            TwitterException, ParseUtil, UserJSONImpl, JSONObject, 
//            UserMentionEntity, UserMentionEntityJSONImpl, URLEntity, URLEntityJSONImpl, 
//            HashtagEntity, HashtagEntityJSONImpl, SymbolEntity, MediaEntity, 
//            MediaEntityJSONImpl, HTMLEntity, User

final class DirectMessageJSONImpl extends TwitterResponseImpl
    implements Serializable, DirectMessage
{

    private static final long serialVersionUID = 0x626f10a4d0a22d89L;
    private Date createdAt;
    private HashtagEntity hashtagEntities[];
    private long id;
    private MediaEntity mediaEntities[];
    private User recipient;
    private long recipientId;
    private String recipientScreenName;
    private User sender;
    private long senderId;
    private String senderScreenName;
    private SymbolEntity symbolEntities[];
    private String text;
    private URLEntity urlEntities[];
    private UserMentionEntity userMentionEntities[];

    DirectMessageJSONImpl(HttpResponse httpresponse, Configuration configuration)
    {
        super(httpresponse);
        JSONObject jsonobject = httpresponse.asJSONObject();
        init(jsonobject);
        if (configuration.isJSONStoreEnabled())
        {
            TwitterObjectFactory.clearThreadLocalMap();
            TwitterObjectFactory.registerJSONObject(this, jsonobject);
        }
    }

    DirectMessageJSONImpl(JSONObject jsonobject)
    {
        init(jsonobject);
    }

    static ResponseList createDirectMessageList(HttpResponse httpresponse, Configuration configuration)
    {
        int j;
        JSONArray jsonarray;
        int i;
        ResponseListImpl responselistimpl;
        JSONObject jsonobject;
        DirectMessageJSONImpl directmessagejsonimpl;
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
_L2:
        if (j >= i)
        {
            break MISSING_BLOCK_LABEL_94;
        }
        jsonobject = jsonarray.getJSONObject(j);
        directmessagejsonimpl = new DirectMessageJSONImpl(jsonobject);
        responselistimpl.add(directmessagejsonimpl);
        if (configuration.isJSONStoreEnabled())
        {
            TwitterObjectFactory.registerJSONObject(directmessagejsonimpl, jsonobject);
        }
        break MISSING_BLOCK_LABEL_123;
        if (configuration.isJSONStoreEnabled())
        {
            TwitterObjectFactory.registerJSONObject(responselistimpl, jsonarray);
        }
        return responselistimpl;
        j++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private void init(JSONObject jsonobject)
    {
        int i;
        i = 0;
        id = ParseUtil.getLong("id", jsonobject);
        senderId = ParseUtil.getLong("sender_id", jsonobject);
        recipientId = ParseUtil.getLong("recipient_id", jsonobject);
        createdAt = ParseUtil.getDate("created_at", jsonobject);
        senderScreenName = ParseUtil.getUnescapedString("sender_screen_name", jsonobject);
        recipientScreenName = ParseUtil.getUnescapedString("recipient_screen_name", jsonobject);
        sender = new UserJSONImpl(jsonobject.getJSONObject("sender"));
        recipient = new UserJSONImpl(jsonobject.getJSONObject("recipient"));
        if (jsonobject.isNull("entities")) goto _L2; else goto _L1
_L1:
        JSONObject jsonobject1 = jsonobject.getJSONObject("entities");
        if (jsonobject1.isNull("user_mentions")) goto _L4; else goto _L3
_L3:
        JSONArray jsonarray4;
        int i2;
        jsonarray4 = jsonobject1.getJSONArray("user_mentions");
        i2 = jsonarray4.length();
        userMentionEntities = new UserMentionEntity[i2];
        int j2 = 0;
        while (j2 < i2) 
        {
            UserMentionEntity ausermentionentity[];
            URLEntity aurlentity[];
            HashtagEntity ahashtagentity[];
            SymbolEntity asymbolentity[];
            MediaEntity amediaentity[];
            JSONArray jsonarray;
            int j;
            JSONArray jsonarray1;
            int k;
            int l;
            JSONArray jsonarray2;
            int i1;
            int j1;
            JSONArray jsonarray3;
            int k1;
            int l1;
            try
            {
                userMentionEntities[j2] = new UserMentionEntityJSONImpl(jsonarray4.getJSONObject(j2));
            }
            catch (JSONException jsonexception)
            {
                throw new TwitterException(jsonexception);
            }
            j2++;
        }
_L4:
        if (jsonobject1.isNull("urls")) goto _L6; else goto _L5
_L5:
        jsonarray3 = jsonobject1.getJSONArray("urls");
        k1 = jsonarray3.length();
        urlEntities = new URLEntity[k1];
        l1 = 0;
_L7:
        if (l1 >= k1)
        {
            break; /* Loop/switch isn't completed */
        }
        urlEntities[l1] = new URLEntityJSONImpl(jsonarray3.getJSONObject(l1));
        l1++;
        if (true) goto _L7; else goto _L6
_L6:
        if (jsonobject1.isNull("hashtags")) goto _L9; else goto _L8
_L8:
        jsonarray2 = jsonobject1.getJSONArray("hashtags");
        i1 = jsonarray2.length();
        hashtagEntities = new HashtagEntity[i1];
        j1 = 0;
_L10:
        if (j1 >= i1)
        {
            break; /* Loop/switch isn't completed */
        }
        hashtagEntities[j1] = new HashtagEntityJSONImpl(jsonarray2.getJSONObject(j1));
        j1++;
        if (true) goto _L10; else goto _L9
_L9:
        if (jsonobject1.isNull("symbols")) goto _L12; else goto _L11
_L11:
        jsonarray1 = jsonobject1.getJSONArray("symbols");
        k = jsonarray1.length();
        symbolEntities = new SymbolEntity[k];
        l = 0;
_L13:
        if (l >= k)
        {
            break; /* Loop/switch isn't completed */
        }
        symbolEntities[l] = new HashtagEntityJSONImpl(jsonarray1.getJSONObject(l));
        l++;
        if (true) goto _L13; else goto _L12
_L12:
        if (jsonobject1.isNull("media")) goto _L2; else goto _L14
_L14:
        jsonarray = jsonobject1.getJSONArray("media");
        j = jsonarray.length();
        mediaEntities = new MediaEntity[j];
_L15:
        if (i >= j)
        {
            break; /* Loop/switch isn't completed */
        }
        mediaEntities[i] = new MediaEntityJSONImpl(jsonarray.getJSONObject(i));
        i++;
        if (true) goto _L15; else goto _L2
_L2:
        if (userMentionEntities != null) goto _L17; else goto _L16
_L16:
        ausermentionentity = new UserMentionEntity[0];
_L24:
        userMentionEntities = ausermentionentity;
        if (urlEntities != null) goto _L19; else goto _L18
_L18:
        aurlentity = new URLEntity[0];
_L25:
        urlEntities = aurlentity;
        if (hashtagEntities != null) goto _L21; else goto _L20
_L20:
        ahashtagentity = new HashtagEntity[0];
_L26:
        hashtagEntities = ahashtagentity;
        if (symbolEntities != null) goto _L23; else goto _L22
_L22:
        asymbolentity = new SymbolEntity[0];
_L27:
        symbolEntities = asymbolentity;
        if (mediaEntities != null)
        {
            break MISSING_BLOCK_LABEL_628;
        }
        amediaentity = new MediaEntity[0];
_L28:
        mediaEntities = amediaentity;
        text = HTMLEntity.unescapeAndSlideEntityIncdices(jsonobject.getString("text"), userMentionEntities, urlEntities, hashtagEntities, mediaEntities);
        return;
_L17:
        ausermentionentity = userMentionEntities;
          goto _L24
_L19:
        aurlentity = urlEntities;
          goto _L25
_L21:
        ahashtagentity = hashtagEntities;
          goto _L26
_L23:
        asymbolentity = symbolEntities;
          goto _L27
        amediaentity = mediaEntities;
          goto _L28
    }

    public boolean equals(Object obj)
    {
        boolean flag = true;
        if (obj == null)
        {
            flag = false;
        } else
        if (this != obj && (!(obj instanceof DirectMessage) || ((DirectMessage)obj).getId() != id))
        {
            return false;
        }
        return flag;
    }

    public Date getCreatedAt()
    {
        return createdAt;
    }

    public HashtagEntity[] getHashtagEntities()
    {
        return hashtagEntities;
    }

    public long getId()
    {
        return id;
    }

    public MediaEntity[] getMediaEntities()
    {
        return mediaEntities;
    }

    public User getRecipient()
    {
        return recipient;
    }

    public long getRecipientId()
    {
        return recipientId;
    }

    public String getRecipientScreenName()
    {
        return recipientScreenName;
    }

    public User getSender()
    {
        return sender;
    }

    public long getSenderId()
    {
        return senderId;
    }

    public String getSenderScreenName()
    {
        return senderScreenName;
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

    public UserMentionEntity[] getUserMentionEntities()
    {
        return userMentionEntities;
    }

    public int hashCode()
    {
        return (int)id;
    }

    public String toString()
    {
        StringBuilder stringbuilder = (new StringBuilder()).append("DirectMessageJSONImpl{id=").append(id).append(", text='").append(text).append('\'').append(", sender_id=").append(senderId).append(", recipient_id=").append(recipientId).append(", created_at=").append(createdAt).append(", userMentionEntities=");
        java.util.List list;
        StringBuilder stringbuilder1;
        java.util.List list1;
        StringBuilder stringbuilder2;
        java.util.List list2;
        StringBuilder stringbuilder3;
        java.util.List list3;
        StringBuilder stringbuilder4;
        java.util.List list4;
        StringBuilder stringbuilder5;
        HashtagEntity ahashtagentity[];
        java.util.List list5;
        if (userMentionEntities == null)
        {
            list = null;
        } else
        {
            list = Arrays.asList(userMentionEntities);
        }
        stringbuilder1 = stringbuilder.append(list).append(", urlEntities=");
        if (urlEntities == null)
        {
            list1 = null;
        } else
        {
            list1 = Arrays.asList(urlEntities);
        }
        stringbuilder2 = stringbuilder1.append(list1).append(", hashtagEntities=");
        if (hashtagEntities == null)
        {
            list2 = null;
        } else
        {
            list2 = Arrays.asList(hashtagEntities);
        }
        stringbuilder3 = stringbuilder2.append(list2).append(", sender_screen_name='").append(senderScreenName).append('\'').append(", recipient_screen_name='").append(recipientScreenName).append('\'').append(", sender=").append(sender).append(", recipient=").append(recipient).append(", userMentionEntities=");
        if (userMentionEntities == null)
        {
            list3 = null;
        } else
        {
            list3 = Arrays.asList(userMentionEntities);
        }
        stringbuilder4 = stringbuilder3.append(list3).append(", urlEntities=");
        if (urlEntities == null)
        {
            list4 = null;
        } else
        {
            list4 = Arrays.asList(urlEntities);
        }
        stringbuilder5 = stringbuilder4.append(list4).append(", hashtagEntities=");
        ahashtagentity = hashtagEntities;
        list5 = null;
        if (ahashtagentity != null)
        {
            list5 = Arrays.asList(hashtagEntities);
        }
        return stringbuilder5.append(list5).append('}').toString();
    }
}
