// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j;

import java.io.Serializable;
import twitter4j.conf.Configuration;

// Referenced classes of package twitter4j:
//            Category, HttpResponse, JSONException, TwitterObjectFactory, 
//            ResponseListImpl, JSONArray, ResponseList, TwitterException, 
//            JSONObject, ParseUtil

final class CategoryJSONImpl
    implements Serializable, Category
{

    private static final long serialVersionUID = 0x34e495cc033cddf4L;
    private String name;
    private int size;
    private String slug;

    CategoryJSONImpl(JSONObject jsonobject)
    {
        init(jsonobject);
    }

    static ResponseList createCategoriesList(HttpResponse httpresponse, Configuration configuration)
    {
        return createCategoriesList(httpresponse.asJSONArray(), httpresponse, configuration);
    }

    static ResponseList createCategoriesList(JSONArray jsonarray, HttpResponse httpresponse, Configuration configuration)
    {
        int i;
        ResponseListImpl responselistimpl;
        JSONObject jsonobject;
        CategoryJSONImpl categoryjsonimpl;
        try
        {
            if (configuration.isJSONStoreEnabled())
            {
                TwitterObjectFactory.clearThreadLocalMap();
            }
            responselistimpl = new ResponseListImpl(jsonarray.length(), httpresponse);
        }
        catch (JSONException jsonexception)
        {
            throw new TwitterException(jsonexception);
        }
        i = 0;
_L2:
        if (i < jsonarray.length())
        {
            jsonobject = jsonarray.getJSONObject(i);
            categoryjsonimpl = new CategoryJSONImpl(jsonobject);
            responselistimpl.add(categoryjsonimpl);
            if (configuration.isJSONStoreEnabled())
            {
                TwitterObjectFactory.registerJSONObject(categoryjsonimpl, jsonobject);
            }
            break MISSING_BLOCK_LABEL_116;
        }
        if (configuration.isJSONStoreEnabled())
        {
            TwitterObjectFactory.registerJSONObject(responselistimpl, jsonarray);
        }
        return responselistimpl;
        i++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            CategoryJSONImpl categoryjsonimpl = (CategoryJSONImpl)obj;
            if (size != categoryjsonimpl.size)
            {
                return false;
            }
            if (name == null ? categoryjsonimpl.name != null : !name.equals(categoryjsonimpl.name))
            {
                return false;
            }
            if (slug == null ? categoryjsonimpl.slug != null : !slug.equals(categoryjsonimpl.slug))
            {
                return false;
            }
        }
        return true;
    }

    public String getName()
    {
        return name;
    }

    public int getSize()
    {
        return size;
    }

    public String getSlug()
    {
        return slug;
    }

    public int hashCode()
    {
        int i;
        int j;
        String s;
        int k;
        if (name != null)
        {
            i = name.hashCode();
        } else
        {
            i = 0;
        }
        j = i * 31;
        s = slug;
        k = 0;
        if (s != null)
        {
            k = slug.hashCode();
        }
        return 31 * (j + k) + size;
    }

    void init(JSONObject jsonobject)
    {
        name = jsonobject.getString("name");
        slug = jsonobject.getString("slug");
        size = ParseUtil.getInt("size", jsonobject);
    }

    public String toString()
    {
        return (new StringBuilder()).append("CategoryJSONImpl{name='").append(name).append('\'').append(", slug='").append(slug).append('\'').append(", size=").append(size).append('}').toString();
    }
}
