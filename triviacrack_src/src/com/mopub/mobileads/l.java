// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.util.vast.VastVideoConfiguration;

// Referenced classes of package com.mopub.mobileads:
//            MraidVideoPlayerActivity, AdConfiguration

class l extends Activity
{

    l()
    {
    }

    static void a(Context context, VastVideoConfiguration vastvideoconfiguration, AdConfiguration adconfiguration)
    {
        Intent intent = b(context, vastvideoconfiguration, adconfiguration);
        try
        {
            context.startActivity(intent);
            return;
        }
        catch (ActivityNotFoundException activitynotfoundexception)
        {
            MoPubLog.d("Activity MraidVideoPlayerActivity not found. Did you declare it in your AndroidManifest.xml?");
        }
    }

    static void a(Context context, String s, AdConfiguration adconfiguration)
    {
        Intent intent = b(context, s, adconfiguration);
        try
        {
            context.startActivity(intent);
            return;
        }
        catch (ActivityNotFoundException activitynotfoundexception)
        {
            MoPubLog.d("Activity MraidVideoPlayerActivity not found. Did you declare it in your AndroidManifest.xml?");
        }
    }

    static Intent b(Context context, VastVideoConfiguration vastvideoconfiguration, AdConfiguration adconfiguration)
    {
        Intent intent = new Intent(context, com/mopub/mobileads/MraidVideoPlayerActivity);
        intent.setFlags(0x10000000);
        intent.putExtra("video_view_class_name", "vast");
        intent.putExtra("vast_video_configuration", vastvideoconfiguration);
        intent.putExtra("Ad-Configuration", adconfiguration);
        return intent;
    }

    static Intent b(Context context, String s, AdConfiguration adconfiguration)
    {
        Intent intent = new Intent(context, com/mopub/mobileads/MraidVideoPlayerActivity);
        intent.setFlags(0x10000000);
        intent.putExtra("video_view_class_name", "mraid");
        intent.putExtra("video_url", s);
        intent.putExtra("Ad-Configuration", adconfiguration);
        return intent;
    }
}
