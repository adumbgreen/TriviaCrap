// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.Arrays;
import twitter4j.conf.Configuration;

// Referenced classes of package twitter4j:
//            TwitterResponseImpl, Place, HttpResponse, TwitterObjectFactory, 
//            JSONException, JSONObject, TwitterException, JSONArray, 
//            ResponseListImpl, ResponseList, ParseUtil, JSONImplFactory, 
//            GeoLocation

final class PlaceJSONImpl extends TwitterResponseImpl
    implements Serializable, Place
{

    private static final long serialVersionUID = 0xa79f55eadbe27f46L;
    private GeoLocation boundingBoxCoordinates[][];
    private String boundingBoxType;
    private Place containedWithIn[];
    private String country;
    private String countryCode;
    private String fullName;
    private GeoLocation geometryCoordinates[][];
    private String geometryType;
    private String id;
    private String name;
    private String placeType;
    private String streetAddress;
    private String url;

    PlaceJSONImpl()
    {
    }

    PlaceJSONImpl(HttpResponse httpresponse, Configuration configuration)
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

    PlaceJSONImpl(JSONObject jsonobject)
    {
        init(jsonobject);
    }

    static ResponseList createPlaceList(HttpResponse httpresponse, Configuration configuration)
    {
        JSONObject jsonobject = null;
        ResponseList responselist;
        try
        {
            jsonobject = httpresponse.asJSONObject();
            responselist = createPlaceList(jsonobject.getJSONObject("result").getJSONArray("places"), httpresponse, configuration);
        }
        catch (JSONException jsonexception)
        {
            throw new TwitterException((new StringBuilder()).append(jsonexception.getMessage()).append(":").append(jsonobject.toString()).toString(), jsonexception);
        }
        return responselist;
    }

    static ResponseList createPlaceList(JSONArray jsonarray, HttpResponse httpresponse, Configuration configuration)
    {
        int j;
        if (configuration.isJSONStoreEnabled())
        {
            TwitterObjectFactory.clearThreadLocalMap();
        }
        int i;
        ResponseListImpl responselistimpl;
        JSONObject jsonobject;
        PlaceJSONImpl placejsonimpl;
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
        placejsonimpl = new PlaceJSONImpl(jsonobject);
        responselistimpl.add(placejsonimpl);
        if (configuration.isJSONStoreEnabled())
        {
            TwitterObjectFactory.registerJSONObject(placejsonimpl, jsonobject);
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
        name = ParseUtil.getUnescapedString("name", jsonobject);
        streetAddress = ParseUtil.getUnescapedString("street_address", jsonobject);
        countryCode = ParseUtil.getRawString("country_code", jsonobject);
        id = ParseUtil.getRawString("id", jsonobject);
        country = ParseUtil.getRawString("country", jsonobject);
        if (jsonobject.isNull("place_type")) goto _L2; else goto _L1
_L1:
        placeType = ParseUtil.getRawString("place_type", jsonobject);
_L15:
        url = ParseUtil.getRawString("url", jsonobject);
        fullName = ParseUtil.getRawString("full_name", jsonobject);
        if (jsonobject.isNull("bounding_box")) goto _L4; else goto _L3
_L3:
        JSONObject jsonobject2 = jsonobject.getJSONObject("bounding_box");
        boundingBoxType = ParseUtil.getRawString("type", jsonobject2);
        boundingBoxCoordinates = JSONImplFactory.coordinatesAsGeoLocationArray(jsonobject2.getJSONArray("coordinates"));
_L12:
        if (jsonobject.isNull("geometry")) goto _L6; else goto _L5
_L5:
        JSONArray jsonarray1;
        JSONObject jsonobject1 = jsonobject.getJSONObject("geometry");
        geometryType = ParseUtil.getRawString("type", jsonobject1);
        jsonarray1 = jsonobject1.getJSONArray("coordinates");
        if (!geometryType.equals("Point")) goto _L8; else goto _L7
_L7:
        geometryCoordinates = (GeoLocation[][])Array.newInstance(twitter4j/GeoLocation, new int[] {
            1, 1
        });
        geometryCoordinates[0][0] = new GeoLocation(jsonarray1.getDouble(0), jsonarray1.getDouble(1));
_L13:
        if (jsonobject.isNull("contained_within")) goto _L10; else goto _L9
_L9:
        JSONArray jsonarray;
        jsonarray = jsonobject.getJSONArray("contained_within");
        containedWithIn = new Place[jsonarray.length()];
        int i = 0;
        do
        {
            try
            {
                if (i >= jsonarray.length())
                {
                    break;
                }
                containedWithIn[i] = new PlaceJSONImpl(jsonarray.getJSONObject(i));
            }
            catch (JSONException jsonexception)
            {
                throw new TwitterException((new StringBuilder()).append(jsonexception.getMessage()).append(":").append(jsonobject.toString()).toString(), jsonexception);
            }
            i++;
        } while (true);
          goto _L11
_L2:
        placeType = ParseUtil.getRawString("type", jsonobject);
        continue; /* Loop/switch isn't completed */
_L4:
        boundingBoxType = null;
        boundingBoxCoordinates = (GeoLocation[][])null;
          goto _L12
_L8:
label0:
        {
            if (!geometryType.equals("Polygon"))
            {
                break label0;
            }
            geometryCoordinates = JSONImplFactory.coordinatesAsGeoLocationArray(jsonarray1);
        }
          goto _L13
        geometryType = null;
        geometryCoordinates = (GeoLocation[][])null;
          goto _L13
_L6:
        geometryType = null;
        geometryCoordinates = (GeoLocation[][])null;
          goto _L13
_L10:
        containedWithIn = null;
_L11:
        return;
        if (true) goto _L15; else goto _L14
_L14:
    }

    public volatile int compareTo(Object obj)
    {
        return compareTo((Place)obj);
    }

    public int compareTo(Place place)
    {
        return id.compareTo(place.getId());
    }

    public boolean equals(Object obj)
    {
        boolean flag = true;
        if (obj == null)
        {
            flag = false;
        } else
        if (this != obj && (!(obj instanceof Place) || !((Place)obj).getId().equals(id)))
        {
            return false;
        }
        return flag;
    }

    public GeoLocation[][] getBoundingBoxCoordinates()
    {
        return boundingBoxCoordinates;
    }

    public String getBoundingBoxType()
    {
        return boundingBoxType;
    }

    public Place[] getContainedWithIn()
    {
        return containedWithIn;
    }

    public String getCountry()
    {
        return country;
    }

    public String getCountryCode()
    {
        return countryCode;
    }

    public String getFullName()
    {
        return fullName;
    }

    public GeoLocation[][] getGeometryCoordinates()
    {
        return geometryCoordinates;
    }

    public String getGeometryType()
    {
        return geometryType;
    }

    public String getId()
    {
        return id;
    }

    public String getName()
    {
        return name;
    }

    public String getPlaceType()
    {
        return placeType;
    }

    public String getStreetAddress()
    {
        return streetAddress;
    }

    public String getURL()
    {
        return url;
    }

    public int hashCode()
    {
        return id.hashCode();
    }

    public String toString()
    {
        StringBuilder stringbuilder = (new StringBuilder()).append("PlaceJSONImpl{name='").append(name).append('\'').append(", streetAddress='").append(streetAddress).append('\'').append(", countryCode='").append(countryCode).append('\'').append(", id='").append(id).append('\'').append(", country='").append(country).append('\'').append(", placeType='").append(placeType).append('\'').append(", url='").append(url).append('\'').append(", fullName='").append(fullName).append('\'').append(", boundingBoxType='").append(boundingBoxType).append('\'').append(", boundingBoxCoordinates=");
        java.util.List list;
        StringBuilder stringbuilder1;
        java.util.List list1;
        StringBuilder stringbuilder2;
        Place aplace[];
        java.util.List list2;
        if (boundingBoxCoordinates == null)
        {
            list = null;
        } else
        {
            list = Arrays.asList(boundingBoxCoordinates);
        }
        stringbuilder1 = stringbuilder.append(list).append(", geometryType='").append(geometryType).append('\'').append(", geometryCoordinates=");
        if (geometryCoordinates == null)
        {
            list1 = null;
        } else
        {
            list1 = Arrays.asList(geometryCoordinates);
        }
        stringbuilder2 = stringbuilder1.append(list1).append(", containedWithIn=");
        aplace = containedWithIn;
        list2 = null;
        if (aplace != null)
        {
            list2 = Arrays.asList(containedWithIn);
        }
        return stringbuilder2.append(list2).append('}').toString();
    }
}
