// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.nativeads;

import android.content.Context;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Numbers;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

// Referenced classes of package com.mopub.nativeads:
//            a, z, NativeErrorCode

class q extends a
{

    private final Context a;
    private final String b;
    private final CustomEventNative.CustomEventNativeListener c;

    q(Context context, String s, CustomEventNative.CustomEventNativeListener customeventnativelistener)
    {
        a = context;
        b = s;
        c = customeventnativelistener;
    }

    static CustomEventNative.CustomEventNativeListener a(q q1)
    {
        return q1.c;
    }

    private void a(z z1, Object obj)
    {
        MoPubCustomEventNative._cls1.a[z1.ordinal()];
        JVM INSTR tableswitch 1 9: default 60
    //                   1 86
    //                   2 129
    //                   3 138
    //                   4 191
    //                   5 144
    //                   6 153
    //                   7 162
    //                   8 171
    //                   9 180;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10
_L1:
        MoPubLog.d((new StringBuilder()).append("Unable to add JSON key to internal mapping: ").append(z1.a).toString());
        return;
_L2:
        try
        {
            a((String)obj);
            return;
        }
        catch (ClassCastException classcastexception)
        {
            if (!z1.b)
            {
                MoPubLog.d((new StringBuilder()).append("Ignoring class cast exception for optional key: ").append(z1.a).toString());
                return;
            } else
            {
                throw classcastexception;
            }
        }
_L3:
        b((String)obj);
        return;
_L4:
        a(obj);
        return;
_L6:
        c((String)obj);
        return;
_L7:
        d((String)obj);
        return;
_L8:
        e((String)obj);
        return;
_L9:
        f((String)obj);
        return;
_L10:
        a(Numbers.parseDouble(obj));
        return;
_L5:
    }

    private void a(Object obj)
    {
        if (!(obj instanceof JSONArray))
        {
            throw new ClassCastException("Expected impression trackers of type JSONArray.");
        }
        JSONArray jsonarray = (JSONArray)obj;
        int i = 0;
        while (i < jsonarray.length()) 
        {
            try
            {
                g(jsonarray.getString(i));
            }
            catch (JSONException jsonexception)
            {
                MoPubLog.d("Unable to parse impression trackers.");
            }
            i++;
        }
    }

    private boolean a(JSONObject jsonobject)
    {
        HashSet hashset = new HashSet();
        for (Iterator iterator = jsonobject.keys(); iterator.hasNext(); hashset.add(iterator.next())) { }
        return hashset.containsAll(z.c);
    }

    private boolean h(String s)
    {
        return s != null && s.toLowerCase().endsWith("image");
    }

    void a()
    {
        if (b == null)
        {
            throw new IllegalArgumentException("Json String cannot be null");
        }
        JSONObject jsonobject = new JSONObject(new JSONTokener(b));
        if (!a(jsonobject))
        {
            throw new IllegalArgumentException("JSONObject did not contain required keys.");
        }
        for (Iterator iterator = jsonobject.keys(); iterator.hasNext();)
        {
            String s = (String)iterator.next();
            z z1 = z.a(s);
            if (z1 != null)
            {
                try
                {
                    a(z1, jsonobject.opt(s));
                }
                catch (ClassCastException classcastexception)
                {
                    throw new IllegalArgumentException((new StringBuilder()).append("JSONObject key (").append(s).append(") contained unexpected value.").toString());
                }
            } else
            {
                a(s, jsonobject.opt(s));
            }
        }

        a(a, c(), new CustomEventNative.ImageListener() {

            final q a;

            public void onImagesCached()
            {
                q.a(a).onNativeAdLoaded(a);
            }

            public void onImagesFailedToCache(NativeErrorCode nativeerrorcode)
            {
                q.a(a).onNativeAdFailed(nativeerrorcode);
            }

            
            {
                a = q.this;
                super();
            }
        });
    }

    List b()
    {
        ArrayList arraylist = new ArrayList(getExtras().size());
        Iterator iterator = getExtras().entrySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            if (h((String)entry.getKey()) && (entry.getValue() instanceof String))
            {
                arraylist.add((String)entry.getValue());
            }
        } while (true);
        return arraylist;
    }

    List c()
    {
        ArrayList arraylist = new ArrayList();
        if (getMainImageUrl() != null)
        {
            arraylist.add(getMainImageUrl());
        }
        if (getIconImageUrl() != null)
        {
            arraylist.add(getIconImageUrl());
        }
        arraylist.addAll(b());
        return arraylist;
    }
}
