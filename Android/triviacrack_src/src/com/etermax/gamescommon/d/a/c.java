// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.d.a;

import android.content.Context;
import android.text.Spannable;
import android.text.style.ImageSpan;
import com.etermax.h;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class c
{

    private static final android.text.Spannable.Factory a = android.text.Spannable.Factory.getInstance();
    private static final Map b;

    public static Spannable a(Context context, CharSequence charsequence)
    {
        Spannable spannable = a.newSpannable(charsequence);
        a(context, spannable);
        return spannable;
    }

    private static void a(Map map, String s, int i)
    {
        map.put(Pattern.compile(Pattern.quote(s), 2), Integer.valueOf(i));
    }

    public static boolean a(Context context, Spannable spannable)
    {
        Iterator iterator;
        boolean flag;
        iterator = b.entrySet().iterator();
        flag = false;
_L4:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        java.util.Map.Entry entry;
        Matcher matcher;
        entry = (java.util.Map.Entry)iterator.next();
        matcher = ((Pattern)entry.getKey()).matcher(spannable);
_L5:
        if (!matcher.find()) goto _L4; else goto _L3
_L3:
        boolean flag1;
        ImageSpan aimagespan[] = (ImageSpan[])spannable.getSpans(matcher.start(), matcher.end(), android/text/style/ImageSpan);
        int i = aimagespan.length;
        int j = 0;
        do
        {
            if (j >= i)
            {
                break MISSING_BLOCK_LABEL_205;
            }
            ImageSpan imagespan = aimagespan[j];
            if (spannable.getSpanStart(imagespan) < matcher.start() || spannable.getSpanEnd(imagespan) > matcher.end())
            {
                break;
            }
            spannable.removeSpan(imagespan);
            j++;
        } while (true);
        flag1 = false;
_L6:
        if (flag1)
        {
            spannable.setSpan(new ImageSpan(context, ((Integer)entry.getValue()).intValue()), matcher.start(), matcher.end(), 33);
            flag = true;
        }
          goto _L5
          goto _L4
_L2:
        return flag;
        flag1 = true;
          goto _L6
    }

    static 
    {
        b = new HashMap();
        a(b, ":)", h.emo_im_happy);
        a(b, ":-)", h.emo_im_happy);
        a(b, ";-)", h.emo_im_winking);
        a(b, ";)", h.emo_im_winking);
        a(b, ":-(", h.emo_im_sad);
        a(b, ":(", h.emo_im_sad);
        a(b, ":'-(", h.emo_im_crying);
        a(b, ":'(", h.emo_im_crying);
        a(b, "B-)", h.emo_im_cool);
        a(b, "B)", h.emo_im_cool);
        a(b, ":-*", h.emo_im_kissing);
        a(b, ":*", h.emo_im_kissing);
        a(b, ":-P", h.emo_im_tongue_sticking_out);
        a(b, ":P", h.emo_im_tongue_sticking_out);
        a(b, ":O", h.emo_im_surprised);
        a(b, ":-O", h.emo_im_surprised);
        a(b, "O:-)", h.emo_im_angel);
        a(b, "O:)", h.emo_im_angel);
        a(b, "o_O", h.emo_im_wtf);
        a(b, "o.O", h.emo_im_wtf);
        a(b, ":-X", h.emo_im_lips_are_sealed);
        a(b, ":X", h.emo_im_lips_are_sealed);
    }
}
