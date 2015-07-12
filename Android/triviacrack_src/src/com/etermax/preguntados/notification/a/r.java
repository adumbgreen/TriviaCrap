// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.notification.a;

import android.content.Context;
import android.os.Bundle;
import android.text.SpannableString;
import com.etermax.o;

// Referenced classes of package com.etermax.preguntados.notification.a:
//            b

public class r extends b
{

    public r(Context context, Bundle bundle)
    {
        super(context, bundle);
    }

    public SpannableString d()
    {
        Context context = a;
        int i = o.USER_PLAYED_02;
        Object aobj[] = new Object[1];
        aobj[0] = h;
        return SpannableString.valueOf(context.getString(i, aobj));
    }
}
