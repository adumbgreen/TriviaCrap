// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk;

import com.lifestreet.android.lsmsdk.commons.StringUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.lifestreet.android.lsmsdk:
//            AbstractSlotResponse, AdsParams, SlotContext

public final class SlotHtmlResponse extends AbstractSlotResponse
{

    private static final Pattern sContentPattern = Pattern.compile("(?i)[\\s]*content[\\s]*=[\\s]*\"([^\"]+)\"");
    private static final Pattern sMetaPattern = Pattern.compile("(?mi)<meta[\\s]+([^>]+)>");
    private static final Pattern sNamePattern = Pattern.compile("(?i)[\\s]*name[\\s]*=[\\s]*\"([^\"]+)\"");
    private final String mResponseBody;

    public SlotHtmlResponse(SlotContext slotcontext, String s)
    {
        super(slotcontext);
        mResponseBody = s;
    }

    private Map getNetworkParameters(Map map)
    {
        HashMap hashmap = new HashMap();
        Iterator iterator = map.keySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            String s = (String)iterator.next();
            String s1 = (String)map.get(s);
            if (s != null && s1 != null && s.startsWith("Parameter-"))
            {
                hashmap.put(s.substring("Parameter-".length()).toUpperCase(Locale.US), s1);
            }
        } while (true);
        hashmap.put("HTML", mResponseBody);
        return hashmap;
    }

    private String getNetworkType(Map map)
    {
        String s = (String)map.get("NetworkType");
        String s1;
        if (s != null)
        {
            s1 = s.toUpperCase(Locale.US);
        } else
        {
            s1 = "LSM";
        }
        if ("LSM".equalsIgnoreCase(s1) && StringUtils.containsIgnoreCase(mResponseBody, "mraid"))
        {
            s1 = "MRAID";
        }
        return s1;
    }

    private AdsParams parseAdsParams(Map map)
    {
        String s = (String)map.get("requestId");
        if (s != null)
        {
            return new AdsParams(s);
        } else
        {
            return null;
        }
    }

    private Map parseHtmlMetaParams(String s)
    {
        HashMap hashmap = new HashMap();
        Matcher matcher = sMetaPattern.matcher(s);
        do
        {
            if (!matcher.find())
            {
                break;
            }
            String s1 = matcher.group(1);
            Matcher matcher1 = sNamePattern.matcher(s1);
            String s2;
            Matcher matcher2;
            String s3;
            if (matcher1.find())
            {
                s2 = matcher1.group(1);
            } else
            {
                s2 = null;
            }
            matcher2 = sContentPattern.matcher(s1);
            if (matcher2.find())
            {
                s3 = matcher2.group(1);
            } else
            {
                s3 = null;
            }
            if (s2 != null && s3 != null)
            {
                hashmap.put(s2.trim(), s3.trim());
            }
        } while (true);
        return hashmap;
    }

    private List parseNetworks(Map map)
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(createNetworkInstanceFromMap(map, getNetworkType(map), getNetworkParameters(map)));
        return arraylist;
    }

    public void parse()
    {
        Map map = parseHtmlMetaParams(mResponseBody);
        setNetworks(parseNetworks(map));
        setAdsParams(parseAdsParams(map));
    }

}
