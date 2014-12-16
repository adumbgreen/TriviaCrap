// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package twitter4j:
//            HttpParameter, GeoLocation

public final class Query
    implements Serializable
{

    public static final Unit KILOMETERS;
    public static final Unit MILES;
    public static final ResultType MIXED;
    public static final ResultType POPULAR;
    public static final ResultType RECENT;
    private static final HttpParameter WITH_TWITTER_USER_ID = new HttpParameter("with_twitter_user_id", "true");
    private static final long serialVersionUID = 0x63dec3c8328258c3L;
    private int count;
    private String geocode;
    private String lang;
    private String locale;
    private long maxId;
    private String nextPageQuery;
    private String query;
    private ResultType resultType;
    private String since;
    private long sinceId;
    private String until;

    public Query()
    {
        query = null;
        lang = null;
        locale = null;
        maxId = -1L;
        count = -1;
        since = null;
        sinceId = -1L;
        geocode = null;
        until = null;
        resultType = null;
        nextPageQuery = null;
    }

    public Query(String s)
    {
        query = null;
        lang = null;
        locale = null;
        maxId = -1L;
        count = -1;
        since = null;
        sinceId = -1L;
        geocode = null;
        until = null;
        resultType = null;
        nextPageQuery = null;
        query = s;
    }

    private void appendParameter(String s, long l, List list)
    {
        if (0L <= l)
        {
            list.add(new HttpParameter(s, String.valueOf(l)));
        }
    }

    private void appendParameter(String s, String s1, List list)
    {
        if (s1 != null)
        {
            list.add(new HttpParameter(s, s1));
        }
    }

    static Query createWithNextPageQuery(String s)
    {
        Query query1 = new Query();
        query1.nextPageQuery = s;
        return query1;
    }

    HttpParameter[] asHttpParameterArray()
    {
        ArrayList arraylist = new ArrayList(12);
        appendParameter("q", query, arraylist);
        appendParameter("lang", lang, arraylist);
        appendParameter("locale", locale, arraylist);
        appendParameter("max_id", maxId, arraylist);
        appendParameter("count", count, arraylist);
        appendParameter("since", since, arraylist);
        appendParameter("since_id", sinceId, arraylist);
        appendParameter("geocode", geocode, arraylist);
        appendParameter("until", until, arraylist);
        if (resultType != null)
        {
            arraylist.add(new HttpParameter("result_type", resultType.name()));
        }
        arraylist.add(WITH_TWITTER_USER_ID);
        return (HttpParameter[])arraylist.toArray(new HttpParameter[arraylist.size()]);
    }

    public Query count(int i)
    {
        setCount(i);
        return this;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            Query query1 = (Query)obj;
            if (maxId != query1.maxId)
            {
                return false;
            }
            if (count != query1.count)
            {
                return false;
            }
            if (sinceId != query1.sinceId)
            {
                return false;
            }
            if (geocode == null ? query1.geocode != null : !geocode.equals(query1.geocode))
            {
                return false;
            }
            if (lang == null ? query1.lang != null : !lang.equals(query1.lang))
            {
                return false;
            }
            if (locale == null ? query1.locale != null : !locale.equals(query1.locale))
            {
                return false;
            }
            if (nextPageQuery == null ? query1.nextPageQuery != null : !nextPageQuery.equals(query1.nextPageQuery))
            {
                return false;
            }
            if (query == null ? query1.query != null : !query.equals(query1.query))
            {
                return false;
            }
            if (resultType == null ? query1.resultType != null : !resultType.equals(query1.resultType))
            {
                return false;
            }
            if (since == null ? query1.since != null : !since.equals(query1.since))
            {
                return false;
            }
            if (until == null ? query1.until != null : !until.equals(query1.until))
            {
                return false;
            }
        }
        return true;
    }

    public Query geoCode(GeoLocation geolocation, double d, String s)
    {
        setGeoCode(geolocation, d, s);
        return this;
    }

    public int getCount()
    {
        return count;
    }

    public String getGeocode()
    {
        return geocode;
    }

    public String getLang()
    {
        return lang;
    }

    public String getLocale()
    {
        return locale;
    }

    public long getMaxId()
    {
        return maxId;
    }

    public String getQuery()
    {
        return query;
    }

    public ResultType getResultType()
    {
        return resultType;
    }

    public String getSince()
    {
        return since;
    }

    public long getSinceId()
    {
        return sinceId;
    }

    public String getUntil()
    {
        return until;
    }

    public int hashCode()
    {
        int i;
        int j;
        int k;
        int l;
        int i1;
        int j1;
        int k1;
        int l1;
        int i2;
        int j2;
        int k2;
        int l2;
        int i3;
        int j3;
        String s;
        int k3;
        if (query != null)
        {
            i = query.hashCode();
        } else
        {
            i = 0;
        }
        j = i * 31;
        if (lang != null)
        {
            k = lang.hashCode();
        } else
        {
            k = 0;
        }
        l = 31 * (k + j);
        if (locale != null)
        {
            i1 = locale.hashCode();
        } else
        {
            i1 = 0;
        }
        j1 = 31 * (31 * (31 * (i1 + l) + (int)(maxId ^ maxId >>> 32)) + count);
        if (since != null)
        {
            k1 = since.hashCode();
        } else
        {
            k1 = 0;
        }
        l1 = 31 * (31 * (k1 + j1) + (int)(sinceId ^ sinceId >>> 32));
        if (geocode != null)
        {
            i2 = geocode.hashCode();
        } else
        {
            i2 = 0;
        }
        j2 = 31 * (i2 + l1);
        if (until != null)
        {
            k2 = until.hashCode();
        } else
        {
            k2 = 0;
        }
        l2 = 31 * (k2 + j2);
        if (resultType != null)
        {
            i3 = resultType.hashCode();
        } else
        {
            i3 = 0;
        }
        j3 = 31 * (i3 + l2);
        s = nextPageQuery;
        k3 = 0;
        if (s != null)
        {
            k3 = nextPageQuery.hashCode();
        }
        return j3 + k3;
    }

    public Query lang(String s)
    {
        setLang(s);
        return this;
    }

    public Query locale(String s)
    {
        setLocale(s);
        return this;
    }

    public Query maxId(long l)
    {
        setMaxId(l);
        return this;
    }

    String nextPage()
    {
        return nextPageQuery;
    }

    public Query query(String s)
    {
        setQuery(s);
        return this;
    }

    public Query resultType(ResultType resulttype)
    {
        setResultType(resulttype);
        return this;
    }

    public void setCount(int i)
    {
        count = i;
    }

    public void setGeoCode(GeoLocation geolocation, double d, String s)
    {
        geocode = (new StringBuilder()).append(geolocation.getLatitude()).append(",").append(geolocation.getLongitude()).append(",").append(d).append(s).toString();
    }

    public void setGeoCode(GeoLocation geolocation, double d, Unit unit)
    {
        geocode = (new StringBuilder()).append(geolocation.getLatitude()).append(",").append(geolocation.getLongitude()).append(",").append(d).append(unit.name()).toString();
    }

    public void setLang(String s)
    {
        lang = s;
    }

    public void setLocale(String s)
    {
        locale = s;
    }

    public void setMaxId(long l)
    {
        maxId = l;
    }

    public void setQuery(String s)
    {
        query = s;
    }

    public void setResultType(ResultType resulttype)
    {
        resultType = resulttype;
    }

    public void setSince(String s)
    {
        since = s;
    }

    public void setSinceId(long l)
    {
        sinceId = l;
    }

    public void setUntil(String s)
    {
        until = s;
    }

    public Query since(String s)
    {
        setSince(s);
        return this;
    }

    public Query sinceId(long l)
    {
        setSinceId(l);
        return this;
    }

    public String toString()
    {
        return (new StringBuilder()).append("Query{query='").append(query).append('\'').append(", lang='").append(lang).append('\'').append(", locale='").append(locale).append('\'').append(", maxId=").append(maxId).append(", count=").append(count).append(", since='").append(since).append('\'').append(", sinceId=").append(sinceId).append(", geocode='").append(geocode).append('\'').append(", until='").append(until).append('\'').append(", resultType='").append(resultType).append('\'').append(", nextPageQuery='").append(nextPageQuery).append('\'').append('}').toString();
    }

    public Query until(String s)
    {
        setUntil(s);
        return this;
    }

    static 
    {
        MILES = Unit.mi;
        KILOMETERS = Unit.km;
        MIXED = ResultType.mixed;
        POPULAR = ResultType.popular;
        RECENT = ResultType.recent;
    }

    private class ResultType extends Enum
    {

        private static final ResultType $VALUES[];
        public static final ResultType mixed;
        public static final ResultType popular;
        public static final ResultType recent;

        public static ResultType valueOf(String s)
        {
            return (ResultType)Enum.valueOf(twitter4j/Query$ResultType, s);
        }

        public static ResultType[] values()
        {
            return (ResultType[])$VALUES.clone();
        }

        static 
        {
            popular = new ResultType("popular", 0);
            mixed = new ResultType("mixed", 1);
            recent = new ResultType("recent", 2);
            ResultType aresulttype[] = new ResultType[3];
            aresulttype[0] = popular;
            aresulttype[1] = mixed;
            aresulttype[2] = recent;
            $VALUES = aresulttype;
        }

        private ResultType(String s, int i)
        {
            super(s, i);
        }
    }


    private class Unit extends Enum
    {

        private static final Unit $VALUES[];
        public static final Unit km;
        public static final Unit mi;

        public static Unit valueOf(String s)
        {
            return (Unit)Enum.valueOf(twitter4j/Query$Unit, s);
        }

        public static Unit[] values()
        {
            return (Unit[])$VALUES.clone();
        }

        static 
        {
            mi = new Unit("mi", 0);
            km = new Unit("km", 1);
            Unit aunit[] = new Unit[2];
            aunit[0] = mi;
            aunit[1] = km;
            $VALUES = aunit;
        }

        private Unit(String s, int i)
        {
            super(s, i);
        }
    }

}
