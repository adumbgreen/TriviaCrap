// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.ads.internal;

import android.content.Intent;
import android.os.Bundle;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.facebook.ads.internal:
//            AdDataModel, AdInvalidationBehavior, AdInvalidationUtils

public class HtmlAdDataModel
    implements AdDataModel
{

    private static final String ACTIVATION_COMMAND_KEY = "activation_command";
    private static final String DETECTION_STRINGS_KEY = "detection_strings";
    private static final String INVALIDATION_BEHAVIOR_KEY = "invalidation_behavior";
    private static final String MARKUP_KEY = "markup";
    private static final String NATIVE_IMPRESSION_URL = "native_impression_report_url";
    private static final String SECONDARY_ACTIVATION_COMMAND_KEY = "secondary_activation_command";
    private static final String SECONDARY_MARKUP_KEY = "secondary_markup";
    private final String activationCommand;
    private final Collection detectionStrings;
    private final AdInvalidationBehavior invalidationBehavior;
    private final String markup;
    private final String nativeImpressionUrl;
    private final String secondaryActivationCommand;
    private final String secondaryMarkup;

    private HtmlAdDataModel(String s, String s1, String s2, String s3, String s4, AdInvalidationBehavior adinvalidationbehavior, Collection collection)
    {
        markup = s;
        secondaryMarkup = s1;
        activationCommand = s2;
        secondaryActivationCommand = s3;
        nativeImpressionUrl = s4;
        invalidationBehavior = adinvalidationbehavior;
        detectionStrings = collection;
    }

    public static HtmlAdDataModel fromBundle(Bundle bundle)
    {
        return new HtmlAdDataModel(bundle.getString("markup"), null, bundle.getString("activation_command"), null, bundle.getString("native_impression_report_url"), AdInvalidationBehavior.NONE, null);
    }

    public static HtmlAdDataModel fromIntentExtra(Intent intent)
    {
        return new HtmlAdDataModel(intent.getStringExtra("markup"), null, intent.getStringExtra("activation_command"), null, intent.getStringExtra("native_impression_report_url"), AdInvalidationBehavior.NONE, null);
    }

    public static HtmlAdDataModel fromJSONObject(JSONObject jsonobject)
    {
        if (jsonobject == null)
        {
            return null;
        }
        String s = jsonobject.optString("markup");
        String s1 = jsonobject.optString("secondary_markup");
        String s2 = jsonobject.optString("activation_command");
        String s3 = jsonobject.optString("secondary_activation_command");
        String s4 = jsonobject.optString("native_impression_report_url");
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
        return new HtmlAdDataModel(s, s1, s2, s3, s4, adinvalidationbehavior, AdInvalidationUtils.parseDetectionStrings(jsonarray));
    }

    public void addSecondaryToIntentExtra(Intent intent)
    {
        intent.putExtra("secondary_markup", secondaryMarkup);
        intent.putExtra("secondary_activation_command", secondaryActivationCommand);
    }

    public void addToIntentExtra(Intent intent)
    {
        intent.putExtra("markup", markup);
        intent.putExtra("activation_command", activationCommand);
        intent.putExtra("native_impression_report_url", nativeImpressionUrl);
    }

    public String getActivationCommand()
    {
        return activationCommand;
    }

    public Map getDataModelMap()
    {
        HashMap hashmap = new HashMap();
        hashmap.put("markup", secondaryMarkup);
        hashmap.put("activation_command", secondaryActivationCommand);
        hashmap.put("native_impression_report_url", nativeImpressionUrl);
        return hashmap;
    }

    public Collection getDetectionStrings()
    {
        return detectionStrings;
    }

    public AdInvalidationBehavior getInvalidationBehavior()
    {
        return invalidationBehavior;
    }

    public String getMarkup()
    {
        return markup;
    }

    public String getNativeImpressionUrl()
    {
        return nativeImpressionUrl;
    }

    public String getSendImpressionCommand()
    {
        return "facebookAd.sendImpression();";
    }

    public Bundle saveToBundle()
    {
        Bundle bundle = new Bundle();
        bundle.putString("markup", markup);
        bundle.putString("native_impression_report_url", nativeImpressionUrl);
        return bundle;
    }
}
