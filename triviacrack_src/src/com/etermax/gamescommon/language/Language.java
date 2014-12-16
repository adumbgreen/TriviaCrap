// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.language;

import android.text.TextUtils;
import com.etermax.a.a;

public final class Language extends Enum
{

    private static final Language $VALUES[];
    public static final Language AF;
    public static final Language AR;
    public static final Language BG;
    public static final Language CA;
    public static final Language CS;
    public static final Language CY;
    public static final Language DA;
    public static final Language DE;
    public static final Language DEFAULT_LANGUAGE;
    public static final Language EL;
    public static final Language EN;
    public static final Language EN_UK;
    public static final Language EN_US;
    public static final Language EO;
    public static final Language ES;
    public static final Language ES_ES;
    public static final Language ES_LA;
    public static final Language ET;
    public static final Language EU;
    public static final Language FI;
    public static final Language FR;
    public static final Language GA;
    public static final Language HE;
    public static final Language HI;
    public static final Language HR;
    public static final Language HU;
    public static final Language ID;
    public static final Language IS;
    public static final Language IT;
    public static final Language JA;
    public static final Language KO;
    public static final Language LA;
    public static final Language LT;
    public static final Language LV;
    public static final Language MS_LATN;
    public static final Language NL;
    public static final Language NW;
    public static final Language PO;
    public static final Language PT;
    public static final Language PT_BR;
    public static final Language RO;
    public static final Language RU;
    public static final Language SK;
    public static final Language SL;
    public static final Language SV;
    public static final Language TH;
    public static final Language TR;
    public static final Language UK;
    public static final Language ZH_HANS;

    private Language(String s, int i)
    {
        super(s, i);
    }

    public static Language get(String s)
    {
        return get(s, false);
    }

    public static Language get(String s, boolean flag)
    {
        Language language;
        try
        {
            if (TextUtils.isEmpty(s))
            {
                return DEFAULT_LANGUAGE;
            }
            if (s.equalsIgnoreCase("PT-BR"))
            {
                return PT_BR;
            }
            if (s.equalsIgnoreCase("EN-UK"))
            {
                return EN_UK;
            }
            language = valueOf(s.toUpperCase());
        }
        catch (Exception exception)
        {
            if (flag)
            {
                return DEFAULT_LANGUAGE;
            } else
            {
                a.a("Language", "error in: ", exception);
                return null;
            }
        }
        return language;
    }

    public static Language valueOf(String s)
    {
        return (Language)Enum.valueOf(com/etermax/gamescommon/language/Language, s);
    }

    public static Language[] values()
    {
        return (Language[])$VALUES.clone();
    }

    static 
    {
        ES = new Language("ES", 0);
        EN = new Language("EN", 1);
        FR = new Language("FR", 2);
        DE = new Language("DE", 3);
        IT = new Language("IT", 4);
        SV = new Language("SV", 5);
        CA = new Language("CA", 6);
        PT = new Language("PT", 7);
        PT_BR = new Language("PT_BR", 8);
        NL = new Language("NL", 9);
        EN_UK = new Language("EN_UK", 10);
        EU = new Language("EU", 11);
        GA = new Language("GA", 12);
        NW = new Language("NW", 13);
        PO = new Language("PO", 14);
        RU = new Language("RU", 15);
        TR = new Language("TR", 16);
        AR = new Language("AR", 17);
        FI = new Language("FI", 18);
        HE = new Language("HE", 19);
        ZH_HANS = new Language("ZH_HANS", 20);
        KO = new Language("KO", 21);
        JA = new Language("JA", 22);
        HI = new Language("HI", 23);
        TH = new Language("TH", 24);
        DA = new Language("DA", 25);
        ID = new Language("ID", 26);
        BG = new Language("BG", 27);
        HR = new Language("HR", 28);
        CS = new Language("CS", 29);
        EO = new Language("EO", 30);
        ET = new Language("ET", 31);
        EL = new Language("EL", 32);
        HU = new Language("HU", 33);
        IS = new Language("IS", 34);
        LA = new Language("LA", 35);
        LV = new Language("LV", 36);
        LT = new Language("LT", 37);
        MS_LATN = new Language("MS_LATN", 38);
        RO = new Language("RO", 39);
        SK = new Language("SK", 40);
        SL = new Language("SL", 41);
        UK = new Language("UK", 42);
        CY = new Language("CY", 43);
        ES_LA = new Language("ES_LA", 44);
        ES_ES = new Language("ES_ES", 45);
        EN_US = new Language("EN_US", 46);
        AF = new Language("AF", 47);
        Language alanguage[] = new Language[48];
        alanguage[0] = ES;
        alanguage[1] = EN;
        alanguage[2] = FR;
        alanguage[3] = DE;
        alanguage[4] = IT;
        alanguage[5] = SV;
        alanguage[6] = CA;
        alanguage[7] = PT;
        alanguage[8] = PT_BR;
        alanguage[9] = NL;
        alanguage[10] = EN_UK;
        alanguage[11] = EU;
        alanguage[12] = GA;
        alanguage[13] = NW;
        alanguage[14] = PO;
        alanguage[15] = RU;
        alanguage[16] = TR;
        alanguage[17] = AR;
        alanguage[18] = FI;
        alanguage[19] = HE;
        alanguage[20] = ZH_HANS;
        alanguage[21] = KO;
        alanguage[22] = JA;
        alanguage[23] = HI;
        alanguage[24] = TH;
        alanguage[25] = DA;
        alanguage[26] = ID;
        alanguage[27] = BG;
        alanguage[28] = HR;
        alanguage[29] = CS;
        alanguage[30] = EO;
        alanguage[31] = ET;
        alanguage[32] = EL;
        alanguage[33] = HU;
        alanguage[34] = IS;
        alanguage[35] = LA;
        alanguage[36] = LV;
        alanguage[37] = LT;
        alanguage[38] = MS_LATN;
        alanguage[39] = RO;
        alanguage[40] = SK;
        alanguage[41] = SL;
        alanguage[42] = UK;
        alanguage[43] = CY;
        alanguage[44] = ES_LA;
        alanguage[45] = ES_ES;
        alanguage[46] = EN_US;
        alanguage[47] = AF;
        $VALUES = alanguage;
        DEFAULT_LANGUAGE = EN_UK;
    }
}
