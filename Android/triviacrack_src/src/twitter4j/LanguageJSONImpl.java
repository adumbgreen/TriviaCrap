// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j;

import twitter4j.conf.Configuration;

// Referenced classes of package twitter4j:
//            HttpResponse, JSONException, TwitterObjectFactory, JSONArray, 
//            ResponseListImpl, ResponseList, TwitterException, JSONObject

public class LanguageJSONImpl
    implements twitter4j.api.HelpResources.Language
{

    private String code;
    private String name;
    private String status;

    LanguageJSONImpl(JSONObject jsonobject)
    {
        init(jsonobject);
    }

    static ResponseList createLanguageList(HttpResponse httpresponse, Configuration configuration)
    {
        return createLanguageList(httpresponse.asJSONArray(), httpresponse, configuration);
    }

    static ResponseList createLanguageList(JSONArray jsonarray, HttpResponse httpresponse, Configuration configuration)
    {
        int j;
        if (configuration.isJSONStoreEnabled())
        {
            TwitterObjectFactory.clearThreadLocalMap();
        }
        int i;
        ResponseListImpl responselistimpl;
        JSONObject jsonobject;
        LanguageJSONImpl languagejsonimpl;
        try
        {
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
        languagejsonimpl = new LanguageJSONImpl(jsonobject);
        responselistimpl.add(languagejsonimpl);
        if (configuration.isJSONStoreEnabled())
        {
            TwitterObjectFactory.registerJSONObject(languagejsonimpl, jsonobject);
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

    private void init(JSONObject jsonobject)
    {
        try
        {
            name = jsonobject.getString("name");
            code = jsonobject.getString("code");
            status = jsonobject.getString("status");
            return;
        }
        catch (JSONException jsonexception)
        {
            throw new TwitterException((new StringBuilder()).append(jsonexception.getMessage()).append(":").append(jsonobject.toString()).toString(), jsonexception);
        }
    }

    public String getCode()
    {
        return code;
    }

    public String getName()
    {
        return name;
    }

    public String getStatus()
    {
        return status;
    }
}
