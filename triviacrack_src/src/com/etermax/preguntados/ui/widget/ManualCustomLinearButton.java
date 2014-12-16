// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import com.etermax.tools.widget.CustomLinearButton;

public class ManualCustomLinearButton extends CustomLinearButton
{

    public ManualCustomLinearButton(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public void a()
    {
        setBackgroundDrawable(b);
    }

    public void b()
    {
        setBackgroundDrawable(a);
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        boolean flag = super.onTouchEvent(motionevent);
        if (b != null && a != null)
        {
            if (motionevent.getAction() == 0)
            {
                setBackgroundDrawable(b);
            } else
            if (motionevent.getAction() == 1 || motionevent.getAction() == 3 || motionevent.getAction() == 4)
            {
                setBackgroundDrawable(b);
                return flag;
            }
        }
        return flag;
    }

    public void setPressed(boolean flag)
    {
    }
}
