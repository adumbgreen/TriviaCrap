// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.ads.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONArray;

// Referenced classes of package com.facebook.ads.internal:
//            StringUtils, AdDataModel, AdInvalidationBehavior

public class AdInvalidationUtils
{

    public AdInvalidationUtils()
    {
    }

    public static boolean isNativePackageInstalled(Context context, String s)
    {
        if (StringUtils.isNullOrEmpty(s))
        {
            return false;
        }
        PackageManager packagemanager = context.getPackageManager();
        try
        {
            packagemanager.getPackageInfo(s, 1);
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            return false;
        }
        return true;
    }

    public static Collection parseDetectionStrings(JSONArray jsonarray)
    {
        if (jsonarray == null || jsonarray.length() == 0)
        {
            return null;
        }
        HashSet hashset = new HashSet();
        for (int i = 0; i < jsonarray.length(); i++)
        {
            hashset.add(jsonarray.optString(i));
        }

        return hashset;
    }

    public static boolean shouldInvalidate(Context context, AdDataModel addatamodel)
    {
        boolean flag;
        AdInvalidationBehavior adinvalidationbehavior;
        flag = true;
        adinvalidationbehavior = addatamodel.getInvalidationBehavior();
        if (adinvalidationbehavior != null && adinvalidationbehavior != AdInvalidationBehavior.NONE) goto _L2; else goto _L1
_L1:
        Collection collection;
        return false;
_L2:
        boolean flag1;
        if ((collection = addatamodel.getDetectionStrings()) == null || collection.isEmpty())
        {
            continue; /* Loop/switch isn't completed */
        }
        Iterator iterator = collection.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break; /* Loop/switch isn't completed */
            }
        } while (!isNativePackageInstalled(context, (String)iterator.next()));
        flag1 = flag;
_L4:
        if (adinvalidationbehavior == AdInvalidationBehavior.INSTALLED)
        {
            return flag1;
        }
        if (adinvalidationbehavior == AdInvalidationBehavior.NOT_INSTALLED)
        {
            if (flag1)
            {
                flag = false;
            }
            return flag;
        }
        if (true) goto _L1; else goto _L3
_L3:
        flag1 = false;
          goto _L4
        if (true) goto _L1; else goto _L5
_L5:
    }
}
