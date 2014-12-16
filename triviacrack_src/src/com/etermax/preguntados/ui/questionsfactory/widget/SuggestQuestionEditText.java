// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import com.etermax.gamescommon.language.Language;
import com.etermax.tools.widget.CustomFontEditText;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.widget:
//            b

public class SuggestQuestionEditText extends CustomFontEditText
{

    private Language a;
    private b b;
    private boolean c;

    public SuggestQuestionEditText(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public SuggestQuestionEditText(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    public void a()
    {
        if (length() == 0)
        {
            String s = "?";
            if (a == Language.ES)
            {
                s = (new StringBuilder()).append("\277").append(s).toString();
            }
            setText(s);
        }
    }

    public void b()
    {
        if (length() <= 0) goto _L2; else goto _L1
_L1:
        String s = getText().toString();
        if (a != Language.ES) goto _L4; else goto _L3
_L3:
        if (s.indexOf("\277") != 0)
        {
            s = (new StringBuilder()).append("\277").append(s).toString();
        }
_L6:
        setText(s);
_L2:
        return;
_L4:
        if (s.indexOf("\277") == 0)
        {
            s = s.substring(1);
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        while (i == 67 && getSelectionStart() == 1 && a == Language.ES || i == 66) 
        {
            return true;
        }
        return super.onKeyDown(i, keyevent);
    }

    public boolean onKeyUp(int i, KeyEvent keyevent)
    {
        if (i == 66 && b != null)
        {
            b.a();
            return true;
        } else
        {
            return super.onKeyUp(i, keyevent);
        }
    }

    public void onSelectionChanged(int i, int j)
    {
        if (c)
        {
            android.text.Editable editable = getText();
            if (editable != null)
            {
                int k = editable.length();
                if (k != 0)
                {
                    k--;
                }
                setSelection(k, k);
            }
            return;
        } else
        {
            super.onSelectionChanged(i, j);
            return;
        }
    }

    public void setCursorLocked(boolean flag)
    {
        c = true;
    }

    public void setListener(b b1)
    {
        b = b1;
    }

    public void setQuestionLanguage(Language language)
    {
        a = language;
    }
}
