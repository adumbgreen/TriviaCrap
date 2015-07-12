// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.view.WindowManager;

// Referenced classes of package com.amazon.device.ads:
//            AndroidTargetUtils

class DisplayUtils
{

    private static int rotationArray[][] = {
        {
            1, 0, 9, 8
        }, {
            0, 9, 8, 1
        }
    };

    DisplayUtils()
    {
    }

    public static int determineCanonicalScreenOrientation(Context context)
    {
        int i = AndroidTargetUtils.getOrientation(((WindowManager)context.getSystemService("window")).getDefaultDisplay());
        int j = context.getResources().getConfiguration().orientation;
        boolean flag;
        int k;
        if (j == 1)
        {
            if (i == 0 || i == 2)
            {
                flag = true;
            } else
            {
                flag = false;
            }
        } else
        if (j == 2)
        {
            if (i == 1 || i == 3)
            {
                flag = true;
            } else
            {
                flag = false;
            }
        } else
        {
            flag = true;
        }
        k = 0;
        if (!flag)
        {
            k = 1;
        }
        return rotationArray[k][i];
    }

}
