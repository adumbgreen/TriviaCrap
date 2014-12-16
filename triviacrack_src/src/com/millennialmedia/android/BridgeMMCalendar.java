// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.content.Context;
import android.content.Intent;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import org.apache.http.impl.cookie.DateParseException;
import org.apache.http.impl.cookie.DateUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.millennialmedia.android:
//            MMJSObject, MMLog, MMJSResponse

class BridgeMMCalendar extends MMJSObject
{

    private static final String a = com/millennialmedia/android/BridgeMMCalendar.getName();
    private static final String d[] = {
        "yyyy-MM-dd'T'HH:mmZZZ", "yyyy-MM-dd'T'HH:mm:ssZZZ"
    };
    private static final SimpleDateFormat e = new SimpleDateFormat("yyyyMMdd'T'HHmmss");

    BridgeMMCalendar()
    {
    }

    private String a(int i)
    {
        switch (i)
        {
        default:
            return null;

        case 1: // '\001'
            return "MO";

        case 2: // '\002'
            return "TU";

        case 3: // '\003'
            return "WE";

        case 4: // '\004'
            return "TH";

        case 5: // '\005'
            return "FR";

        case 6: // '\006'
            return "SA";

        case 7: // '\007'
            return "SU";
        }
    }

    private String a(JSONObject jsonobject)
    {
        StringBuilder stringbuilder;
        StringBuilder stringbuilder1;
        stringbuilder = new StringBuilder();
        JSONArray jsonarray;
        int i;
        try
        {
            String s4 = jsonobject.getString("frequency");
            stringbuilder.append("FREQ=").append(s4).append(";");
        }
        catch (JSONException jsonexception)
        {
            MMLog.b(a, "Unable to get calendar event recurrence frequency");
        }
        try
        {
            String s3 = e.format(DateUtils.parseDate(jsonobject.getString("expires"), d));
            stringbuilder.append("UNTIL=").append(s3).append(";");
        }
        catch (DateParseException dateparseexception)
        {
            MMLog.e(a, "Error parsing calendar event recurrence expiration date");
        }
        catch (JSONException jsonexception1)
        {
            MMLog.b(a, "Unable to get calendar event recurrence expiration date");
        }
        jsonarray = jsonobject.getJSONArray("daysInWeek");
        stringbuilder1 = new StringBuilder();
        i = 0;
_L2:
        if (i >= jsonarray.length())
        {
            break; /* Loop/switch isn't completed */
        }
        stringbuilder1.append(a(jsonarray.getInt(i))).append(",");
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        try
        {
            stringbuilder.append("BYDAY=").append(stringbuilder1).append(";");
        }
        catch (JSONException jsonexception2)
        {
            MMLog.b(a, "Unable to get days in week");
        }
        try
        {
            String s2 = jsonobject.getString("daysInMonth").replaceAll("\\[", "").replaceAll("\\]", "");
            stringbuilder.append("BYMONTHDAY=").append(s2).append(";");
        }
        catch (JSONException jsonexception3)
        {
            MMLog.b(a, "Unable to get days in month");
        }
        try
        {
            String s1 = jsonobject.getString("monthsInYear:").replaceAll("\\[", "").replaceAll("\\]", "");
            stringbuilder.append("BYMONTH=").append(s1).append(";");
        }
        catch (JSONException jsonexception4)
        {
            MMLog.b(a, "Unable to get months in year:");
        }
        try
        {
            String s = jsonobject.getString("daysInYear");
            stringbuilder.append("BYYEARDAY=").append(s).append(";");
        }
        catch (JSONException jsonexception5)
        {
            MMLog.b(a, "Unable to get days in year");
        }
        return stringbuilder.toString().toUpperCase();
    }

    MMJSResponse a(String s, Map map)
    {
        boolean flag = "addEvent".equals(s);
        MMJSResponse mmjsresponse = null;
        if (flag)
        {
            mmjsresponse = addEvent(map);
        }
        return mmjsresponse;
    }

