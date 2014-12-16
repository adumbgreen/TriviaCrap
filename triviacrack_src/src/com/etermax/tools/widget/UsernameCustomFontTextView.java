// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.widget;

import android.content.Context;
import android.text.TextPaint;
import android.util.AttributeSet;
import com.etermax.a.b;

// Referenced classes of package com.etermax.tools.widget:
//            CustomFontTextView

public class UsernameCustomFontTextView extends CustomFontTextView
{

    private boolean a;
    private String b;

    public UsernameCustomFontTextView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public UsernameCustomFontTextView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    private void a()
    {
        if (getWidth() > 0 && b != null && getPaint().measureText(b) > (float)getWidth())
        {
            setText(com.etermax.a.b.c(b));
        }
    }

    protected void onSizeChanged(int i, int j, int k, int l)
    {
        if (!a && i > 0 && b != null && getPaint().measureText(b) > (float)i)
        {
            setText(com.etermax.a.b.c(b));
            a = true;
        }
        super.onSizeChanged(i, j, k, l);
    }

    public void setUsername(String s)
    {
        if (s != null && !s.equals(""))
        {
            b = s;
            setText(b);
        } else
        {
            setText("");
        }
        a();
    }

    public void setUsernameWithArroba(String s)
    {
        if (s != null && !s.equals(""))
        {
            b = s;
            setText((new StringBuilder()).append("@").append(b).toString());
        } else
        {
            setText("");
        }
        a();
    }
}
