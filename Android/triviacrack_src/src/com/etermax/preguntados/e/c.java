// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.e;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.etermax.gamescommon.resources.a;
import com.etermax.gamescommon.resources.b;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.preguntados.datasource.dto.QuestionDTO;
import com.etermax.preguntados.datasource.dto.SpinDTO;
import com.etermax.preguntados.datasource.dto.SpinQuestionDTO;
import com.etermax.preguntados.datasource.dto.SpinsDataDTO;
import com.etermax.preguntados.datasource.dto.enums.GameType;
import com.etermax.preguntados.datasource.dto.enums.QuestionCategory;
import com.etermax.preguntados.datasource.dto.enums.QuestionType;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

// Referenced classes of package com.etermax.preguntados.e:
//            b, e, a

public class c
{

    Context a;
    com.etermax.tools.j.a b;
    protected HashMap c;
    protected HashMap d;

    public c()
    {
    }

    private String a(String s)
    {
        String s1 = com.etermax.gamescommon.resources.a.a(a, b.e).a();
        String s2 = (new StringBuilder()).append("_").append(b.b().toLowerCase(Locale.US)).append("_").toString();
        return (new StringBuilder()).append(s).append(s2).append(s1).append(".jpg").toString();
    }

    private String b(long l, QuestionCategory questioncategory)
    {
        return (new StringBuilder()).append(questioncategory.name()).append("_").append(l).toString();
    }

    private void b(String s)
    {
        com.etermax.a.a.c("MediaDownloader", s);
    }

    public Bitmap a(long l, QuestionCategory questioncategory)
    {
        String s = b(l, questioncategory);
        return ((com.etermax.preguntados.e.b)c.get(s)).b();
    }

    protected void a()
    {
        c = new HashMap();
        d = new HashMap();
    }

