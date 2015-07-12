// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads.util;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Environment;
import com.mopub.common.util.IntentUtils;
import com.mopub.common.util.VersionCode;
import com.mopub.mobileads.MraidVideoPlayerActivity;

public class Mraids
{

    public static final String ANDROID_CALENDAR_CONTENT_TYPE = "vnd.android.cursor.item/event";

    public Mraids()
    {
    }

    public static boolean isCalendarAvailable(Context context)
    {
        Intent intent = (new Intent("android.intent.action.INSERT")).setType("vnd.android.cursor.item/event");
        return VersionCode.currentApiLevel().isAtLeast(VersionCode.ICE_CREAM_SANDWICH) && IntentUtils.deviceCanHandleIntent(context, intent);
    }

    public static boolean isInlineVideoAvailable(Context context)
    {
        return IntentUtils.deviceCanHandleIntent(context, new Intent(context, com/mopub/mobileads/MraidVideoPlayerActivity));
    }

    public static boolean isSmsAvailable(Context context)
    {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse("sms:"));
        return IntentUtils.deviceCanHandleIntent(context, intent);
    }

    public static boolean isStorePictureSupported(Context context)
    {
        return "mounted".equals(Environment.getExternalStorageState()) && context.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0;
    }

    public static boolean isTelAvailable(Context context)
    {
        Intent intent = new Intent("android.intent.action.DIAL");
        intent.setData(Uri.parse("tel:"));
        return IntentUtils.deviceCanHandleIntent(context, intent);
    }
}
