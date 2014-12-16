// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.language;

import com.etermax.h;
import com.etermax.o;

// Referenced classes of package com.etermax.gamescommon.language:
//            Language

public final class LanguageResourceMapper extends Enum
{

    private static final LanguageResourceMapper $VALUES[];
    public static final LanguageResourceMapper AF;
    public static final LanguageResourceMapper AR;
    public static final LanguageResourceMapper BG;
    public static final LanguageResourceMapper CA;
    public static final LanguageResourceMapper CS;
    public static final LanguageResourceMapper CY;
    public static final LanguageResourceMapper DA;
    public static final LanguageResourceMapper DE;
    public static final LanguageResourceMapper EL;
    public static final LanguageResourceMapper EN;
    public static final LanguageResourceMapper EN_UK;
    public static final LanguageResourceMapper EN_US;
    public static final LanguageResourceMapper EO;
    public static final LanguageResourceMapper ES;
    public static final LanguageResourceMapper ES_ES;
    public static final LanguageResourceMapper ES_LA;
    public static final LanguageResourceMapper ET;
    public static final LanguageResourceMapper EU;
    public static final LanguageResourceMapper FI;
    public static final LanguageResourceMapper FR;
    public static final LanguageResourceMapper GA;
    public static final LanguageResourceMapper HE;
    public static final LanguageResourceMapper HI;
    public static final LanguageResourceMapper HR;
    public static final LanguageResourceMapper HU;
    public static final LanguageResourceMapper ID;
    public static final LanguageResourceMapper IS;
    public static final LanguageResourceMapper IT;
    public static final LanguageResourceMapper JA;
    public static final LanguageResourceMapper KO;
    public static final LanguageResourceMapper LA;
    public static final LanguageResourceMapper LT;
    public static final LanguageResourceMapper LV;
    public static final LanguageResourceMapper MS_LATN;
    public static final LanguageResourceMapper NL;
    public static final LanguageResourceMapper NW;
    public static final LanguageResourceMapper PO;
    public static final LanguageResourceMapper PT;
    public static final LanguageResourceMapper PT_BR;
    public static final LanguageResourceMapper RO;
    public static final LanguageResourceMapper RU;
    public static final LanguageResourceMapper SK;
    public static final LanguageResourceMapper SL;
    public static final LanguageResourceMapper SV;
    public static final LanguageResourceMapper TH;
    public static final LanguageResourceMapper TR;
    public static final LanguageResourceMapper UK;
    public static final LanguageResourceMapper ZH_HANS;
    private final Language code;
    private final int flagResource;
    private final int nameResource;

    private LanguageResourceMapper(String s, int i, Language language, int j, int k)
    {
        super(s, i);
        code = language;
        flagResource = j;
        nameResource = k;
    }

    public static LanguageResourceMapper getByCode(Language language)
    {
        LanguageResourceMapper alanguageresourcemapper[] = values();
        int i = alanguageresourcemapper.length;
        for (int j = 0; j < i; j++)
        {
            LanguageResourceMapper languageresourcemapper = alanguageresourcemapper[j];
            if (languageresourcemapper.getCode() == language)
            {
                return languageresourcemapper;
            }
        }

        return null;
    }

    public static LanguageResourceMapper getByString(String s)
    {
        Language language = Language.get(s, true);
        LanguageResourceMapper alanguageresourcemapper[] = values();
        int i = alanguageresourcemapper.length;
        for (int j = 0; j < i; j++)
        {
            LanguageResourceMapper languageresourcemapper = alanguageresourcemapper[j];
            if (languageresourcemapper.code == language)
            {
                return languageresourcemapper;
            }
        }

        return getDefault();
    }

    public static LanguageResourceMapper getDefault()
    {
        return EN;
    }

    public static LanguageResourceMapper valueOf(String s)
    {
        return (LanguageResourceMapper)Enum.valueOf(com/etermax/gamescommon/language/LanguageResourceMapper, s);
    }

    public static LanguageResourceMapper[] values()
    {
        return (LanguageResourceMapper[])$VALUES.clone();
    }