    public MMJSResponse addEvent(Map map)
    {
        MMLog.b(a, (new StringBuilder()).append("addEvent parameters: ").append(map).toString());
        if (android.os.Build.VERSION.SDK_INT < 14) goto _L2; else goto _L1
_L1:
        if (map == null || map.get("parameters") == null) goto _L4; else goto _L3
_L3:
        JSONObject jsonobject;
        JSONException jsonexception;
        String s;
        JSONException jsonexception2;
        String s1;
        JSONException jsonexception3;
        String s2;
        JSONException jsonexception4;
        String s3;
        JSONException jsonexception5;
        String s4;
        JSONException jsonexception6;
        String s5;
        JSONException jsonexception7;
        String s6;
        JSONException jsonexception8;
        Date date;
        JSONException jsonexception9;
        Date date1;
        DateParseException dateparseexception;
        Date date2;
        DateParseException dateparseexception1;
        Date date3;
        String s7;
        String s8;
        String s9;
        String s10;
        String s11;
        String s12;
        String s13;
        try
        {
            jsonobject = new JSONObject((String)map.get("parameters"));
        }
        catch (JSONException jsonexception1)
        {
            MMLog.e(a, "Unable to parse calendar addEvent parameters");
            return MMJSResponse.b("Calendar Event Creation Failed.  Invalid parameters");
        }
        s13 = jsonobject.getString("description");
        s = s13;
_L14:
        s12 = jsonobject.getString("summary");
        s1 = s12;
_L5:
        s11 = jsonobject.getString("transparency");
        s2 = s11;
_L6:
        s10 = jsonobject.getString("reminder");
        s3 = s10;
_L7:
        s9 = jsonobject.getString("location");
        s4 = s9;
_L8:
        s8 = jsonobject.getString("status");
        s5 = s8;
_L9:
        s7 = a(jsonobject.getJSONObject("recurrence"));
        s6 = s7;
_L10:
        date3 = DateUtils.parseDate(jsonobject.getString("start"), d);
        date = date3;
_L11:
        date2 = DateUtils.parseDate(jsonobject.getString("end"), d);
        date1 = date2;
_L12:
        MMLog.b(a, String.format("Creating calendar event: title: %s, location: %s, start: %s, end: %s, status: %s, summary: %s, rrule: %s", new Object[] {
            s, s4, date, date1, s5, s1, s6
        }));
        if (s == null || date == null)
        {
            MMLog.e(a, "Description and start must be provided to create calendar event.");
            return MMJSResponse.b("Calendar Event Creation Failed.  Minimum parameters not provided");
        }
        break MISSING_BLOCK_LABEL_463;
        jsonexception;
        MMLog.e(a, "Unable to get calendar event description");
        s = null;
        continue; /* Loop/switch isn't completed */
        jsonexception2;
        MMLog.b(a, "Unable to get calendar event description");
        s1 = null;
          goto _L5
        jsonexception3;
        MMLog.b(a, "Unable to get calendar event transparency");
        s2 = null;
          goto _L6
        jsonexception4;
        MMLog.b(a, "Unable to get calendar event reminder");
        s3 = null;
          goto _L7
        jsonexception5;
        MMLog.b(a, "Unable to get calendar event location");
        s4 = null;
          goto _L8
        jsonexception6;
        MMLog.b(a, "Unable to get calendar event status");
        s5 = null;
          goto _L9
        jsonexception7;
        MMLog.b(a, "Unable to get calendar event recurrence");
        s6 = null;
          goto _L10
        dateparseexception1;
        MMLog.e(a, "Error parsing calendar event start date");
        date = null;
          goto _L11
        jsonexception8;
        MMLog.e(a, "Unable to get calendar event start date");
        date = null;
          goto _L11
        dateparseexception;
        MMLog.e(a, "Error parsing calendar event end date");
        date1 = null;
          goto _L12
        jsonexception9;
        MMLog.b(a, "Unable to get calendar event end date");
        date1 = null;
          goto _L12
        Intent intent = (new Intent("android.intent.action.INSERT")).setData(android.provider.CalendarContract.Events.CONTENT_URI);
        if (date != null)
        {
            intent.putExtra("beginTime", date.getTime());
        }
        if (date1 != null)
        {
            intent.putExtra("endTime", date1.getTime());
        }
        if (s != null)
        {
            intent.putExtra("title", s);
        }
        if (s1 != null)
        {
            intent.putExtra("description", s1);
        }
        if (s4 != null)
        {
            intent.putExtra("eventLocation", s4);
        }
        if (s6 != null)
        {
            intent.putExtra("rrule", s6);
        }
        if (s5 != null)
        {
            MMLog.d(a, "Calendar addEvent does not support status");
        }
        if (s2 != null)
        {
            MMLog.d(a, "Calendar addEvent does not support transparency");
        }
        if (s3 != null)
        {
            MMLog.d(a, "Calendar addEvent does not support reminder");
        }
        Context context = (Context)b.get();
        if (context != null)
        {
            Utils.IntentUtils.c(context, intent);
            MMSDK.Event.a(context, "calendar", b((String)map.get("PROPERTY_EXPANDING")));
            return MMJSResponse.a("Calendar Event Created");
        }
_L4:
        return null;
_L2:
        return MMJSResponse.b("Not supported");
        if (true) goto _L14; else goto _L13
_L13:
    }

}
