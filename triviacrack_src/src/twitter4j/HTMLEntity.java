// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package twitter4j:
//            EntityIndex, UserMentionEntity, URLEntity, HashtagEntity, 
//            MediaEntity

final class HTMLEntity
{

    private static final Map entityEscapeMap;
    private static final Map escapeEntityMap;

    HTMLEntity()
    {
    }

    static String escape(String s)
    {
        StringBuilder stringbuilder = new StringBuilder(s);
        escape(stringbuilder);
        return stringbuilder.toString();
    }

    static void escape(StringBuilder stringbuilder)
    {
        for (int i = 0; i < stringbuilder.length();)
        {
            String s = (String)entityEscapeMap.get(stringbuilder.substring(i, i + 1));
            if (s != null)
            {
                stringbuilder.replace(i, i + 1, s);
                i += s.length();
            } else
            {
                i++;
            }
        }

    }

    static String unescape(String s)
    {
        String s1 = null;
        if (s != null)
        {
            StringBuilder stringbuilder = new StringBuilder(s);
            unescape(stringbuilder);
            s1 = stringbuilder.toString();
        }
        return s1;
    }

    static void unescape(StringBuilder stringbuilder)
    {
        int i = 0;
_L6:
        if (i >= stringbuilder.length()) goto _L2; else goto _L1
_L1:
        int j = stringbuilder.indexOf("&", i);
        if (-1 != j) goto _L3; else goto _L2
_L2:
        int k;
        return;
_L3:
        if (-1 == (k = stringbuilder.indexOf(";", j))) goto _L2; else goto _L4
_L4:
        String s = stringbuilder.substring(j, k + 1);
        String s1 = (String)escapeEntityMap.get(s);
        if (s1 != null)
        {
            stringbuilder.replace(j, k + 1, s1);
        }
        i = j + 1;
        if (true) goto _L6; else goto _L5
_L5:
    }

    static String unescapeAndSlideEntityIncdices(String s, UserMentionEntity ausermentionentity[], URLEntity aurlentity[], HashtagEntity ahashtagentity[], MediaEntity amediaentity[])
    {
        int i;
        int j;
        int k;
        int l;
        int i1;
        int j1;
        int k1;
        EntityIndex aentityindex[];
        int l1;
        StringBuilder stringbuilder;
        int i2;
        int j2;
        boolean flag;
        char c;
        int k2;
        int l2;
        int i3;
        boolean flag1;
        int j3;
        int k3;
        String s1;
        String s2;
        if (ausermentionentity == null)
        {
            i = 0;
        } else
        {
            i = ausermentionentity.length;
        }
        j = 0 + i;
        if (aurlentity == null)
        {
            k = 0;
        } else
        {
            k = aurlentity.length;
        }
        l = j + k;
        if (ahashtagentity == null)
        {
            i1 = 0;
        } else
        {
            i1 = ahashtagentity.length;
        }
        j1 = l + i1;
        if (amediaentity == null)
        {
            k1 = 0;
        } else
        {
            k1 = amediaentity.length;
        }
        aentityindex = new EntityIndex[k1 + j1];
        if (ausermentionentity != null)
        {
            System.arraycopy(ausermentionentity, 0, aentityindex, 0, ausermentionentity.length);
            l1 = 0 + ausermentionentity.length;
        } else
        {
            l1 = 0;
        }
        if (aurlentity != null)
        {
            System.arraycopy(aurlentity, 0, aentityindex, l1, aurlentity.length);
            l1 += aurlentity.length;
        }
        if (ahashtagentity != null)
        {
            System.arraycopy(ahashtagentity, 0, aentityindex, l1, ahashtagentity.length);
            l1 += ahashtagentity.length;
        }
        if (amediaentity != null)
        {
            System.arraycopy(amediaentity, 0, aentityindex, l1, amediaentity.length);
        }
        Arrays.sort(aentityindex);
        stringbuilder = new StringBuilder(s.length());
        i2 = 0;
        j2 = 0;
        flag = true;
        if (i2 >= s.length())
        {
            break; /* Loop/switch isn't completed */
        }
        c = s.charAt(i2);
        if (c == '&')
        {
            k3 = s.indexOf(";", i2);
            if (-1 != k3)
            {
                s1 = s.substring(i2, k3 + 1);
                s2 = (String)escapeEntityMap.get(s1);
                if (s2 != null)
                {
                    stringbuilder.append(s2);
                    l2 = 1 - s1.length();
                    k2 = k3;
                } else
                {
                    stringbuilder.append(c);
                    k2 = i2;
                    l2 = 0;
                }
            } else
            {
                stringbuilder.append(c);
                k2 = i2;
                l2 = 0;
            }
        } else
        {
            stringbuilder.append(c);
            k2 = i2;
            l2 = 0;
        }
        if (j2 >= aentityindex.length)
        {
            break MISSING_BLOCK_LABEL_502;
        }
        if (flag)
        {
            if (aentityindex[j2].getStart() != l2 + k2)
            {
                break MISSING_BLOCK_LABEL_502;
            }
            aentityindex[j2].setStart(-1 + stringbuilder.length());
            i3 = j2;
            flag1 = false;
        } else
        {
            if (aentityindex[j2].getEnd() != l2 + k2)
            {
                break MISSING_BLOCK_LABEL_502;
            }
            aentityindex[j2].setEnd(-1 + stringbuilder.length());
            i3 = j2 + 1;
            flag1 = true;
        }
_L4:
        j3 = k2 + 1;
        flag = flag1;
        j2 = i3;
        i2 = j3;
        if (true) goto _L2; else goto _L1
_L2:
        break MISSING_BLOCK_LABEL_168;
_L1:
        if (j2 < aentityindex.length && aentityindex[j2].getEnd() == s.length())
        {
            aentityindex[j2].setEnd(stringbuilder.length());
        }
        return stringbuilder.toString();
        i3 = j2;
        flag1 = flag;
        if (true) goto _L4; else goto _L3
_L3:
    }

