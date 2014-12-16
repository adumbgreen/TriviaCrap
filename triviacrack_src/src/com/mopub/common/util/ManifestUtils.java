// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.common.util;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.widget.Toast;
import com.mopub.common.MoPubBrowser;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.MoPubActivity;
import com.mopub.mobileads.MraidActivity;
import com.mopub.mobileads.MraidVideoPlayerActivity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.mopub.common.util:
//            Utils, IntentUtils

public class ManifestUtils
{

    private static final List a;
    private static final List b;

    private ManifestUtils()
    {
    }

    static void a(Context context, List list)
    {
        List list1;
        if (context != null)
        {
            if (!(list1 = b(context, list)).isEmpty())
            {
                if (a(context))
                {
                    Toast toast = Toast.makeText(context, "ERROR: YOUR MOPUB INTEGRATION IS INCOMPLETE.\nCheck logcat and update your AndroidManifest.xml with the correct activities.", 1);
                    toast.setGravity(7, 0, 0);
                    toast.show();
                }
                a(list1);
                return;
            }
        }
    }

    private static void a(List list)
    {
        StringBuilder stringbuilder = new StringBuilder("AndroidManifest permissions for the following required MoPub activities are missing:\n");
        String s;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); stringbuilder.append("\n\t").append(s))
        {
            s = (String)iterator.next();
        }

        stringbuilder.append("\n\nPlease update your manifest to include them.");
        MoPubLog.w(stringbuilder.toString());
    }

    static boolean a(Context context)
    {
        if (context == null || context.getApplicationInfo() == null)
        {
            return false;
        } else
        {
            return Utils.bitMaskContainsFlag(context.getApplicationInfo().flags, 2);
        }
    }

    private static List b(Context context, List list)
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Class class1 = (Class)iterator.next();
            if (!IntentUtils.deviceCanHandleIntent(context, new Intent(context, class1)))
            {
                arraylist.add(class1.getName());
            }
        } while (true);
        return arraylist;
    }

    public static void checkNativeActivitiesDeclared(Context context)
    {
        a(context, b);
    }

    public static void checkWebViewActivitiesDeclared(Context context)
    {
        a(context, a);
    }

    static 
    {
        a = new ArrayList(4);
        a.add(com/mopub/mobileads/MoPubActivity);
        a.add(com/mopub/mobileads/MraidActivity);
        a.add(com/mopub/mobileads/MraidVideoPlayerActivity);
        a.add(com/mopub/common/MoPubBrowser);
        b = new ArrayList(1);
        b.add(com/mopub/common/MoPubBrowser);
    }
}
