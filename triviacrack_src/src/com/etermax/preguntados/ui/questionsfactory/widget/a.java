// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.widget;

import android.content.Context;
import android.os.Bundle;
import com.etermax.o;
import com.etermax.tools.widget.b.c;

public class a
{

    public static c a(Context context)
    {
        Bundle bundle = new Bundle();
        bundle.putString("dialog", "dialog_no_questions");
        c c1 = c.c(context.getString(o.attention), context.getString(o.no_more_questions_rate), context.getString(o.accept), bundle);
        c1.setCancelable(false);
        return c1;
    }
}
