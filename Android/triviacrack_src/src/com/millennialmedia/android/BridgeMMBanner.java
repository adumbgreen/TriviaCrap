// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import java.lang.ref.WeakReference;
import java.util.Map;

// Referenced classes of package com.millennialmedia.android:
//            MMJSObject, MMSDK, MMWebView, MMJSResponse, 
//            DTOResizeParameters

class BridgeMMBanner extends MMJSObject
{

    BridgeMMBanner()
    {
    }

    int a(Context context)
    {
        return Integer.parseInt(MMSDK.p(context));
    }

    MMJSResponse a(String s, Map map)
    {
        boolean flag = "resize".equals(s);
        MMJSResponse mmjsresponse = null;
        if (flag)
        {
            mmjsresponse = resize(map);
        }
        return mmjsresponse;
    }

    int b(Context context)
    {
        return Integer.parseInt(MMSDK.o(context));
    }

    public MMJSResponse resize(Map map)
    {
        MMWebView mmwebview = (MMWebView)c.get();
        if (mmwebview != null)
        {
            if (mmwebview.w())
            {
                return MMJSResponse.b("State is currently resized");
            }
            String s = (String)map.get("width");
            String s1 = (String)map.get("height");
            int i;
            int j;
            String s2;
            String s3;
            String s4;
            int k;
            boolean flag;
            int l;
            boolean flag1;
            Context context;
            DisplayMetrics displaymetrics;
            int i1;
            int j1;
            if (!TextUtils.isEmpty(s))
            {
                i = (int)Float.parseFloat(s);
            } else
            {
                i = 0;
            }
            if (!TextUtils.isEmpty(s1))
            {
                j = (int)Float.parseFloat(s1);
            } else
            {
                j = 0;
            }
            s2 = (String)map.get("customClosePosition");
            s3 = (String)map.get("offsetX");
            s4 = (String)map.get("offsetY");
            if (!TextUtils.isEmpty(s4))
            {
                k = (int)Float.parseFloat(s4);
            } else
            {
                k = 0;
            }
            flag = TextUtils.isEmpty(s3);
            l = 0;
            if (!flag)
            {
                l = (int)Float.parseFloat(s3);
            }
            flag1 = Boolean.parseBoolean((String)map.get("allowOffscreen"));
            context = mmwebview.getContext();
            displaymetrics = context.getResources().getDisplayMetrics();
            i1 = b(context);
            j1 = a(context);
            mmwebview.a(new DTOResizeParameters(displaymetrics.density, i, j, s2, l, k, flag1, i1, j1));
            return MMJSResponse.a();
        } else
        {
            return null;
        }
    }
}
