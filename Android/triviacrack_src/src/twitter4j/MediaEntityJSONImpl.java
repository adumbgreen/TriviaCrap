// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j;

import java.util.HashMap;
import java.util.Map;

// Referenced classes of package twitter4j:
//            EntityIndex, MediaEntity, JSONException, JSONObject, 
//            JSONArray, ParseUtil, TwitterException

public class MediaEntityJSONImpl extends EntityIndex
    implements MediaEntity
{

    private static final long serialVersionUID = 0x32182bdefb3fb272L;
    private String displayURL;
    private String expandedURL;
    private long id;
    private String mediaURL;
    private String mediaURLHttps;
    private Map sizes;
    private String type;
    private String url;

    MediaEntityJSONImpl()
    {
    }

    MediaEntityJSONImpl(JSONObject jsonobject)
    {
        try
        {
            JSONArray jsonarray = jsonobject.getJSONArray("indices");
            setStart(jsonarray.getInt(0));
            setEnd(jsonarray.getInt(1));
            id = ParseUtil.getLong("id", jsonobject);
            url = jsonobject.getString("url");
            expandedURL = jsonobject.getString("expanded_url");
            mediaURL = jsonobject.getString("media_url");
            mediaURLHttps = jsonobject.getString("media_url_https");
            displayURL = jsonobject.getString("display_url");
            JSONObject jsonobject1 = jsonobject.getJSONObject("sizes");
            sizes = new HashMap(4);
            addMediaEntitySizeIfNotNull(sizes, jsonobject1, MediaEntity.Size.LARGE, "large");
            addMediaEntitySizeIfNotNull(sizes, jsonobject1, MediaEntity.Size.MEDIUM, "medium");
            addMediaEntitySizeIfNotNull(sizes, jsonobject1, MediaEntity.Size.SMALL, "small");
            addMediaEntitySizeIfNotNull(sizes, jsonobject1, MediaEntity.Size.THUMB, "thumb");
            if (!jsonobject.isNull("type"))
            {
                type = jsonobject.getString("type");
            }
            return;
        }
        catch (JSONException jsonexception)
        {
            throw new TwitterException(jsonexception);
        }
    }

    private void addMediaEntitySizeIfNotNull(Map map, JSONObject jsonobject, Integer integer, String s)
    {
        if (!jsonobject.isNull(s))
        {
            map.put(integer, new Size(jsonobject.getJSONObject(s)));
        }
    }

    public volatile int compareTo(EntityIndex entityindex)
    {
        return super.compareTo(entityindex);
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof MediaEntityJSONImpl))
            {
                return false;
            }
            MediaEntityJSONImpl mediaentityjsonimpl = (MediaEntityJSONImpl)obj;
            if (id != mediaentityjsonimpl.id)
            {
                return false;
            }
        }
        return true;
    }

    public String getDisplayURL()
    {
        return displayURL;
    }

    public int getEnd()
    {
        return super.getEnd();
    }

    public String getExpandedURL()
    {
        return expandedURL;
    }

    public long getId()
    {
        return id;
    }

    public String getMediaURL()
    {
        return mediaURL;
    }

    public String getMediaURLHttps()
    {
        return mediaURLHttps;
    }

    public Map getSizes()
    {
        return sizes;
    }

    public int getStart()
    {
        return super.getStart();
    }

    public String getText()
    {
        return url;
    }

    public String getType()
    {
        return type;
    }

    public String getURL()
    {
        return url;
    }

    public int hashCode()
    {
        return (int)(id ^ id >>> 32);
    }

    public String toString()
    {
        return (new StringBuilder()).append("MediaEntityJSONImpl{id=").append(id).append(", url=").append(url).append(", mediaURL=").append(mediaURL).append(", mediaURLHttps=").append(mediaURLHttps).append(", expandedURL=").append(expandedURL).append(", displayURL='").append(displayURL).append('\'').append(", sizes=").append(sizes).append(", type=").append(type).append('}').toString();
    }

    private class Size
        implements MediaEntity.Size
    {

        private static final long serialVersionUID = 0xdd15eec62be2f28fL;
        int height;
        int resize;
        int width;

        public boolean equals(Object obj)
        {
            if (this != obj)
            {
                if (!(obj instanceof Size))
                {
                    return false;
                }
                Size size = (Size)obj;
                if (height != size.height)
                {
                    return false;
                }
                if (resize != size.resize)
                {
                    return false;
                }
                if (width != size.width)
                {
                    return false;
                }
            }
            return true;
        }

        public int getHeight()
        {
            return height;
        }

        public int getResize()
        {
            return resize;
        }

        public int getWidth()
        {
            return width;
        }

        public int hashCode()
        {
            return 31 * (31 * width + height) + resize;
        }

        public String toString()
        {
            return (new StringBuilder()).append("Size{width=").append(width).append(", height=").append(height).append(", resize=").append(resize).append('}').toString();
        }

        Size(JSONObject jsonobject)
        {
            width = jsonobject.getInt("w");
            height = jsonobject.getInt("h");
            int i;
            if ("fit".equals(jsonobject.getString("resize")))
            {
                i = 100;
            } else
            {
                i = 101;
            }
            resize = i;
        }
    }

}
