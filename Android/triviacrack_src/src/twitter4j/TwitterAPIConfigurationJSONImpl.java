// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import twitter4j.conf.Configuration;

// Referenced classes of package twitter4j:
//            TwitterResponseImpl, TwitterAPIConfiguration, JSONException, HttpResponse, 
//            ParseUtil, JSONObject, TwitterObjectFactory, JSONArray, 
//            TwitterException

class TwitterAPIConfigurationJSONImpl extends TwitterResponseImpl
    implements TwitterAPIConfiguration
{

    private static final long serialVersionUID = 0xce31a6536c4562baL;
    private int charactersReservedPerMedia;
    private int maxMediaPerUpload;
    private String nonUsernamePaths[];
    private int photoSizeLimit;
    private Map photoSizes;
    private int shortURLLength;
    private int shortURLLengthHttps;

    TwitterAPIConfigurationJSONImpl(HttpResponse httpresponse, Configuration configuration)
    {
        super(httpresponse);
        JSONObject jsonobject;
        JSONObject jsonobject1;
        JSONObject jsonobject2;
        jsonobject = httpresponse.asJSONObject();
        photoSizeLimit = ParseUtil.getInt("photo_size_limit", jsonobject);
        shortURLLength = ParseUtil.getInt("short_url_length", jsonobject);
        shortURLLengthHttps = ParseUtil.getInt("short_url_length_https", jsonobject);
        charactersReservedPerMedia = ParseUtil.getInt("characters_reserved_per_media", jsonobject);
        jsonobject1 = jsonobject.getJSONObject("photo_sizes");
        photoSizes = new HashMap(4);
        photoSizes.put(MediaEntity.Size.LARGE, new MediaEntityJSONImpl.Size(jsonobject1.getJSONObject("large")));
        if (!jsonobject1.isNull("med"))
        {
            break MISSING_BLOCK_LABEL_273;
        }
        jsonobject2 = jsonobject1.getJSONObject("medium");
_L1:
        JSONArray jsonarray;
        photoSizes.put(MediaEntity.Size.MEDIUM, new MediaEntityJSONImpl.Size(jsonobject2));
        photoSizes.put(MediaEntity.Size.SMALL, new MediaEntityJSONImpl.Size(jsonobject1.getJSONObject("small")));
        photoSizes.put(MediaEntity.Size.THUMB, new MediaEntityJSONImpl.Size(jsonobject1.getJSONObject("thumb")));
        if (configuration.isJSONStoreEnabled())
        {
            TwitterObjectFactory.clearThreadLocalMap();
            TwitterObjectFactory.registerJSONObject(this, httpresponse.asJSONObject());
        }
        jsonarray = jsonobject.getJSONArray("non_username_paths");
        nonUsernamePaths = new String[jsonarray.length()];
        int i = 0;
        do
        {
            try
            {
                if (i >= jsonarray.length())
                {
                    break;
                }
                nonUsernamePaths[i] = jsonarray.getString(i);
            }
            catch (JSONException jsonexception)
            {
                throw new TwitterException(jsonexception);
            }
            i++;
        } while (true);
        break MISSING_BLOCK_LABEL_285;
        jsonobject2 = jsonobject1.getJSONObject("med");
          goto _L1
        maxMediaPerUpload = ParseUtil.getInt("max_media_per_upload", jsonobject);
        return;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof TwitterAPIConfigurationJSONImpl))
            {
                return false;
            }
            TwitterAPIConfigurationJSONImpl twitterapiconfigurationjsonimpl = (TwitterAPIConfigurationJSONImpl)obj;
            if (charactersReservedPerMedia != twitterapiconfigurationjsonimpl.charactersReservedPerMedia)
            {
                return false;
            }
            if (maxMediaPerUpload != twitterapiconfigurationjsonimpl.maxMediaPerUpload)
            {
                return false;
            }
            if (photoSizeLimit != twitterapiconfigurationjsonimpl.photoSizeLimit)
            {
                return false;
            }
            if (shortURLLength != twitterapiconfigurationjsonimpl.shortURLLength)
            {
                return false;
            }
            if (shortURLLengthHttps != twitterapiconfigurationjsonimpl.shortURLLengthHttps)
            {
                return false;
            }
            if (!Arrays.equals(nonUsernamePaths, twitterapiconfigurationjsonimpl.nonUsernamePaths))
            {
                return false;
            }
            if (photoSizes == null ? twitterapiconfigurationjsonimpl.photoSizes != null : !photoSizes.equals(twitterapiconfigurationjsonimpl.photoSizes))
            {
                return false;
            }
        }
        return true;
    }

    public int getCharactersReservedPerMedia()
    {
        return charactersReservedPerMedia;
    }

    public int getMaxMediaPerUpload()
    {
        return maxMediaPerUpload;
    }

    public String[] getNonUsernamePaths()
    {
        return nonUsernamePaths;
    }

    public int getPhotoSizeLimit()
    {
        return photoSizeLimit;
    }

    public Map getPhotoSizes()
    {
        return photoSizes;
    }

    public int getShortURLLength()
    {
        return shortURLLength;
    }

    public int getShortURLLengthHttps()
    {
        return shortURLLengthHttps;
    }

    public int hashCode()
    {
        int i = 31 * (31 * (31 * (31 * photoSizeLimit + shortURLLength) + shortURLLengthHttps) + charactersReservedPerMedia);
        int j;
        int k;
        String as[];
        int l;
        if (photoSizes != null)
        {
            j = photoSizes.hashCode();
        } else
        {
            j = 0;
        }
        k = 31 * (j + i);
        as = nonUsernamePaths;
        l = 0;
        if (as != null)
        {
            l = Arrays.hashCode(nonUsernamePaths);
        }
        return 31 * (k + l) + maxMediaPerUpload;
    }

    public String toString()
    {
        StringBuilder stringbuilder = (new StringBuilder()).append("TwitterAPIConfigurationJSONImpl{photoSizeLimit=").append(photoSizeLimit).append(", shortURLLength=").append(shortURLLength).append(", shortURLLengthHttps=").append(shortURLLengthHttps).append(", charactersReservedPerMedia=").append(charactersReservedPerMedia).append(", photoSizes=").append(photoSizes).append(", nonUsernamePaths=");
        java.util.List list;
        if (nonUsernamePaths == null)
        {
            list = null;
        } else
        {
            list = Arrays.asList(nonUsernamePaths);
        }
        return stringbuilder.append(list).append(", maxMediaPerUpload=").append(maxMediaPerUpload).append('}').toString();
    }
}
