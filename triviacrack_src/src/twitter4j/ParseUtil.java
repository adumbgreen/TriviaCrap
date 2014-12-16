// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.LinkedBlockingQueue;

// Referenced classes of package twitter4j:
//            TwitterException, JSONException, JSONObject, HTMLEntity, 
//            HttpResponse

final class ParseUtil
{

    private static final Map formatMapQueue = new HashMap();

    private ParseUtil()
    {
        throw new AssertionError();
    }

    public static boolean getBoolean(String s, JSONObject jsonobject)
    {
        String s1 = getRawString(s, jsonobject);
        if (s1 == null || "null".equals(s1))
        {
            return false;
        } else
        {
            return Boolean.valueOf(s1).booleanValue();
        }
    }

    public static Date getDate(String s, String s1)
    {
        LinkedBlockingQueue linkedblockingqueue = (LinkedBlockingQueue)formatMapQueue.get(s1);
        LinkedBlockingQueue linkedblockingqueue2;
        SimpleDateFormat simpledateformat;
        SimpleDateFormat simpledateformat2;
        Exception exception;
        InterruptedException interruptedexception;
        ParseException parseexception;
        Date date;
        InterruptedException interruptedexception1;
        if (linkedblockingqueue == null)
        {
            LinkedBlockingQueue linkedblockingqueue1 = new LinkedBlockingQueue();
            formatMapQueue.put(s1, linkedblockingqueue1);
            linkedblockingqueue2 = linkedblockingqueue1;
        } else
        {
            linkedblockingqueue2 = linkedblockingqueue;
        }
        simpledateformat = (SimpleDateFormat)linkedblockingqueue2.poll();
        if (simpledateformat == null)
        {
            SimpleDateFormat simpledateformat1 = new SimpleDateFormat(s1, Locale.US);
            simpledateformat1.setTimeZone(TimeZone.getTimeZone("UTC"));
            simpledateformat2 = simpledateformat1;
        } else
        {
            simpledateformat2 = simpledateformat;
        }
        date = simpledateformat2.parse(s);
        try
        {
            linkedblockingqueue2.put(simpledateformat2);
        }
        // Misplaced declaration of an exception variable
        catch (InterruptedException interruptedexception1)
        {
            return date;
        }
        return date;
        parseexception;
        throw new TwitterException((new StringBuilder()).append("Unexpected date format(").append(s).append(") returned from twitter.com").toString(), parseexception);
        exception;
        try
        {
            linkedblockingqueue2.put(simpledateformat2);
        }
        // Misplaced declaration of an exception variable
        catch (InterruptedException interruptedexception) { }
        throw exception;
    }

    public static Date getDate(String s, JSONObject jsonobject)
    {
        return getDate(s, jsonobject, "EEE MMM d HH:mm:ss z yyyy");
    }

    public static Date getDate(String s, JSONObject jsonobject, String s1)
    {
        String s2 = getUnescapedString(s, jsonobject);
        if ("null".equals(s2) || s2 == null)
        {
            return null;
        } else
        {
            return getDate(s2, s1);
        }
    }

    public static double getDouble(String s, JSONObject jsonobject)
    {
        String s1 = getRawString(s, jsonobject);
        if (s1 == null || "".equals(s1) || "null".equals(s1))
        {
            return -1D;
        } else
        {
            return Double.valueOf(s1).doubleValue();
        }
    }

    public static int getInt(String s)
    {
        if (s == null || "".equals(s) || "null".equals(s))
        {
            return -1;
        }
        int i;
        try
        {
            i = Integer.valueOf(s).intValue();
        }
        catch (NumberFormatException numberformatexception)
        {
            return -1;
        }
        return i;
    }

    public static int getInt(String s, JSONObject jsonobject)
    {
        return getInt(getRawString(s, jsonobject));
    }

    public static long getLong(String s)
    {
        if (s == null || "".equals(s) || "null".equals(s))
        {
            return -1L;
        }
        if (s.endsWith("+"))
        {
            return 1L + Long.valueOf(s.substring(0, -1 + s.length())).longValue();
        } else
        {
            return Long.valueOf(s).longValue();
        }
    }

    public static long getLong(String s, JSONObject jsonobject)
    {
        return getLong(getRawString(s, jsonobject));
    }

    public static String getRawString(String s, JSONObject jsonobject)
    {
        if (jsonobject.isNull(s))
        {
            return null;
        }
        String s1;
        try
        {
            s1 = jsonobject.getString(s);
        }
        catch (JSONException jsonexception)
        {
            return null;
        }
        return s1;
    }

    static String getURLDecodedString(String s, JSONObject jsonobject)
    {
        String s1 = getRawString(s, jsonobject);
        if (s1 != null)
        {
            String s2;
            try
            {
                s2 = URLDecoder.decode(s1, "UTF-8");
            }
            catch (UnsupportedEncodingException unsupportedencodingexception)
            {
                return s1;
            }
            s1 = s2;
        }
        return s1;
    }

    static String getUnescapedString(String s, JSONObject jsonobject)
    {
        return HTMLEntity.unescape(getRawString(s, jsonobject));
    }

    public static Date parseTrendsDate(String s)
    {
        switch (s.length())
        {
        default:
            return getDate(s, "EEE, d MMM yyyy HH:mm:ss z");

        case 10: // '\n'
            return new Date(1000L * Long.parseLong(s));

        case 20: // '\024'
            return getDate(s, "yyyy-MM-dd'T'HH:mm:ss'Z'");
        }
    }

    public static int toAccessLevel(HttpResponse httpresponse)
    {
        byte byte0;
        if (httpresponse == null)
        {
            byte0 = -1;
        } else
        {
            String s = httpresponse.getResponseHeader("X-Access-Level");
            byte0 = 0;
            if (s != null)
            {
                switch (s.length())
                {
                default:
                    return 0;

                case 4: // '\004'
                    return 1;

                case 10: // '\n'
                    return 2;

                case 25: // '\031'
                    return 3;

                case 26: // '\032'
                    return 3;
                }
            }
        }
        return byte0;
    }

}
