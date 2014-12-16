// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.statistics.enums;


public final class TranslationOrigin extends Enum
{

    private static final TranslationOrigin $VALUES[];
    public static final TranslationOrigin ORIGINAL;
    public static final TranslationOrigin TRANSLATION;

    private TranslationOrigin(String s, int i)
    {
        super(s, i);
    }

    public static TranslationOrigin valueOf(String s)
    {
        return (TranslationOrigin)Enum.valueOf(com/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin, s);
    }

    public static TranslationOrigin[] values()
    {
        return (TranslationOrigin[])$VALUES.clone();
    }

    static 
    {
        ORIGINAL = new TranslationOrigin("ORIGINAL", 0);
        TRANSLATION = new TranslationOrigin("TRANSLATION", 1);
        TranslationOrigin atranslationorigin[] = new TranslationOrigin[2];
        atranslationorigin[0] = ORIGINAL;
        atranslationorigin[1] = TRANSLATION;
        $VALUES = atranslationorigin;
    }
}