    public void a(GameDTO gamedto)
    {
        if (gamedto == null) goto _L2; else goto _L1
_L1:
        GameType gametype = gamedto.getGameType();
        if (gametype != null && !gametype.equals(GameType.NORMAL)) goto _L4; else goto _L3
_L3:
        if (gamedto.getSpins_data() == null) goto _L2; else goto _L5
_L5:
        Iterator iterator = gamedto.getSpins_data().getSpins().iterator();
_L7:
        Iterator iterator1;
        if (!iterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        iterator1 = ((SpinDTO)iterator.next()).getQuestions().iterator();
_L8:
        if (!iterator1.hasNext()) goto _L7; else goto _L6
_L6:
        SpinQuestionDTO spinquestiondto = (SpinQuestionDTO)iterator1.next();
        class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[QuestionType.values().length];
                try
                {
                    a[QuestionType.IMAGE.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[QuestionType.NORMAL.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[QuestionType.SOUND.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[QuestionType.VIDEO.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3)
                {
                    return;
                }
            }
        }

        switch (com.etermax.preguntados.e._cls1.a[spinquestiondto.getQuestion().getQuestionType().ordinal()])
        {
        case 1: // '\001'
            a(spinquestiondto.getQuestion());
            break;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if (!gametype.equals(GameType.DUEL_GAME) || gamedto.getDuelQuestions() == null)
        {
            break; /* Loop/switch isn't completed */
        }
        Iterator iterator2 = gamedto.getDuelQuestions().iterator();
        do
        {
            QuestionDTO questiondto;
            do
            {
                if (!iterator2.hasNext())
                {
                    break; /* Loop/switch isn't completed */
                }
                questiondto = (QuestionDTO)iterator2.next();
            } while (questiondto.getQuestionType() == null || !questiondto.getQuestionType().equals(QuestionType.IMAGE));
            a(questiondto);
        } while (true);
        if (true) goto _L8; else goto _L2
_L2:
    }

    protected void a(QuestionDTO questiondto)
    {
        String s;
        String s1;
        com.etermax.preguntados.e.b b1;
        if (questiondto.getBaseURL() == null)
        {
            break MISSING_BLOCK_LABEL_218;
        }
        s = b(questiondto.getId(), questiondto.getCategory());
        s1 = a(questiondto.getBaseURL());
        if (c.containsKey(s))
        {
            break MISSING_BLOCK_LABEL_218;
        }
        b1 = new com.etermax.preguntados.e.b();
        b1.a(com.etermax.preguntados.e.e.a);
        c.put(s, b1);
        b((new StringBuilder()).append("URL Loaded: ").append(s1).toString());
        Bitmap bitmap;
        HttpURLConnection httpurlconnection = (HttpURLConnection)(new URL(s1)).openConnection();
        httpurlconnection.setDoInput(true);
        httpurlconnection.setConnectTimeout(15000);
        httpurlconnection.setReadTimeout(15000);
        httpurlconnection.connect();
        bitmap = BitmapFactory.decodeStream(httpurlconnection.getInputStream());
        httpurlconnection.disconnect();
        if (bitmap == null)
        {
            break MISSING_BLOCK_LABEL_219;
        }
        try
        {
            b1.a(bitmap);
            b1.a(e.c);
            b((new StringBuilder()).append("URL: ").append(s1).append(" OK").toString());
        }
        catch (Exception exception)
        {
            b1.a(null);
            b1.a(com.etermax.preguntados.e.e.b);
            b((new StringBuilder()).append("URL: ").append(s1).append(" NOT DOWNLOADED").toString());
            exception.printStackTrace();
        }
        if (d.containsKey(s))
        {
            a(s, b1);
        }
        return;
        b1.a(com.etermax.preguntados.e.e.b);
        b((new StringBuilder()).append("URL: ").append(s1).append(" DECODE FAIL").toString());
        break MISSING_BLOCK_LABEL_200;
    }

    public void a(QuestionDTO questiondto, com.etermax.preguntados.e.a a1)
    {
        a(questiondto);
        b(questiondto, a1);
    }

    void a(String s, com.etermax.preguntados.e.b b1)
    {
        b((new StringBuilder()).append("callback for ").append(s).append(" state: ").append(b1.a().toString()).toString());
        if (b1.a() == e.c)
        {
            ((com.etermax.preguntados.e.a)d.get(s)).a(b1.b());
        } else
        if (b1.a() == com.etermax.preguntados.e.e.b)
        {
            ((com.etermax.preguntados.e.a)d.get(s)).a();
            return;
        }
    }

    public void b()
    {
        org.a.a.a.a("image_task_id", true);
        b("Tasks cancelled");
    }

    public void b(QuestionDTO questiondto, com.etermax.preguntados.e.a a1)
    {
        String s = b(questiondto.getId(), questiondto.getCategory());
        com.etermax.preguntados.e._cls1.a[questiondto.getQuestionType().ordinal()];
        JVM INSTR tableswitch 1 4: default 56
    //                   1 57
    //                   2 56
    //                   3 56
    //                   4 56;
           goto _L1 _L2 _L1 _L1 _L1
_L1:
        return;
_L2:
        d.put(s, a1);
        if (c.get(s) != null && ((com.etermax.preguntados.e.b)c.get(s)).a() == com.etermax.preguntados.e.e.b)
        {
            ((com.etermax.preguntados.e.a)d.get(s)).a();
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    public boolean b(QuestionDTO questiondto)
    {
        String s = b(questiondto.getId(), questiondto.getCategory());
        com.etermax.preguntados.e._cls1.a[questiondto.getQuestionType().ordinal()];
        JVM INSTR tableswitch 1 4: default 56
    //                   1 58
    //                   2 91
    //                   3 56
    //                   4 56;
           goto _L1 _L2 _L3 _L1 _L1
_L1:
        return false;
_L2:
        if (c.containsKey(s) && ((com.etermax.preguntados.e.b)c.get(s)).a() == e.c)
        {
            return true;
        }
          goto _L1
_L3:
        return true;
    }

    public void c()
    {
        c.clear();
        d.clear();
        b("Cache cleared");
    }

    public boolean c(QuestionDTO questiondto)
    {
        String s = b(questiondto.getId(), questiondto.getCategory());
        switch (com.etermax.preguntados.e._cls1.a[questiondto.getQuestionType().ordinal()])
        {
        default:
            return false;

        case 1: // '\001'
            break;
        }
        return c.get(s) == null || ((com.etermax.preguntados.e.b)c.get(s)).a() == com.etermax.preguntados.e.e.b;
    }
}
