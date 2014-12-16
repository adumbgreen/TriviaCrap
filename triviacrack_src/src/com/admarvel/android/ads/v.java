// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;


class v
{

    v()
    {
    }

    public String a(String s)
    {
        StringBuffer stringbuffer = new StringBuffer();
        int i = 0;
        do
        {
            int l;
label0:
            {
                int j = s.indexOf("&#", i);
                if (j != -1)
                {
                    int k = s.indexOf(';', j);
                    if (k != -1)
                    {
                        l = j + 2;
                        int i1 = -1;
                        do
                        {
                            if (l >= k)
                            {
                                break;
                            }
                            char c = s.charAt(l);
                            if ('0' > c || c > '9')
                            {
                                break;
                            }
                            int j1;
                            if (i1 == -1)
                            {
                                j1 = 0;
                            } else
                            {
                                j1 = i1 * 10;
                            }
                            i1 = -48 + (j1 + c);
                            l++;
                        } while (true);
                        if (l != k)
                        {
                            i1 = -1;
                        }
                        if (i1 != -1)
                        {
                            stringbuffer.append((char)i1);
                            i = k + 1;
                            continue;
                        }
                        for (; i < l; i++)
                        {
                            stringbuffer.append(s.charAt(i));
                        }

                        break label0;
                    }
                }
                if (stringbuffer.length() == 0)
                {
                    return s;
                } else
                {
                    stringbuffer.append(s.substring(i, s.length()));
                    return stringbuffer.toString();
                }
            }
            i = l;
        } while (true);
    }
}
