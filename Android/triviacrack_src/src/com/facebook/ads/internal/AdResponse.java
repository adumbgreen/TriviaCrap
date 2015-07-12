// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.ads.internal;

import android.content.Context;
import com.facebook.ads.AdError;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package com.facebook.ads.internal:
//            AdType, HtmlAdDataModel, AdInvalidationUtils, NativeAdDataModel, 
//            AdDataModel

public class AdResponse
{

    private static final int DEFAULT_MIN_VIEWABILITY_PERCENTAGE = 10;
    private static final int DEFAULT_REFRESH_INTERVAL_SECONDS = 0;
    private static final int DEFAULT_REFRESH_THRESHOLD_SECONDS = 20;
    private final List dataModels;
    private final AdError error;
    private final int refreshIntervalMillis;
    private final int refreshThresholdMillis;
    private final int viewabilityThreshold;

    private AdResponse(int i, int j, int k, List list, AdError aderror)
    {
        refreshIntervalMillis = i;
        refreshThresholdMillis = j;
        viewabilityThreshold = k;
        dataModels = list;
        error = aderror;
    }

    public static AdResponse parseResponse(Context context, JSONObject jsonobject)
    {
        int i = 1000 * jsonobject.optInt("refresh", 0);
        int j = 1000 * jsonobject.optInt("refresh_threshold", 20);
        int k = jsonobject.optInt("min_viewability_percentage", 10);
        JSONObject jsonobject1 = jsonobject.optJSONObject("reason");
        AdError aderror;
        int l;
        ArrayList arraylist;
        JSONArray jsonarray;
        AdError aderror1;
        int i1;
        int j1;
        JSONObject jsonobject2;
        Object obj;
        if (jsonobject1 != null)
        {
            aderror = new AdError(jsonobject1.optInt("code"), jsonobject1.optString("message"));
        } else
        {
            aderror = null;
        }
        l = jsonobject.optInt("ad_type");
        arraylist = new ArrayList();
        jsonarray = jsonobject.optJSONArray("ads");
        if (jsonarray == null) goto _L2; else goto _L1
_L1:
        i1 = jsonarray.length();
        j1 = 0;
        if (i1 <= 0) goto _L2; else goto _L3
_L3:
        while (j1 < jsonarray.length()) 
        {
            jsonobject2 = jsonarray.optJSONObject(j1);
            if (jsonobject2 != null)
            {
                if (l == AdType.HTML.getValue())
                {
                    obj = HtmlAdDataModel.fromJSONObject(jsonobject2.optJSONObject("data"));
                } else
                if (l == AdType.NATIVE.getValue())
                {
                    obj = NativeAdDataModel.fromJSONObject(jsonobject2.optJSONObject("metadata"));
                } else
                {
                    obj = null;
                }
                if (obj != null && !AdInvalidationUtils.shouldInvalidate(context, ((AdDataModel) (obj))))
                {
                    arraylist.add(obj);
                }
            }
            j1++;
        }
        if (!arraylist.isEmpty()) goto _L2; else goto _L4
_L4:
        aderror1 = AdError.NO_FILL;
_L6:
        return new AdResponse(i, j, k, arraylist, aderror1);
_L2:
        aderror1 = aderror;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public AdDataModel getDataModel()
    {
        if (dataModels == null || dataModels.isEmpty())
        {
            return null;
        } else
        {
            return (AdDataModel)dataModels.get(0);
        }
    }

    public AdError getError()
    {
        return error;
    }

    public int getRefreshIntervalMillis()
    {
        return refreshIntervalMillis;
    }

    public int getRefreshThresholdMillis()
    {
        return refreshThresholdMillis;
    }

    public int getViewabilityThreshold()
    {
        return viewabilityThreshold;
    }
}
