// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.notification.a;

import android.content.Context;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.TextUtils;
import com.etermax.o;

// Referenced classes of package com.etermax.preguntados.notification.a:
//            b

public class d extends b
{

    private String j;

    public d(Context context, Bundle bundle)
    {
        super(context, bundle);
        j = a(b(b, "data.DN"));
        if (!TextUtils.isEmpty(j) && j.equalsIgnoreCase("random"))
        {
            j = context.getString(o.random_challenge);
        }
    }

    public SpannableString d()
    {
        Context context = a;
        int i = o.notification_group_challenge_won;
        Object aobj[] = new Object[1];
        aobj[0] = j;
        return SpannableString.valueOf(context.getString(i, aobj));
    }
}
