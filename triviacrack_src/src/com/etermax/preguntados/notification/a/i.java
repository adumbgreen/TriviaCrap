// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.notification.a;

import android.content.Context;
import android.os.Bundle;
import android.text.SpannableString;
import com.etermax.o;

// Referenced classes of package com.etermax.preguntados.notification.a:
//            a

public class i extends a
{

    public i(Context context, Bundle bundle)
    {
        super(context, bundle);
    }

    public SpannableString d()
    {
        Context context = a;
        int j = o.you_lost_the_game;
        Object aobj[] = new Object[1];
        aobj[0] = h;
        return SpannableString.valueOf(context.getString(j, aobj));
    }
}
