// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View;
import java.lang.ref.WeakReference;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.millennialmedia.android:
//            MMSDK, Utils, BridgeMMDevice, MMLog

class AdProperties
{

    private static final String b = com/millennialmedia/android/AdProperties.getName();
    WeakReference a;

    AdProperties(Context context)
    {
        a = new WeakReference(context);
    }

    private JSONObject d()
    {
        JSONObject jsonobject = new JSONObject();
        boolean flag;
        if (a().checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        jsonobject.put("android.permission.ACCESS_FINE_LOCATION", flag);
        return jsonobject;
    }

    private JSONObject e()
    {
        JSONObject jsonobject = new JSONObject();
        jsonobject.put("height", b());
        jsonobject.put("width", c());
        return jsonobject;
    }

    private JSONObject f()
    {
        JSONObject jsonobject = new JSONObject();
        Context context = a();
        jsonobject.put("sms", Boolean.parseBoolean(MMSDK.t(context)));
        jsonobject.put("tel", Boolean.parseBoolean(MMSDK.u(context)));
        jsonobject.put("calendar", MMSDK.b());
        jsonobject.put("storePicture", false);
        jsonobject.put("inlineVideo", true);
        return jsonobject;
    }

    Context a()
    {
        return (Context)a.get();
    }

    String b()
    {
        DisplayMetrics displaymetrics = a().getResources().getDisplayMetrics();
        return String.valueOf((int)((float)displaymetrics.heightPixels / displaymetrics.density));
    }

    String c()
    {
        DisplayMetrics displaymetrics = a().getResources().getDisplayMetrics();
        return String.valueOf((int)((float)displaymetrics.widthPixels / displaymetrics.density));
    }

    public JSONObject getAdProperties(View view)
    {
        JSONObject jsonobject = new JSONObject();
        try
        {
            jsonobject.put("screen", e());
            jsonobject.put("ad", Utils.a(view));
            jsonobject.put("do", MMSDK.v(a()));
            jsonobject.put("supports", f());
            jsonobject.put("device", BridgeMMDevice.a(a()));
            jsonobject.put("permissions", d());
            jsonobject.put("maxSize", e());
        }
        catch (JSONException jsonexception)
        {
            MMLog.a(b, "Error when building ad properties", jsonexception);
            return jsonobject;
        }
        return jsonobject;
    }

}
