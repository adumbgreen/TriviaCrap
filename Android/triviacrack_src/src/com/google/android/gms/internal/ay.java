// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            fx, aw, be

public final class ay
{

    public final List a;
    public final long b;
    public final List c;
    public final List d;
    public final List e;
    public final String f;
    public final long g;
    public int h;
    public int i;

    public ay(String s)
    {
        JSONObject jsonobject = new JSONObject(s);
        if (fx.a(2))
        {
            fx.d((new StringBuilder()).append("Mediation Response JSON: ").append(jsonobject.toString(2)).toString());
        }
        JSONArray jsonarray = jsonobject.getJSONArray("ad_networks");
        ArrayList arraylist = new ArrayList(jsonarray.length());
        int j = -1;
        for (int k = 0; k < jsonarray.length(); k++)
        {
            aw aw1 = new aw(jsonarray.getJSONObject(k));
            arraylist.add(aw1);
            if (j < 0 && a(aw1))
            {
                j = k;
            }
        }

        h = j;
        i = jsonarray.length();
        a = Collections.unmodifiableList(arraylist);
        f = jsonobject.getString("qdata");
        JSONObject jsonobject1 = jsonobject.optJSONObject("settings");
        if (jsonobject1 != null)
        {
            b = jsonobject1.optLong("ad_network_timeout_millis", -1L);
            c = be.a(jsonobject1, "click_urls");
            d = be.a(jsonobject1, "imp_urls");
            e = be.a(jsonobject1, "nofill_urls");
            long l = jsonobject1.optLong("refresh", -1L);
            long l1;
            if (l > 0L)
            {
                l1 = l * 1000L;
            } else
            {
                l1 = -1L;
            }
            g = l1;
            return;
        } else
        {
            b = -1L;
            c = null;
            d = null;
            e = null;
            g = -1L;
            return;
        }
    }

    private boolean a(aw aw1)
    {
        for (Iterator iterator = aw1.c.iterator(); iterator.hasNext();)
        {
            if (((String)iterator.next()).equals("com.google.ads.mediation.admob.AdMobAdapter"))
            {
                return true;
            }
        }

        return false;
    }
}