    static 
    {
        entityEscapeMap = new HashMap();
        escapeEntityMap = new HashMap();
        String as[][] = {
            {
                "&nbsp;", "&#160;", "\240"
            }, {
                "&iexcl;", "&#161;", "\241"
            }, {
                "&cent;", "&#162;", "\242"
            }, {
                "&pound;", "&#163;", "\243"
            }, {
                "&curren;", "&#164;", "\244"
            }, {
                "&yen;", "&#165;", "\245"
            }, {
                "&brvbar;", "&#166;", "\246"
            }, {
                "&sect;", "&#167;", "\247"
            }, {
                "&uml;", "&#168;", "\250"
            }, {
                "&copy;", "&#169;", "\251"
            }, {
                "&ordf;", "&#170;", "\252"
            }, {
                "&laquo;", "&#171;", "\253"
            }, {
                "&not;", "&#172;", "\254"
            }, {
                "&shy;", "&#173;", "\255"
            }, {
                "&reg;", "&#174;", "\256"
            }, {
                "&macr;", "&#175;", "\257"
            }, {
                "&deg;", "&#176;", "\260"
            }, {
                "&plusmn;", "&#177;", "\261"
            }, {
                "&sup2;", "&#178;", "\262"
            }, {
                "&sup3;", "&#179;", "\263"
            }, {
                "&acute;", "&#180;", "\264"
            }, {
                "&micro;", "&#181;", "\265"
            }, {
                "&para;", "&#182;", "\266"
            }, {
                "&middot;", "&#183;", "\267"
            }, {
                "&cedil;", "&#184;", "\270"
            }, {
                "&sup1;", "&#185;", "\271"
            }, {
                "&ordm;", "&#186;", "\272"
            }, {
                "&raquo;", "&#187;", "\273"
            }, {
                "&frac14;", "&#188;", "\274"
            }, {
                "&frac12;", "&#189;", "\275"
            }, {
                "&frac34;", "&#190;", "\276"
            }, {
                "&iquest;", "&#191;", "\277"
            }, {
                "&Agrave;", "&#192;", "\300"
            }, {
                "&Aacute;", "&#193;", "\301"
            }, {
                "&Acirc;", "&#194;", "\302"
            }, {
                "&Atilde;", "&#195;", "\303"
            }, {
                "&Auml;", "&#196;", "\304"
            }, {
                "&Aring;", "&#197;", "\305"
            }, {
                "&AElig;", "&#198;", "\306"
            }, {
                "&Ccedil;", "&#199;", "\307"
            }, {
                "&Egrave;", "&#200;", "\310"
            }, {
                "&Eacute;", "&#201;", "\311"
            }, {
                "&Ecirc;", "&#202;", "\312"
            }, {
                "&Euml;", "&#203;", "\313"
            }, {
                "&Igrave;", "&#204;", "\314"
            }, {
                "&Iacute;", "&#205;", "\315"
            }, {
                "&Icirc;", "&#206;", "\316"
            }, {
                "&Iuml;", "&#207;", "\317"
            }, {
                "&ETH;", "&#208;", "\320"
            }, {
                "&Ntilde;", "&#209;", "\321"
            }, {
                "&Ograve;", "&#210;", "\322"
            }, {
                "&Oacute;", "&#211;", "\323"
            }, {
                "&Ocirc;", "&#212;", "\324"
            }, {
                "&Otilde;", "&#213;", "\325"
            }, {
                "&Ouml;", "&#214;", "\326"
            }, {
                "&times;", "&#215;", "\327"
            }, {
                "&Oslash;", "&#216;", "\330"
            }, {
                "&Ugrave;", "&#217;", "\331"
            }, {
                "&Uacute;", "&#218;", "\332"
            }, {
                "&Ucirc;", "&#219;", "\333"
            }, {
                "&Uuml;", "&#220;", "\334"
            }, {
                "&Yacute;", "&#221;", "\335"
            }, {
                "&THORN;", "&#222;", "\336"
            }, {
                "&szlig;", "&#223;", "\337"
            }, {
                "&agrave;", "&#224;", "\340"
            }, {
                "&aacute;", "&#225;", "\341"
            }, {
                "&acirc;", "&#226;", "\342"
            }, {
                "&atilde;", "&#227;", "\343"
            }, {
                "&auml;", "&#228;", "\344"
            }, {
                "&aring;", "&#229;", "\345"
            }, {
                "&aelig;", "&#230;", "\346"
            }, {
                "&ccedil;", "&#231;", "\347"
            }, {
                "&egrave;", "&#232;", "\350"
            }, {
                "&eacute;", "&#233;", "\351"
            }, {
                "&ecirc;", "&#234;", "\352"
            }, {
                "&euml;", "&#235;", "\353"
            }, {
                "&igrave;", "&#236;", "\354"
            }, {
                "&iacute;", "&#237;", "\355"
            }, {
                "&icirc;", "&#238;", "\356"
            }, {
                "&iuml;", "&#239;", "\357"
            }, {
                "&eth;", "&#240;", "\360"
            }, {
                "&ntilde;", "&#241;", "\361"
            }, {
                "&ograve;", "&#242;", "\362"
            }, {
                "&oacute;", "&#243;", "\363"
            }, {
                "&ocirc;", "&#244;", "\364"
            }, {
                "&otilde;", "&#245;", "\365"
            }, {
                "&ouml;", "&#246;", "\366"
            }, {
                "&divide;", "&#247;", "\367"
            }, {
                "&oslash;", "&#248;", "\370"
            }, {
                "&ugrave;", "&#249;", "\371"
            }, {
                "&uacute;", "&#250;", "\372"
            }, {
                "&ucirc;", "&#251;", "\373"
            }, {
                "&uuml;", "&#252;", "\374"
            }, {
                "&yacute;", "&#253;", "\375"
            }, {
                "&thorn;", "&#254;", "\376"
            }, {
                "&yuml;", "&#255;", "\377"
            }, {
                "&fnof;", "&#402;", "\u0192"
            }, {
                "&Alpha;", "&#913;", "\u0391"
            }, {
                "&Beta;", "&#914;", "\u0392"
            }, {
                "&Gamma;", "&#915;", "\u0393"
            }, {
                "&Delta;", "&#916;", "\u0394"
            }, {
                "&Epsilon;", "&#917;", "\u0395"
            }, {
                "&Zeta;", "&#918;", "\u0396"
            }, {
                "&Eta;", "&#919;", "\u0397"
            }, {
                "&Theta;", "&#920;", "\u0398"
            }, {
                "&Iota;", "&#921;", "\u0399"
            }, {
                "&Kappa;", "&#922;", "\u039A"
            }, {
                "&Lambda;", "&#923;", "\u039B"
            }, {
                "&Mu;", "&#924;", "\u039C"
            }, {
                "&Nu;", "&#925;", "\u039D"
            }, {
                "&Xi;", "&#926;", "\u039E"
            }, {
                "&Omicron;", "&#927;", "\u039F"
            }, {
                "&Pi;", "&#928;", "\u03A0"
            }, {
                "&Rho;", "&#929;", "\u03A1"
            }, {
                "&Sigma;", "&#931;", "\u03A3"
            }, {
                "&Tau;", "&#932;", "\u03A4"
            }, {
                "&Upsilon;", "&#933;", "\u03A5"
            }, {
                "&Phi;", "&#934;", "\u03A6"
            }, {
                "&Chi;", "&#935;", "\u03A7"
            }, {
                "&Psi;", "&#936;", "\u03A8"
            }, {
                "&Omega;", "&#937;", "\u03A9"
            }, {
                "&alpha;", "&#945;", "\u03B1"
            }, {
                "&beta;", "&#946;", "\u03B2"
            }, {
                "&gamma;", "&#947;", "\u03B3"
            }, {
                "&delta;", "&#948;", "\u03B4"
            }, {
                "&epsilon;", "&#949;", "\u03B5"
            }, {
                "&zeta;", "&#950;", "\u03B6"
            }, {
                "&eta;", "&#951;", "\u03B7"
            }, {
                "&theta;", "&#952;", "\u03B8"
            }, {
                "&iota;", "&#953;", "\u03B9"
            }, {
                "&kappa;", "&#954;", "\u03BA"
            }, {
                "&lambda;", "&#955;", "\u03BB"
            }, {
                "&mu;", "&#956;", "\u03BC"
            }, {
                "&nu;", "&#957;", "\u03BD"
            }, {
                "&xi;", "&#958;", "\u03BE"
            }, {
                "&omicron;", "&#959;", "\u03BF"
            }, {
                "&pi;", "&#960;", "\u03C0"
            }, {
                "&rho;", "&#961;", "\u03C1"
            }, {
                "&sigmaf;", "&#962;", "\u03C2"
            }, {
                "&sigma;", "&#963;", "\u03C3"
            }, {
                "&tau;", "&#964;", "\u03C4"
            }, {
                "&upsilon;", "&#965;", "\u03C5"
            }, {
                "&phi;", "&#966;", "\u03C6"
            }, {
                "&chi;", "&#967;", "\u03C7"
            }, {
                "&psi;", "&#968;", "\u03C8"
            }, {
                "&omega;", "&#969;", "\u03C9"
            }, {
                "&thetasym;", "&#977;", "\u03D1"
            }, {
                "&upsih;", "&#978;", "\u03D2"
            }, {
                "&piv;", "&#982;", "\u03D6"
            }, {
                "&bull;", "&#8226;", "\u2022"
            }, {
                "&hellip;", "&#8230;", "\u2026"
            }, {
                "&prime;", "&#8242;", "\u2032"
            }, {
                "&Prime;", "&#8243;", "\u2033"
            }, {
                "&oline;", "&#8254;", "\u203E"
            }, {
                "&frasl;", "&#8260;", "\u2044"
            }, {
                "&weierp;", "&#8472;", "\u2118"
            }, {
                "&image;", "&#8465;", "\u2111"
            }, {
                "&real;", "&#8476;", "\u211C"
            }, {
                "&trade;", "&#8482;", "\u2122"
            }, {
                "&alefsym;", "&#8501;", "\u2135"
            }, {
                "&larr;", "&#8592;", "\u2190"
            }, {
                "&uarr;", "&#8593;", "\u2191"
            }, {
                "&rarr;", "&#8594;", "\u2192"
            }, {
                "&darr;", "&#8595;", "\u2193"
            }, {
                "&harr;", "&#8596;", "\u2194"
            }, {
                "&crarr;", "&#8629;", "\u21B5"
            }, {
                "&lArr;", "&#8656;", "\u21D0"
            }, {
                "&uArr;", "&#8657;", "\u21D1"
            }, {
                "&rArr;", "&#8658;", "\u21D2"
            }, {
                "&dArr;", "&#8659;", "\u21D3"
            }, {
                "&hArr;", "&#8660;", "\u21D4"
            }, {
                "&forall;", "&#8704;", "\u2200"
            }, {
                "&part;", "&#8706;", "\u2202"
            }, {
                "&exist;", "&#8707;", "\u2203"
            }, {
                "&empty;", "&#8709;", "\u2205"
            }, {
                "&nabla;", "&#8711;", "\u2207"
            }, {
                "&isin;", "&#8712;", "\u2208"
            }, {
                "&notin;", "&#8713;", "\u2209"
            }, {
                "&ni;", "&#8715;", "\u220B"
            }, {
                "&prod;", "&#8719;", "\u220F"
            }, {
                "&sum;", "&#8721;", "\u2211"
            }, {
                "&minus;", "&#8722;", "\u2212"
            }, {
                "&lowast;", "&#8727;", "\u2217"
            }, {
                "&radic;", "&#8730;", "\u221A"
            }, {
                "&prop;", "&#8733;", "\u221D"
            }, {
                "&infin;", "&#8734;", "\u221E"
            }, {
                "&ang;", "&#8736;", "\u2220"
            }, {
                "&and;", "&#8743;", "\u2227"
            }, {
                "&or;", "&#8744;", "\u2228"
            }, {
                "&cap;", "&#8745;", "\u2229"
            }, {
                "&cup;", "&#8746;", "\u222A"
            }, {
                "&int;", "&#8747;", "\u222B"
            }, {
                "&there4;", "&#8756;", "\u2234"
            }, {
                "&sim;", "&#8764;", "\u223C"
            }, {
                "&cong;", "&#8773;", "\u2245"
            }, {
                "&asymp;", "&#8776;", "\u2248"
            }, {
                "&ne;", "&#8800;", "\u2260"
            }, {
                "&equiv;", "&#8801;", "\u2261"
            }, {
                "&le;", "&#8804;", "\u2264"
            }, {
                "&ge;", "&#8805;", "\u2265"
            }, {
                "&sub;", "&#8834;", "\u2282"
            }, {
                "&sup;", "&#8835;", "\u2283"
            }, {
                "&sube;", "&#8838;", "\u2286"
            }, {
                "&supe;", "&#8839;", "\u2287"
            }, {
                "&oplus;", "&#8853;", "\u2295"
            }, {
                "&otimes;", "&#8855;", "\u2297"
            }, {
                "&perp;", "&#8869;", "\u22A5"
            }, {
                "&sdot;", "&#8901;", "\u22C5"
            }, {
                "&lceil;", "&#8968;", "\u2308"
            }, {
                "&rceil;", "&#8969;", "\u2309"
            }, {
                "&lfloor;", "&#8970;", "\u230A"
            }, {
                "&rfloor;", "&#8971;", "\u230B"
            }, {
                "&lang;", "&#9001;", "\u2329"
            }, {
                "&rang;", "&#9002;", "\u232A"
            }, {
                "&loz;", "&#9674;", "\u25CA"
            }, {
                "&spades;", "&#9824;", "\u2660"
            }, {
                "&clubs;", "&#9827;", "\u2663"
            }, {
                "&hearts;", "&#9829;", "\u2665"
            }, {
                "&diams;", "&#9830;", "\u2666"
            }, {
                "&quot;", "&#34;", "\""
            }, {
                "&amp;", "&#38;", "&"
            }, {
                "&lt;", "&#60;", "<"
            }, {
                "&gt;", "&#62;", ">"
            }, {
                "&OElig;", "&#338;", "\u0152"
            }, {
                "&oelig;", "&#339;", "\u0153"
            }, {
                "&Scaron;", "&#352;", "\u0160"
            }, {
                "&scaron;", "&#353;", "\u0161"
            }, {
                "&Yuml;", "&#376;", "\u0178"
            }, {
                "&circ;", "&#710;", "\u02C6"
            }, {
                "&tilde;", "&#732;", "\u02DC"
            }, {
                "&ensp;", "&#8194;", "\u2002"
            }, {
                "&emsp;", "&#8195;", "\u2003"
            }, {
                "&thinsp;", "&#8201;", "\u2009"
            }, {
                "&zwnj;", "&#8204;", "\u200C"
            }, {
                "&zwj;", "&#8205;", "\u200D"
            }, {
                "&lrm;", "&#8206;", "\u200E"
            }, {
                "&rlm;", "&#8207;", "\u200F"
            }, {
                "&ndash;", "&#8211;", "\u2013"
            }, {
                "&mdash;", "&#8212;", "\u2014"
            }, {
                "&lsquo;", "&#8216;", "\u2018"
            }, {
                "&rsquo;", "&#8217;", "\u2019"
            }, {
                "&sbquo;", "&#8218;", "\u201A"
            }, {
                "&ldquo;", "&#8220;", "\u201C"
            }, {
                "&rdquo;", "&#8221;", "\u201D"
            }, {
                "&bdquo;", "&#8222;", "\u201E"
            }, {
                "&dagger;", "&#8224;", "\u2020"
            }, {
                "&Dagger;", "&#8225;", "\u2021"
            }, {
                "&permil;", "&#8240;", "\u2030"
            }, {
                "&lsaquo;", "&#8249;", "\u2039"
            }, {
                "&rsaquo;", "&#8250;", "\u203A"
            }, {
                "&euro;", "&#8364;", "\u20AC"
            }
        };
        int i = as.length;
        for (int j = 0; j < i; j++)
        {
            String as1[] = as[j];
            entityEscapeMap.put(as1[2], as1[0]);
            escapeEntityMap.put(as1[0], as1[2]);
            escapeEntityMap.put(as1[1], as1[2]);
        }

    }
}