    public Language getCode()
    {
        return code;
    }

    public int getFlagResource()
    {
        return flagResource;
    }

    public int getNameResource()
    {
        return nameResource;
    }

    static 
    {
        ES = new LanguageResourceMapper("ES", 0, Language.ES, h.country_es, o.language_es);
        EN = new LanguageResourceMapper("EN", 1, Language.EN, h.country_us, o.language_en);
        FR = new LanguageResourceMapper("FR", 2, Language.FR, h.country_fr, o.language_fr);
        DE = new LanguageResourceMapper("DE", 3, Language.DE, h.country_de, o.language_de);
        IT = new LanguageResourceMapper("IT", 4, Language.IT, h.country_it, o.language_it);
        SV = new LanguageResourceMapper("SV", 5, Language.SV, h.country_se, o.language_sv);
        CA = new LanguageResourceMapper("CA", 6, Language.CA, h.language_flag_catalan, o.language_ca);
        PT = new LanguageResourceMapper("PT", 7, Language.PT, h.country_pt, o.language_pt);
        PT_BR = new LanguageResourceMapper("PT_BR", 8, Language.PT_BR, h.country_br, o.language_pt_br);
        NL = new LanguageResourceMapper("NL", 9, Language.NL, h.country_nl, o.language_nl);
        EN_UK = new LanguageResourceMapper("EN_UK", 10, Language.EN_UK, h.country_gb, o.language_en_uk);
        EU = new LanguageResourceMapper("EU", 11, Language.EU, h.language_flag_euskera, o.language_eu);
        GA = new LanguageResourceMapper("GA", 12, Language.GA, h.language_flag_galicia, o.language_ga);
        NW = new LanguageResourceMapper("NW", 13, Language.NW, h.country_no, o.language_nw);
        PO = new LanguageResourceMapper("PO", 14, Language.PO, h.country_pl, o.language_po);
        RU = new LanguageResourceMapper("RU", 15, Language.RU, h.country_ru, o.language_ru);
        TR = new LanguageResourceMapper("TR", 16, Language.TR, h.country_tr, o.language_tr);
        AR = new LanguageResourceMapper("AR", 17, Language.AR, h.country_sa, o.language_ar);
        FI = new LanguageResourceMapper("FI", 18, Language.FI, h.country_fi, o.language_fi);
        HE = new LanguageResourceMapper("HE", 19, Language.HE, h.country_il, o.language_he);
        ZH_HANS = new LanguageResourceMapper("ZH_HANS", 20, Language.ZH_HANS, h.country_cn, o.language_zh_hans);
        KO = new LanguageResourceMapper("KO", 21, Language.KO, h.country_kr, o.language_ko);
        JA = new LanguageResourceMapper("JA", 22, Language.JA, h.country_jp, o.language_ja);
        HI = new LanguageResourceMapper("HI", 23, Language.HI, h.country_in, o.language_hi);
        TH = new LanguageResourceMapper("TH", 24, Language.TH, h.country_th, o.language_th);
        DA = new LanguageResourceMapper("DA", 25, Language.DA, h.country_dk, o.language_da);
        ID = new LanguageResourceMapper("ID", 26, Language.ID, h.country_id, o.language_id);
        BG = new LanguageResourceMapper("BG", 27, Language.BG, h.country_bg, o.language_bg);
        HR = new LanguageResourceMapper("HR", 28, Language.HR, h.country_hr, o.language_hr);
        CS = new LanguageResourceMapper("CS", 29, Language.CS, h.country_cz, o.language_cs);
        EO = new LanguageResourceMapper("EO", 30, Language.EO, h.language_flag_esperanto, o.language_eo);
        ET = new LanguageResourceMapper("ET", 31, Language.ET, h.country_ee, o.language_et);
        EL = new LanguageResourceMapper("EL", 32, Language.EL, h.country_gr, o.language_el);
        HU = new LanguageResourceMapper("HU", 33, Language.HU, h.country_hu, o.language_hu);
        IS = new LanguageResourceMapper("IS", 34, Language.IS, h.country_is, o.language_is);
        LA = new LanguageResourceMapper("LA", 35, Language.LA, h.language_flag_latin, o.language_la);
        LV = new LanguageResourceMapper("LV", 36, Language.LV, h.country_lv, o.language_lv);
        LT = new LanguageResourceMapper("LT", 37, Language.LT, h.country_lt, o.language_lt);
        MS_LATN = new LanguageResourceMapper("MS_LATN", 38, Language.MS_LATN, h.country_my, o.language_ms_latn);
        RO = new LanguageResourceMapper("RO", 39, Language.RO, h.country_ro, o.language_ro);
        SK = new LanguageResourceMapper("SK", 40, Language.SK, h.country_sk, o.language_sk);
        SL = new LanguageResourceMapper("SL", 41, Language.SL, h.country_si, o.language_sl);
        UK = new LanguageResourceMapper("UK", 42, Language.UK, h.country_ua, o.language_uk);
        CY = new LanguageResourceMapper("CY", 43, Language.CY, h.language_flag_wales, o.language_cy);
        ES_LA = new LanguageResourceMapper("ES_LA", 44, Language.ES_LA, h.language_flag_latam, o.language_es);
        ES_ES = new LanguageResourceMapper("ES_ES", 45, Language.ES_ES, h.country_es, o.language_es);
        EN_US = new LanguageResourceMapper("EN_US", 46, Language.EN_US, h.country_us, o.language_en);
        AF = new LanguageResourceMapper("AF", 47, Language.AF, h.language_flag_africanunion, o.language_af);
        LanguageResourceMapper alanguageresourcemapper[] = new LanguageResourceMapper[48];
        alanguageresourcemapper[0] = ES;
        alanguageresourcemapper[1] = EN;
        alanguageresourcemapper[2] = FR;
        alanguageresourcemapper[3] = DE;
        alanguageresourcemapper[4] = IT;
        alanguageresourcemapper[5] = SV;
        alanguageresourcemapper[6] = CA;
        alanguageresourcemapper[7] = PT;
        alanguageresourcemapper[8] = PT_BR;
        alanguageresourcemapper[9] = NL;
        alanguageresourcemapper[10] = EN_UK;
        alanguageresourcemapper[11] = EU;
        alanguageresourcemapper[12] = GA;
        alanguageresourcemapper[13] = NW;
        alanguageresourcemapper[14] = PO;
        alanguageresourcemapper[15] = RU;
        alanguageresourcemapper[16] = TR;
        alanguageresourcemapper[17] = AR;
        alanguageresourcemapper[18] = FI;
        alanguageresourcemapper[19] = HE;
        alanguageresourcemapper[20] = ZH_HANS;
        alanguageresourcemapper[21] = KO;
        alanguageresourcemapper[22] = JA;
        alanguageresourcemapper[23] = HI;
        alanguageresourcemapper[24] = TH;
        alanguageresourcemapper[25] = DA;
        alanguageresourcemapper[26] = ID;
        alanguageresourcemapper[27] = BG;
        alanguageresourcemapper[28] = HR;
        alanguageresourcemapper[29] = CS;
        alanguageresourcemapper[30] = EO;
        alanguageresourcemapper[31] = ET;
        alanguageresourcemapper[32] = EL;
        alanguageresourcemapper[33] = HU;
        alanguageresourcemapper[34] = IS;
        alanguageresourcemapper[35] = LA;
        alanguageresourcemapper[36] = LV;
        alanguageresourcemapper[37] = LT;
        alanguageresourcemapper[38] = MS_LATN;
        alanguageresourcemapper[39] = RO;
        alanguageresourcemapper[40] = SK;
        alanguageresourcemapper[41] = SL;
        alanguageresourcemapper[42] = UK;
        alanguageresourcemapper[43] = CY;
        alanguageresourcemapper[44] = ES_LA;
        alanguageresourcemapper[45] = ES_ES;
        alanguageresourcemapper[46] = EN_US;
        alanguageresourcemapper[47] = AF;
        $VALUES = alanguageresourcemapper;
    }
}
