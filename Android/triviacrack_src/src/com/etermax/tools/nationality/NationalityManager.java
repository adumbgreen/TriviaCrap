// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.nationality;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import java.util.Locale;

// Referenced classes of package com.etermax.tools.nationality:
//            Nationality

public class NationalityManager
{

    public static Drawable getFlag(Context context, Nationality nationality)
    {
        return context.getResources().getDrawable(getFlagResource(context, nationality));
    }

    public static int getFlagResource(Context context, Nationality nationality)
    {
        return context.getResources().getIdentifier((new StringBuilder()).append("country_").append(nationality.name().toLowerCase(Locale.US)).toString(), "drawable", context.getPackageName());
    }

    public static String getName(Context context, Nationality nationality)
    {
        return context.getString(getNameResource(context, nationality));
    }

    public static int getNameResource(Context context, Nationality nationality)
    {
        return context.getResources().getIdentifier((new StringBuilder()).append("country_").append(nationality.name().toLowerCase(Locale.US)).toString(), "string", context.getPackageName());
    }
}
