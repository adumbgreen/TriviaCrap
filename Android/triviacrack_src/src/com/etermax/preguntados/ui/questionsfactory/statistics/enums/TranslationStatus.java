// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.statistics.enums;


public final class TranslationStatus extends Enum
{

    private static final TranslationStatus $VALUES[];
    public static final TranslationStatus DISABLED;
    public static final TranslationStatus DISAPPROVED;
    public static final TranslationStatus IMPORTED;
    public static final TranslationStatus ONLINE;
    public static final TranslationStatus PENDING;
    public static final TranslationStatus PRE_PROD;
    public static final TranslationStatus PROD;

    private TranslationStatus(String s, int i)
    {
        super(s, i);
    }

    public static TranslationStatus valueOf(String s)
    {
        return (TranslationStatus)Enum.valueOf(com/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus, s);
    }

    public static TranslationStatus[] values()
    {
        return (TranslationStatus[])$VALUES.clone();
    }

    static 
    {
        PENDING = new TranslationStatus("PENDING", 0);
        DISAPPROVED = new TranslationStatus("DISAPPROVED", 1);
        DISABLED = new TranslationStatus("DISABLED", 2);
        PRE_PROD = new TranslationStatus("PRE_PROD", 3);
        PROD = new TranslationStatus("PROD", 4);
        ONLINE = new TranslationStatus("ONLINE", 5);
        IMPORTED = new TranslationStatus("IMPORTED", 6);
        TranslationStatus atranslationstatus[] = new TranslationStatus[7];
        atranslationstatus[0] = PENDING;
        atranslationstatus[1] = DISAPPROVED;
        atranslationstatus[2] = DISABLED;
        atranslationstatus[3] = PRE_PROD;
        atranslationstatus[4] = PROD;
        atranslationstatus[5] = ONLINE;
        atranslationstatus[6] = IMPORTED;
        $VALUES = atranslationstatus;
    }
}
