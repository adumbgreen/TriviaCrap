// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j;

import twitter4j.conf.Configuration;

// Referenced classes of package twitter4j:
//            ResponseListImpl, SimilarPlaces, ResponseList, JSONException, 
//            HttpResponse, JSONObject, PlaceJSONImpl, TwitterException, 
//            RateLimitStatus

public class SimilarPlacesImpl extends ResponseListImpl
    implements SimilarPlaces
{

    private static final long serialVersionUID = 0xcc4332c282b8394bL;
    private final String token;

    SimilarPlacesImpl(ResponseList responselist, HttpResponse httpresponse, String s)
    {
        super(responselist.size(), httpresponse);
        addAll(responselist);
        token = s;
    }

    static SimilarPlaces createSimilarPlaces(HttpResponse httpresponse, Configuration configuration)
    {
        JSONObject jsonobject = null;
        SimilarPlacesImpl similarplacesimpl;
        try
        {
            jsonobject = httpresponse.asJSONObject();
            JSONObject jsonobject1 = jsonobject.getJSONObject("result");
            similarplacesimpl = new SimilarPlacesImpl(PlaceJSONImpl.createPlaceList(jsonobject1.getJSONArray("places"), httpresponse, configuration), httpresponse, jsonobject1.getString("token"));
        }
        catch (JSONException jsonexception)
        {
            throw new TwitterException((new StringBuilder()).append(jsonexception.getMessage()).append(":").append(jsonobject.toString()).toString(), jsonexception);
        }
        return similarplacesimpl;
    }

    public volatile int getAccessLevel()
    {
        return super.getAccessLevel();
    }

    public volatile RateLimitStatus getRateLimitStatus()
    {
        return super.getRateLimitStatus();
    }

    public String getToken()
    {
        return token;
    }
}
