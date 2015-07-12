// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.a;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.util.TypedValue;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.Toast;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class b
{

    private static final Pattern a = Pattern.compile("[a-zA-Z0-9\\+\\.\\_\\%\\-\\+]{1,256}\\@[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}(\\.[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25})+");
    private static final Pattern b = Pattern.compile("([a-zA-Z0-9]+[_.]*)+");
    private static Map c;

    public static String a()
    {
        return Build.MODEL;
    }

    public static transient String a(Context context, String s, Object aobj[])
    {
        int i = context.getResources().getIdentifier(s, "string", context.getPackageName());
        String s1;
        try
        {
            s1 = context.getString(i, aobj);
        }
        catch (android.content.res.Resources.NotFoundException notfoundexception)
        {
            notfoundexception.printStackTrace();
            return "";
        }
        return s1;
    }

    public static void a(Context context)
    {
        ((InputMethodManager)context.getSystemService("input_method")).toggleSoftInput(2, 0);
    }

    public static void a(Context context, int i)
    {
        a(context, context.getString(i));
    }

    public static void a(Context context, String s)
    {
        a(context, s, 0);
    }

    private static void a(Context context, String s, int i)
    {
        Toast.makeText(context, s, i).show();
    }

    public static void a(EditText edittext, String s, int i)
    {
        ForegroundColorSpan foregroundcolorspan = new ForegroundColorSpan(i);
        SpannableStringBuilder spannablestringbuilder = new SpannableStringBuilder(s);
        spannablestringbuilder.setSpan(foregroundcolorspan, 0, s.length(), 0);
        edittext.setError(spannablestringbuilder);
    }

    public static boolean a(String s)
    {
        return a.matcher(s).matches();
    }

    public static float b(Context context, int i)
    {
        return TypedValue.applyDimension(1, i, context.getResources().getDisplayMetrics());
    }

    public static String b()
    {
        return android.os.Build.VERSION.RELEASE;
    }

    public static void b(Context context)
    {
        ((InputMethodManager)context.getSystemService("input_method")).toggleSoftInput(1, 0);
    }

    public static boolean b(Context context, String s)
    {
        PackageManager packagemanager = context.getPackageManager();
        try
        {
            packagemanager.getPackageInfo(s, 1);
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            return false;
        }
        return true;
    }

    public static boolean b(String s)
    {
        return b.matcher(s).matches();
    }

    public static int c(Context context, String s)
    {
        int i = context.getResources().getIdentifier(s, "drawable", context.getPackageName());
        try
        {
            context.getResources().getDrawable(i);
        }
        catch (android.content.res.Resources.NotFoundException notfoundexception)
        {
            notfoundexception.printStackTrace();
            return 0;
        }
        return i;
    }

    public static String c(Context context)
    {
        return android.provider.Settings.Secure.getString(context.getContentResolver(), "android_id");
    }

    public static String c(String s)
    {
        String as[] = s.trim().split(" ");
        if (as.length < 2)
        {
            return s;
        }
        String s1 = "";
        int i = as.length;
        int j = 0;
        boolean flag = true;
        while (j < i) 
        {
            String s2 = as[j];
            if (flag)
            {
                flag = false;
            } else
            if (s2 != null)
            {
                if (s2.equals(""))
                {
                    s2 = s1;
                } else
                {
                    s2 = (new StringBuilder()).append(s1).append(" ").append(s2.substring(0, 1).toUpperCase()).append(".").toString();
                }
            } else
            {
                s2 = s1;
            }
            j++;
            s1 = s2;
        }
        return s1;
    }

    public static String d(Context context)
    {
        String s;
        try
        {
            s = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            return "";
        }
        return s;
    }

    public static String d(String s)
    {
        if (c == null || c.size() == 0)
        {
            c = new HashMap();
            c.put(Character.valueOf('\300'), Character.valueOf('A'));
            c.put(Character.valueOf('\301'), Character.valueOf('A'));
            c.put(Character.valueOf('\302'), Character.valueOf('A'));
            c.put(Character.valueOf('\303'), Character.valueOf('A'));
            c.put(Character.valueOf('\304'), Character.valueOf('A'));
            c.put(Character.valueOf('\310'), Character.valueOf('E'));
            c.put(Character.valueOf('\311'), Character.valueOf('E'));
            c.put(Character.valueOf('\312'), Character.valueOf('E'));
            c.put(Character.valueOf('\313'), Character.valueOf('E'));
            c.put(Character.valueOf('\315'), Character.valueOf('I'));
            c.put(Character.valueOf('\314'), Character.valueOf('I'));
            c.put(Character.valueOf('\316'), Character.valueOf('I'));
            c.put(Character.valueOf('\317'), Character.valueOf('I'));
            c.put(Character.valueOf('\331'), Character.valueOf('U'));
            c.put(Character.valueOf('\332'), Character.valueOf('U'));
            c.put(Character.valueOf('\333'), Character.valueOf('U'));
            c.put(Character.valueOf('\334'), Character.valueOf('U'));
            c.put(Character.valueOf('\322'), Character.valueOf('O'));
            c.put(Character.valueOf('\323'), Character.valueOf('O'));
            c.put(Character.valueOf('\324'), Character.valueOf('O'));
            c.put(Character.valueOf('\325'), Character.valueOf('O'));
            c.put(Character.valueOf('\326'), Character.valueOf('O'));
            c.put(Character.valueOf('\321'), Character.valueOf('N'));
            c.put(Character.valueOf('\307'), Character.valueOf('C'));
            c.put(Character.valueOf('\340'), Character.valueOf('a'));
            c.put(Character.valueOf('\341'), Character.valueOf('a'));
            c.put(Character.valueOf('\342'), Character.valueOf('a'));
            c.put(Character.valueOf('\343'), Character.valueOf('a'));
            c.put(Character.valueOf('\344'), Character.valueOf('a'));
            c.put(Character.valueOf('\350'), Character.valueOf('e'));
            c.put(Character.valueOf('\351'), Character.valueOf('e'));
            c.put(Character.valueOf('\352'), Character.valueOf('e'));
            c.put(Character.valueOf('\353'), Character.valueOf('e'));
            c.put(Character.valueOf('\355'), Character.valueOf('i'));
            c.put(Character.valueOf('\354'), Character.valueOf('i'));
            c.put(Character.valueOf('\356'), Character.valueOf('i'));
            c.put(Character.valueOf('\357'), Character.valueOf('i'));
            c.put(Character.valueOf('\371'), Character.valueOf('u'));
            c.put(Character.valueOf('\372'), Character.valueOf('u'));
            c.put(Character.valueOf('\373'), Character.valueOf('u'));
            c.put(Character.valueOf('\374'), Character.valueOf('u'));
            c.put(Character.valueOf('\362'), Character.valueOf('o'));
            c.put(Character.valueOf('\363'), Character.valueOf('o'));
            c.put(Character.valueOf('\364'), Character.valueOf('o'));
            c.put(Character.valueOf('\365'), Character.valueOf('o'));
            c.put(Character.valueOf('\366'), Character.valueOf('o'));
            c.put(Character.valueOf('\361'), Character.valueOf('n'));
            c.put(Character.valueOf('\347'), Character.valueOf('c'));
        }
        if (s == null)
        {
            return "";
        }
        StringBuilder stringbuilder = new StringBuilder(s);
        for (int i = 0; i < s.length(); i++)
        {
            Character character = (Character)c.get(Character.valueOf(stringbuilder.charAt(i)));
            if (character != null)
            {
                stringbuilder.setCharAt(i, character.charValue());
            }
        }

        return stringbuilder.toString();
    }

    public static String e(Context context)
    {
        String s = d(context);
        int i = s.indexOf("RC");
        if (i > 0)
        {
            s = s.substring(0, i);
        } else
        {
            int j = s.indexOf('-');
            if (j > 0)
            {
                return s.substring(0, j);
            }
        }
        return s;
    }

    public static boolean f(Context context)
    {
label0:
        {
            boolean flag;
            boolean flag1;
            boolean flag2;
            if ((0xf & context.getResources().getConfiguration().screenLayout) == 4)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if ((0xf & context.getResources().getConfiguration().screenLayout) == 3)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            if (!flag)
            {
                flag2 = false;
                if (!flag1)
                {
                    break label0;
                }
            }
            flag2 = true;
        }
        return flag2;
    }

    public static boolean g(Context context)
    {
        NetworkInfo networkinfo = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        return networkinfo != null && networkinfo.isConnectedOrConnecting();
    }

}
