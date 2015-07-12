// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

// Referenced classes of package twitter4j:
//            HttpParameter, StringUtil

public final class OEmbedRequest
    implements Serializable
{

    private static final long serialVersionUID = 0x677263dd4692eabdL;
    private Align align;
    private boolean hideMedia;
    private boolean hideThread;
    private String lang;
    private int maxWidth;
    private boolean omitScript;
    private String related[];
    private final long statusId;
    private final String url;

    public OEmbedRequest(long l, String s)
    {
        hideMedia = true;
        hideThread = true;
        omitScript = false;
        align = Align.NONE;
        related = new String[0];
        statusId = l;
        url = s;
    }

    private void appendParameter(String s, long l, List list)
    {
        if (0L <= l)
        {
            list.add(new HttpParameter(s, String.valueOf(l)));
        }
    }

    private void appendParameter(String s, String s1, List list)
    {
        if (s1 != null)
        {
            list.add(new HttpParameter(s, s1));
        }
    }

    public OEmbedRequest HideMedia(boolean flag)
    {
        hideMedia = flag;
        return this;
    }

    public OEmbedRequest HideThread(boolean flag)
    {
        hideThread = flag;
        return this;
    }

    public OEmbedRequest MaxWidth(int i)
    {
        maxWidth = i;
        return this;
    }

    public OEmbedRequest align(Align align1)
    {
        align = align1;
        return this;
    }

    HttpParameter[] asHttpParameterArray()
    {
        ArrayList arraylist = new ArrayList(12);
        appendParameter("id", statusId, arraylist);
        appendParameter("url", url, arraylist);
        appendParameter("maxwidth", maxWidth, arraylist);
        arraylist.add(new HttpParameter("hide_media", hideMedia));
        arraylist.add(new HttpParameter("hide_thread", hideThread));
        arraylist.add(new HttpParameter("omit_script", omitScript));
        arraylist.add(new HttpParameter("align", align.name().toLowerCase()));
        if (related.length > 0)
        {
            appendParameter("related", StringUtil.join(related), arraylist);
        }
        appendParameter("lang", lang, arraylist);
        return (HttpParameter[])arraylist.toArray(new HttpParameter[arraylist.size()]);
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            OEmbedRequest oembedrequest = (OEmbedRequest)obj;
            if (hideMedia != oembedrequest.hideMedia)
            {
                return false;
            }
            if (hideThread != oembedrequest.hideThread)
            {
                return false;
            }
            if (maxWidth != oembedrequest.maxWidth)
            {
                return false;
            }
            if (omitScript != oembedrequest.omitScript)
            {
                return false;
            }
            if (statusId != oembedrequest.statusId)
            {
                return false;
            }
            if (align != oembedrequest.align)
            {
                return false;
            }
            if (lang == null ? oembedrequest.lang != null : !lang.equals(oembedrequest.lang))
            {
                return false;
            }
            if (!Arrays.equals(related, oembedrequest.related))
            {
                return false;
            }
            if (url == null ? oembedrequest.url != null : !url.equals(oembedrequest.url))
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        int i = 1;
        int j = 31 * (int)(statusId ^ statusId >>> 32);
        int k;
        int l;
        int i1;
        int j1;
        int k1;
        int l1;
        int i2;
        int j2;
        int k2;
        int l2;
        int i3;
        String s;
        int j3;
        if (url != null)
        {
            k = url.hashCode();
        } else
        {
            k = 0;
        }
        l = 31 * (31 * (k + j) + maxWidth);
        if (hideMedia)
        {
            i1 = i;
        } else
        {
            i1 = 0;
        }
        j1 = 31 * (i1 + l);
        if (hideThread)
        {
            k1 = i;
        } else
        {
            k1 = 0;
        }
        l1 = 31 * (k1 + j1);
        if (!omitScript)
        {
            i = 0;
        }
        i2 = 31 * (l1 + i);
        if (align != null)
        {
            j2 = align.hashCode();
        } else
        {
            j2 = 0;
        }
        k2 = 31 * (j2 + i2);
        if (related != null)
        {
            l2 = Arrays.hashCode(related);
        } else
        {
            l2 = 0;
        }
        i3 = 31 * (l2 + k2);
        s = lang;
        j3 = 0;
        if (s != null)
        {
            j3 = lang.hashCode();
        }
        return i3 + j3;
    }

    public OEmbedRequest lang(String s)
    {
        lang = s;
        return this;
    }

    public OEmbedRequest omitScript(boolean flag)
    {
        omitScript = flag;
        return this;
    }

    public OEmbedRequest related(String as[])
    {
        related = as;
        return this;
    }

    public void setAlign(Align align1)
    {
        align = align1;
    }

    public void setHideMedia(boolean flag)
    {
        hideMedia = flag;
    }

    public void setHideThread(boolean flag)
    {
        hideThread = flag;
    }

    public void setLang(String s)
    {
        lang = s;
    }

    public void setMaxWidth(int i)
    {
        maxWidth = i;
    }

    public void setOmitScript(boolean flag)
    {
        omitScript = flag;
    }

    public void setRelated(String as[])
    {
        related = as;
    }

    public String toString()
    {
        StringBuilder stringbuilder = (new StringBuilder()).append("OEmbedRequest{statusId=").append(statusId).append(", url='").append(url).append('\'').append(", maxWidth=").append(maxWidth).append(", hideMedia=").append(hideMedia).append(", hideThread=").append(hideThread).append(", omitScript=").append(omitScript).append(", align=").append(align).append(", related=");
        List list;
        if (related == null)
        {
            list = null;
        } else
        {
            list = Arrays.asList(related);
        }
        return stringbuilder.append(list).append(", lang='").append(lang).append('\'').append('}').toString();
    }

    private class Align extends Enum
    {

        private static final Align $VALUES[];
        public static final Align CENTER;
        public static final Align LEFT;
        public static final Align NONE;
        public static final Align RIGHT;

        public static Align valueOf(String s)
        {
            return (Align)Enum.valueOf(twitter4j/OEmbedRequest$Align, s);
        }

        public static Align[] values()
        {
            return (Align[])$VALUES.clone();
        }

        static 
        {
            LEFT = new Align("LEFT", 0);
            CENTER = new Align("CENTER", 1);
            RIGHT = new Align("RIGHT", 2);
            NONE = new Align("NONE", 3);
            Align aalign[] = new Align[4];
            aalign[0] = LEFT;
            aalign[1] = CENTER;
            aalign[2] = RIGHT;
            aalign[3] = NONE;
            $VALUES = aalign;
        }

        private Align(String s, int i)
        {
            super(s, i);
        }
    }

}
