// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.ads.internal;

import android.content.Context;
import android.net.Uri;
import android.util.Log;
import com.facebook.ads.internal.action.AdAction;
import com.facebook.ads.internal.action.AdActionFactory;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.facebook.ads.internal:
//            AdDataModel, AdInvalidationBehavior, AdInvalidationUtils, AdUtilities, 
//            OpenUrlTask

public class NativeAdDataModel
    implements AdDataModel
{

    private static final String TAG = com/facebook/ads/internal/NativeAdDataModel.getSimpleName();
    private final Uri adCommand;
    private final String body;
    private final String callToAction;
    private boolean clickLogged;
    private final String clickReportUrl;
    private final Collection detectionStrings;
    private final com.facebook.ads.NativeAd.Image icon;
    private final com.facebook.ads.NativeAd.Image image;
    private boolean impressionLogged;
    private final String impressionReportUrl;
    private final AdInvalidationBehavior invalidationBehavior;
    private final String socialContext;
    private final com.facebook.ads.NativeAd.Rating starRating;
    private final String title;

    private NativeAdDataModel(Uri uri, String s, String s1, String s2, String s3, com.facebook.ads.NativeAd.Image image1, com.facebook.ads.NativeAd.Image image2, 
            com.facebook.ads.NativeAd.Rating rating, String s4, String s5, AdInvalidationBehavior adinvalidationbehavior, Collection collection)
    {
        adCommand = uri;
        title = s;
        body = s1;
        callToAction = s2;
        socialContext = s3;
        icon = image1;
        image = image2;
        starRating = rating;
        impressionReportUrl = s4;
        clickReportUrl = s5;
        invalidationBehavior = adinvalidationbehavior;
        detectionStrings = collection;
    }

    public static NativeAdDataModel fromJSONObject(JSONObject jsonobject)
    {
        if (jsonobject == null)
        {
            return null;
        }
        Uri uri = Uri.parse(jsonobject.optString("fbad_command"));
        String s = jsonobject.optString("title");
        String s1 = jsonobject.optString("body");
        String s2 = jsonobject.optString("call_to_action");
        String s3 = jsonobject.optString("social_context");
        com.facebook.ads.NativeAd.Image image1 = com.facebook.ads.NativeAd.Image.fromJSONObject(jsonobject.optJSONObject("icon"));
        com.facebook.ads.NativeAd.Image image2 = com.facebook.ads.NativeAd.Image.fromJSONObject(jsonobject.optJSONObject("image"));
        com.facebook.ads.NativeAd.Rating rating = com.facebook.ads.NativeAd.Rating.fromJSONObject(jsonobject.optJSONObject("star_rating"));
        String s4 = jsonobject.optString("impression_report_url");
        String s5 = jsonobject.optString("click_report_url");
        AdInvalidationBehavior adinvalidationbehavior = AdInvalidationBehavior.fromString(jsonobject.optString("invalidation_behavior"));
        JSONArray jsonarray;
        try
        {
            jsonarray = new JSONArray(jsonobject.optString("detection_strings"));
        }
        catch (JSONException jsonexception)
        {
            jsonexception.printStackTrace();
            jsonarray = null;
        }
        return new NativeAdDataModel(uri, s, s1, s2, s3, image1, image2, rating, s4, s5, adinvalidationbehavior, AdInvalidationUtils.parseDetectionStrings(jsonarray));
    }

    public String getBody()
    {
        return body;
    }

    public String getCallToAction()
    {
        return callToAction;
    }

    public Collection getDetectionStrings()
    {
        return detectionStrings;
    }

    public com.facebook.ads.NativeAd.Image getIcon()
    {
        return icon;
    }

    public com.facebook.ads.NativeAd.Image getImage()
    {
        return image;
    }

    public AdInvalidationBehavior getInvalidationBehavior()
    {
        return invalidationBehavior;
    }

    public String getSocialContext()
    {
        return socialContext;
    }

    public com.facebook.ads.NativeAd.Rating getStarRating()
    {
        return starRating;
    }

    public String getTitle()
    {
        return title;
    }

    public void handleClick(Context context, Map map)
    {
        AdAction adaction;
        if (!clickLogged)
        {
            HashMap hashmap = new HashMap();
            hashmap.put("touch", AdUtilities.jsonEncode(map));
            OpenUrlTask openurltask = new OpenUrlTask(hashmap);
            String as[] = new String[1];
            as[0] = clickReportUrl;
            openurltask.execute(as);
            clickLogged = true;
            AdUtilities.displayDebugMessage(context, "Click logged");
        }
        adaction = AdActionFactory.getAdAction(context, adCommand);
        if (adaction == null)
        {
            break MISSING_BLOCK_LABEL_92;
        }
        adaction.execute(null);
        return;
        Exception exception;
        exception;
        Log.e(TAG, "Error executing action", exception);
        return;
    }

    public boolean isValid()
    {
        return title != null && title.length() > 0 && callToAction != null && callToAction.length() > 0 && icon != null && image != null;
    }

    public void logImpression()
    {
        if (!impressionLogged)
        {
            OpenUrlTask openurltask = new OpenUrlTask();
            String as[] = new String[1];
            as[0] = impressionReportUrl;
            openurltask.execute(as);
            impressionLogged = true;
        }
    }

}
