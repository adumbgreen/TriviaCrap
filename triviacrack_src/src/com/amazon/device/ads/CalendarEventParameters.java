// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

// Referenced classes of package com.amazon.device.ads:
//            StringUtils

class CalendarEventParameters
{

    public static final String DATE_FORMAT = "yyyy-MM-dd'T'HH:mmZZZZZ";
    public static final List DATE_FORMATS = Collections.unmodifiableList(new ArrayList() {

            
            {
                add("yyyy-MM-dd'T'HH:mmZZZZZ");
                add("yyyy-MM-dd'T'HH:mmZ");
                add("yyyy-MM-dd'T'HH:mm");
                add("yyyy-MM-dd");
            }
    });
    private String description;
    private Date end;
    private String location;
    private Date start;
    private String summary;

    public CalendarEventParameters(String s, String s1, String s2, String s3, String s4)
    {
        if (StringUtils.isNullOrEmpty(s))
        {
            throw new IllegalArgumentException("No description for event");
        }
        description = s;
        location = s1;
        summary = s2;
        if (StringUtils.isNullOrEmpty(s3))
        {
            throw new IllegalArgumentException("No start date for event");
        }
        start = convertToDate(s3);
        if (StringUtils.isNullOrEmpty(s4))
        {
            end = null;
            return;
        } else
        {
            end = convertToDate(s4);
            return;
        }
    }

    private Date convertToDate(String s)
    {
        Iterator iterator = DATE_FORMATS.iterator();
_L1:
        String s1;
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_88;
        }
        s1 = (String)iterator.next();
        Date date1 = (new SimpleDateFormat(s1, Locale.US)).parse(s);
        Date date = date1;
_L2:
        if (date == null)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Could not parse datetime string ").append(s).toString());
        } else
        {
            return date;
        }
        ParseException parseexception;
        parseexception;
          goto _L1
        date = null;
          goto _L2
    }

    public String getDescription()
    {
        return description;
    }

    public Date getEnd()
    {
        return end;
    }

    public String getLocation()
    {
        return location;
    }

    public Date getStart()
    {
        return start;
    }

    public String getSummary()
    {
        return summary;
    }

}
