// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.animations;

import android.content.Context;
import android.util.Log;
import com.etermax.gamescommon.animations.v1.AnimatedView;
import com.etermax.gamescommon.animations.v1.b;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;

// Referenced classes of package com.etermax.gamescommon.animations:
//            b, d

public class a
{

    Context a;
    com.etermax.gamescommon.resources.a b;
    private HashMap c;

    public a()
    {
        c = new HashMap();
    }

    private HashMap a(XmlPullParser xmlpullparser)
    {
        HashMap hashmap = new HashMap();
        do
        {
            if (xmlpullparser.next() == 3)
            {
                break;
            }
            if (xmlpullparser.getEventType() == 2)
            {
                if (xmlpullparser.getName().equals("Animation"))
                {
                    b b1 = new b(xmlpullparser);
                    hashmap.put(b1.a(), b1);
                } else
                {
                    com.etermax.gamescommon.animations.v1.b.a(xmlpullparser);
                }
            }
        } while (true);
        return hashmap;
    }

    private HashMap a(XmlPullParser xmlpullparser, int i)
    {
        switch (i)
        {
        default:
            return null;

        case 1: // '\001'
            return a(xmlpullparser);
        }
    }

    public d a(String s, com.etermax.gamescommon.resources.b b1)
    {
        if (c.get(s) == null)
        {
            return null;
        } else
        {
            AnimatedView animatedview = new AnimatedView(a);
            animatedview.a((b)c.get(s), b, b1);
            return animatedview;
        }
    }

    public HashMap a()
    {
        return c;
    }

    public Set a(InputStream inputstream)
    {
        HashMap hashmap = new HashMap();
        XmlPullParser xmlpullparser;
        XmlPullParserFactory xmlpullparserfactory = XmlPullParserFactory.newInstance();
        xmlpullparserfactory.setValidating(false);
        xmlpullparser = xmlpullparserfactory.newPullParser();
        xmlpullparser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", false);
        xmlpullparser.setInput(inputstream, null);
        xmlpullparser.nextTag();
        if (xmlpullparser.getAttributeValue(null, "version") == null) goto _L2; else goto _L1
_L1:
        int i = Integer.valueOf(xmlpullparser.getAttributeValue(null, "version")).intValue();
_L5:
        if (i != -1) goto _L4; else goto _L3
_L3:
        Exception exception;
        HashMap hashmap1;
        Exception exception2;
        try
        {
            throw new com.etermax.gamescommon.animations.b(this);
        }
        catch (Exception exception1)
        {
            hashmap1 = hashmap;
            exception2 = exception1;
        }
        finally
        {
            inputstream.close();
        }
_L7:
        Log.d("EterAnimation", "loadData", exception2);
        inputstream.close();
_L6:
        return hashmap1.keySet();
_L2:
        i = -1;
          goto _L5
_L4:
        if (i <= 1)
        {
            break MISSING_BLOCK_LABEL_156;
        }
        throw new com.etermax.gamescommon.animations.b(this);
        throw exception;
        HashMap hashmap2 = a(xmlpullparser, i);
        hashmap1 = hashmap2;
        c.putAll(hashmap1);
        inputstream.close();
          goto _L6
        exception2;
          goto _L7
    }

    public boolean a(String s)
    {
        return c.get(s) != null;
    }
}
