// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.b;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.os.Environment;
import android.util.Log;
import com.admarvel.android.ads.AdMarvelUtils;
import com.admarvel.android.ads.AdMarvelXMLElement;
import com.admarvel.android.ads.AdMarvelXMLReader;
import com.admarvel.android.b.a.b;
import com.admarvel.android.util.Logging;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import javax.xml.parsers.ParserConfigurationException;
import org.xml.sax.SAXException;

// Referenced classes of package com.admarvel.android.b:
//            d, a, b

public class c extends AsyncTask
{

    private static boolean k = false;
    private static boolean l = false;
    private Activity a;
    private final WeakReference b;
    private String c;
    private File d;
    private File e;
    private String f;
    private String g;
    private String h;
    private int i;
    private ArrayList j;

    public c(String s, Activity activity)
    {
        i = -1;
        b = new WeakReference(activity);
        c = s;
    }

    private String a(Activity activity, String s)
    {
        StringBuilder stringbuilder;
        SharedPreferences sharedpreferences;
        boolean flag;
        boolean flag1;
        stringbuilder = new StringBuilder();
        d = activity.getDir("Admarvel", 0);
        e = new File(d, s);
        sharedpreferences = activity.getSharedPreferences("admarvel_preferences", 0);
        String s1 = sharedpreferences.getString("partner_id", "NULL");
        android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
        editor.putString("partner_id", s);
        if (!s1.equals(s))
        {
            File file = new File(d, s1);
            if (file.isDirectory())
            {
                Logging.log("Offline SDK:deleting expired packages");
                com.admarvel.android.b.d.a(file);
            }
        }
        flag = e.mkdir();
        editor.putString("childDirectory", e.getAbsolutePath());
        editor.commit();
        f = "-1";
        flag1 = sharedpreferences.getBoolean("download_started", false);
        if (!flag) goto _L2; else goto _L1
_L1:
        String s2;
        try
        {
            AdMarvelUtils.appendParams(stringbuilder, "partner_id", s);
            AdMarvelUtils.appendParams(stringbuilder, "banner_package", "1");
        }
        catch (Exception exception)
        {
            Logging.log((new StringBuilder()).append("Offline SDK:").append(Log.getStackTraceString(exception)).toString());
            return null;
        }
        return stringbuilder.toString();
_L2:
        if (!e.isDirectory()) goto _L1; else goto _L3
_L3:
        f = sharedpreferences.getString("admarvel_current_version", "-1");
        s2 = sharedpreferences.getString("admarvel_temp_version", "-1");
        if (f.equals("-1")) goto _L5; else goto _L4
_L4:
        AdMarvelUtils.appendParams(stringbuilder, "current_version", f);
          goto _L1
_L5:
        if (!flag1) goto _L1; else goto _L6
_L6:
        if (s2.equals("-1")) goto _L1; else goto _L7
_L7:
        AdMarvelUtils.appendParams(stringbuilder, "current_version", s2);
          goto _L1
    }

    static WeakReference a(c c1)
    {
        return c1.b;
    }

    static ArrayList a(c c1, ArrayList arraylist)
    {
        c1.j = arraylist;
        return arraylist;
    }

    private void a(android.content.SharedPreferences.Editor editor, String s)
    {
        if (editor != null && s != null)
        {
            editor.putString("admarvel_current_version", s);
            if (!editor.commit())
            {
                Logging.log("Offline SDK:package cannot be downloaded because current version cannot be comitted ");
                k = false;
                l = false;
            }
        }
    }

    static void a(c c1, android.content.SharedPreferences.Editor editor, String s)
    {
        c1.a(editor, s);
    }

    private void a(String s)
    {
        AdMarvelXMLReader admarvelxmlreader;
        if (s == null)
        {
            Logging.log("Offline SDK:xml Data is null Exception");
            throw new Exception("xml Data is null");
        }
        Logging.log((new StringBuilder()).append("Offline SDK:check for Update Response:").append(s).toString());
        if (k)
        {
            break MISSING_BLOCK_LABEL_141;
        }
        k = true;
        admarvelxmlreader = new AdMarvelXMLReader();
        AdMarvelXMLElement admarvelxmlelement;
        Object obj;
        admarvelxmlreader.parseXMLString(s);
        admarvelxmlelement = admarvelxmlreader.getParsedXMLData();
        if (b == null)
        {
            break MISSING_BLOCK_LABEL_91;
        }
        obj = b.get();
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_142;
        }
        k = false;
        l = false;
        android.content.SharedPreferences.Editor editor4 = ((Activity)b.get()).getSharedPreferences("admarvel_preferences", 0).edit();
        editor4.putBoolean("download_started", false);
        editor4.commit();
        return;
        LinkedHashMap linkedhashmap;
        ArrayList arraylist;
        LinkedHashMap linkedhashmap1;
        SharedPreferences sharedpreferences;
        linkedhashmap = admarvelxmlelement.c();
        arraylist = (ArrayList)linkedhashmap.get("action");
        linkedhashmap1 = ((AdMarvelXMLElement)((ArrayList)linkedhashmap.get("geoinfo")).get(0)).getAttributes();
        sharedpreferences = ((Activity)b.get()).getSharedPreferences("admarvel_preferences", 0);
        if (sharedpreferences != null)
        {
            break MISSING_BLOCK_LABEL_270;
        }
        Logging.log("Offline SDK:package cannot be downloaded shared preference is null ");
        k = false;
        l = false;
        k = false;
        l = false;
        android.content.SharedPreferences.Editor editor5 = ((Activity)b.get()).getSharedPreferences("admarvel_preferences", 0).edit();
        editor5.putBoolean("download_started", false);
        editor5.commit();
        return;
        android.content.SharedPreferences.Editor editor6;
        editor6 = sharedpreferences.edit();
        editor6.putBoolean("download_started", true);
        editor6.commit();
        Iterator iterator = linkedhashmap1.keySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            String s9 = (String)iterator.next();
            if (!((String)linkedhashmap1.get(s9)).equals(""))
            {
                editor6.putString(s9, (String)linkedhashmap1.get(s9));
            }
        } while (true);
        break MISSING_BLOCK_LABEL_453;
        ParserConfigurationException parserconfigurationexception;
        parserconfigurationexception;
        Logging.log((new StringBuilder()).append("Offline SDK:").append(parserconfigurationexception.getMessage()).toString());
        k = false;
        l = false;
        android.content.SharedPreferences.Editor editor3 = ((Activity)b.get()).getSharedPreferences("admarvel_preferences", 0).edit();
        editor3.putBoolean("download_started", false);
        editor3.commit();
        return;
        editor6.commit();
        if (arraylist == null) goto _L2; else goto _L1
_L1:
        if (arraylist.size() <= 0) goto _L2; else goto _L3
_L3:
        if (!((AdMarvelXMLElement)arraylist.get(0)).b().equals("update")) goto _L5; else goto _L4
_L4:
        long l1;
        i = 0;
        g = "Update Available";
        Logging.log("Offline SDK:Update Available ");
        Logging.log("Offline SDK:Admarvel SDK Offline Packager Downloads Started");
        l1 = System.nanoTime();
        if (b == null) goto _L7; else goto _L6
_L6:
        Activity activity = (Activity)b.get();
_L25:
        ArrayList arraylist1;
        a = activity;
        arraylist1 = (ArrayList)linkedhashmap.get("package");
        if (arraylist1 == null) goto _L9; else goto _L8
_L8:
        if (arraylist1.size() <= 0) goto _L9; else goto _L10
_L10:
        h = (String)((AdMarvelXMLElement)arraylist1.get(0)).getAttributes().get("version");
        if (editor6 == null)
        {
            break MISSING_BLOCK_LABEL_668;
        }
        if (h != null)
        {
            editor6.putString("admarvel_temp_version", h);
            if (!editor6.commit())
            {
                Logging.log("Offline SDK:package cannot be downloaded because current version cannot be comitted ");
                k = false;
                l = false;
                editor6.putBoolean("download_started", true);
                editor6.commit();
            }
        }
        ArrayList arraylist3;
        f = sharedpreferences.getString("admarvel_current_version", "-1");
        String s6 = ((AdMarvelXMLElement)arraylist1.get(0)).b();
        editor6.putString("download_csv_url", s6);
        editor6.commit();
        b b1 = new b(new URL(s6), e.getAbsolutePath(), false, (Context)b.get());
        b1.run();
        arraylist3 = b1.a();
        if (arraylist3 == null) goto _L9; else goto _L11
_L11:
        if (arraylist3.size() <= 0) goto _L9; else goto _L12
_L12:
        Logging.log("Offline SDK: Writing Utility Objects for offline Ads");
        b(d, (String)arraylist3.get(0));
        com.admarvel.android.b.a.a(d, (String)arraylist3.get(1));
        Logging.log("Offline SDK: Writing BannerPathMAP for offline Ads");
_L16:
        com.admarvel.android.b.b b2;
        ArrayList arraylist4;
        ArrayList arraylist5;
        HashMap hashmap;
        b2 = new com.admarvel.android.b.b(new InputStreamReader(new FileInputStream((String)arraylist3.get(1))));
        arraylist4 = b2.c();
        arraylist5 = new ArrayList();
        hashmap = new HashMap();
        if (arraylist4 == null) goto _L14; else goto _L13
_L13:
        for (Iterator iterator1 = arraylist4.iterator(); iterator1.hasNext();)
        {
            String as[] = (String[])iterator1.next();
            if (!isCancelled())
            {
                String s8 = (new StringBuilder()).append(as[0]).append("_").append(as[1]).toString();
                arraylist5.add(s8);
                hashmap.put(as[0], s8);
                File file3 = new File((new StringBuilder()).append(e.getAbsolutePath()).append("/").append(s8).toString());
                if (!file3.isDirectory())
                {
                    file3.mkdirs();
                }
                b b5 = new b(new URL(URLDecoder.decode(as[2], "UTF-8")), (new StringBuilder()).append(e.getAbsolutePath()).append("/").append(s8).toString(), (Context)b.get());
                Thread thread = new Thread(b5);
                thread.start();
                thread.join();
                if (b5.a)
                {
                    i = 1 + i;
                }
            }
        }

          goto _L15
        SAXException saxexception;
        saxexception;
        Logging.log((new StringBuilder()).append("Offline SDK:").append(saxexception.getMessage()).toString());
        k = false;
        l = false;
        android.content.SharedPreferences.Editor editor2 = ((Activity)b.get()).getSharedPreferences("admarvel_preferences", 0).edit();
        editor2.putBoolean("download_started", false);
        editor2.commit();
        return;
_L7:
        activity = null;
        continue; /* Loop/switch isn't completed */
        Exception exception1;
        exception1;
        Logging.log("Offline SDK: Exception in Writing Utility Objects for offline Ads");
        k = false;
        l = false;
        editor6.putBoolean("download_started", true);
        editor6.commit();
        a(editor6, "-1");
        k = false;
        l = false;
        android.content.SharedPreferences.Editor editor8 = ((Activity)b.get()).getSharedPreferences("admarvel_preferences", 0).edit();
        editor8.putBoolean("download_started", false);
        editor8.commit();
        return;
        Exception exception2;
        exception2;
        Logging.log("Offline SDK:Eror writing BannerPathMAP for offline Ads");
        k = false;
        l = false;
        editor6.putBoolean("download_started", true);
        editor6.commit();
          goto _L16
        IOException ioexception;
        ioexception;
        Logging.log((new StringBuilder()).append("Offline SDK:").append(ioexception.getMessage()).toString());
        k = false;
        l = false;
        android.content.SharedPreferences.Editor editor1 = ((Activity)b.get()).getSharedPreferences("admarvel_preferences", 0).edit();
        editor1.putBoolean("download_started", false);
        editor1.commit();
        return;
_L15:
        b2.b();
        com.admarvel.android.b.a.a(d, hashmap, "/banner_folder_map");
        com.admarvel.android.b.a.b b3;
        b3 = new com.admarvel.android.b.a.b();
        b3.a(arraylist5);
        if (sharedpreferences.getString("/previous_banner_packages", "NULL").equals("NULL"))
        {
            editor6.putString("/previous_banner_packages", "/previous_banner_packages");
            com.admarvel.android.b.a.a(d, b3, "/previous_banner_packages");
            if (!editor6.commit())
            {
                throw new Exception("previous banner packages list not added to shared preference");
            }
            break MISSING_BLOCK_LABEL_1795;
        }
        break MISSING_BLOCK_LABEL_1683;
        Exception exception;
        exception;
        k = false;
        l = false;
        android.content.SharedPreferences.Editor editor = ((Activity)b.get()).getSharedPreferences("admarvel_preferences", 0).edit();
        editor.putBoolean("download_started", false);
        editor.commit();
        throw exception;
        Exception exception3;
        exception3;
        Logging.log("Offline SDK: Exception in Writing BANNER_FOLDER_MAP for offline Ads");
        k = false;
        l = false;
        a(editor6, "-1");
        editor6.putBoolean("download_started", true);
        editor6.commit();
        k = false;
        l = false;
        android.content.SharedPreferences.Editor editor9 = ((Activity)b.get()).getSharedPreferences("admarvel_preferences", 0).edit();
        editor9.putBoolean("download_started", false);
        editor9.commit();
        return;
        com.admarvel.android.b.a.b b4 = (com.admarvel.android.b.a.b)com.admarvel.android.b.a.a("/previous_banner_packages", "BannerFolderName", (Context)b.get());
        if (b4 == null)
        {
            break MISSING_BLOCK_LABEL_1795;
        }
        b4.a().removeAll(b3.a());
        Logging.log("Offline SDK:Deleting Obsolete Packages");
        Iterator iterator2 = b4.a().iterator();
        do
        {
            if (!iterator2.hasNext())
            {
                break;
            }
            String s7 = (String)iterator2.next();
            File file2 = new File(e, s7);
            if (file2.isDirectory())
            {
                com.admarvel.android.b.d.a(file2);
            }
        } while (true);
        com.admarvel.android.b.a.a(d, b3, "/previous_banner_packages");
_L14:
        if (arraylist4 == null) goto _L18; else goto _L17
_L17:
        if (i == arraylist4.size())
        {
            d();
        }
          goto _L18
_L23:
        ArrayList arraylist2;
        if (arraylist2 == null) goto _L20; else goto _L19
_L19:
        if (i != arraylist2.size()) goto _L20; else goto _L21
_L21:
        double d1 = 1.0000000000000001E-09D * (double)(System.nanoTime() - l1);
        Logging.log((new StringBuilder()).append("Offline SDK:Admarvel SDK Offline Packager Downloads Completed at ( ").append(d1).append("s").toString());
        Logging.log((new StringBuilder()).append("Offline SDK:").append(i).append("packages downloaded").toString());
        a(editor6, h);
_L2:
        k = false;
        l = false;
        android.content.SharedPreferences.Editor editor7 = ((Activity)b.get()).getSharedPreferences("admarvel_preferences", 0).edit();
        editor7.putBoolean("download_started", false);
        editor7.commit();
        return;
_L20:
        Logging.log("Offline SDK:Admarvel SDK Offline Packager Downloads interupted because of Above erors");
        continue; /* Loop/switch isn't completed */
_L5:
        int i1;
        String s1 = sharedpreferences.getString("childDirectory", "NULL");
        String s2 = (new StringBuilder()).append(s1).append("/").append(c).append(".csv").toString();
        String s3 = sharedpreferences.getString("childDirectory", "NULL");
        String s4 = (new StringBuilder()).append(s3).append("/").append(c).append("_banners.csv").toString();
        File file = new File(s2);
        File file1 = new File(s4);
        if (!file.exists() || !file1.exists())
        {
            String s5 = sharedpreferences.getString("download_csv_url", "NULL");
            if (!s5.equals("NULL"))
            {
                (new b(new URL(s5), e.getAbsolutePath(), false, (Context)b.get())).run();
            }
        }
        i1 = sharedpreferences.getInt("completed_banners_count", -1);
        editor6.commit();
        if (i1 == -1)
        {
            break MISSING_BLOCK_LABEL_2225;
        }
        c();
        g = "Update Not Available";
        a();
        a(editor6, h);
        if (true) goto _L2; else goto _L9
_L9:
        arraylist2 = null;
        continue; /* Loop/switch isn't completed */
_L18:
        arraylist2 = arraylist4;
        if (true) goto _L23; else goto _L22
_L22:
        if (true) goto _L25; else goto _L24
_L24:
    }

    static boolean a(boolean flag)
    {
        k = flag;
        return flag;
    }

    private Void b()
    {
        int i1;
        i1 = 0;
        Logging.log("Offline SDK:checkforUpdate called");
        if (l) goto _L2; else goto _L1
_L1:
        String s;
        Logging.log("Offline SDK:isUpdateProcessStarted");
        l = true;
        File file = new File((new StringBuilder()).append(Environment.getExternalStorageDirectory()).append("/.admfiles").toString());
        if (file.exists())
        {
            com.admarvel.android.b.d.a(file);
        }
        Activity activity;
        if (b != null)
        {
            activity = (Activity)b.get();
        } else
        {
            activity = null;
        }
        a = activity;
        Logging.log("Offline SDK:check for update for offline package");
        if (c == null || a == null || !AdMarvelUtils.isNetworkAvailable(a)) goto _L2; else goto _L3
_L3:
        (new com.admarvel.android.b.a()).a(a);
        s = a(a, c);
        if (s != null) goto _L4; else goto _L2
_L2:
        return null;
_L4:
        Logging.log((new StringBuilder()).append("Offline SDK:checkforUpdate PostString :- ").append(s).toString());
        HttpURLConnection httpurlconnection;
        int j1;
        httpurlconnection = (HttpURLConnection)(new URL("http://ads.admarvel.com/fam/getOfflineAndroidPackage.php")).openConnection();
        httpurlconnection.setRequestMethod("POST");
        httpurlconnection.setDoOutput(true);
        httpurlconnection.setDoInput(true);
        httpurlconnection.setUseCaches(false);
        httpurlconnection.setRequestProperty("User-Agent", (new AdMarvelUtils(a)).getUserAgent());
        httpurlconnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
        httpurlconnection.setRequestProperty("Content-Length", Integer.toString(s.length()));
        httpurlconnection.setConnectTimeout(2000);
        httpurlconnection.setReadTimeout(10000);
        httpurlconnection.getOutputStream().write(s.getBytes());
        j1 = httpurlconnection.getResponseCode();
        httpurlconnection.getContentLength();
        if (j1 != 200) goto _L6; else goto _L5
_L5:
        InputStream inputstream;
        ArrayList arraylist;
        inputstream = (InputStream)httpurlconnection.getContent();
        arraylist = new ArrayList();
        int k1;
        int l1;
        k1 = 8192;
        l1 = 0;
_L10:
        if (k1 == '\uFFFF') goto _L8; else goto _L7
_L7:
        byte abyte0[];
        abyte0 = new byte[8192];
        k1 = inputstream.read(abyte0, 0, 8192);
        if (k1 <= 0) goto _L10; else goto _L9
_L9:
        a a1;
        a1 = new a();
        a1.a = abyte0;
        a1.b = k1;
        l1 += k1;
        arraylist.add(a1);
          goto _L10
        Exception exception;
        exception;
        Logging.log((new StringBuilder()).append("Offline SDK:").append(exception.getMessage()).append("Exception in checking for Update").toString());
_L6:
        String s1 = "";
_L15:
        if (s1.length() <= 0) goto _L2; else goto _L11
_L11:
        try
        {
            a(s1);
        }
        catch (Exception exception1)
        {
            Logging.log((new StringBuilder()).append("Offline SDK:").append(exception1.getMessage()).append("Exception in calling creating subdirectories method ").toString());
            return null;
        }
        return null;
_L8:
        inputstream.close();
        if (l1 <= 0) goto _L6; else goto _L12
_L12:
        byte abyte1[] = new byte[l1];
        int i2 = 0;
_L14:
        if (i1 >= arraylist.size())
        {
            break; /* Loop/switch isn't completed */
        }
        a a2 = (a)arraylist.get(i1);
        System.arraycopy(a2.a, 0, abyte1, i2, a2.b);
        i2 += a2.b;
        i1++;
        if (true) goto _L14; else goto _L13
_L13:
        s1 = new String(abyte1);
          goto _L15
    }

    static ArrayList b(c c1)
    {
        return c1.j;
    }

    static boolean b(boolean flag)
    {
        l = flag;
        return flag;
    }

    private void c()
    {
        long l1;
        l1 = System.nanoTime();
        Logging.log("Offline SDK:Admarvel Offline SDK download started");
        if (b.get() != null) goto _L2; else goto _L1
_L1:
        SharedPreferences sharedpreferences;
        return;
_L2:
        android.content.SharedPreferences.Editor editor;
        String s;
        if ((sharedpreferences = ((Activity)b.get()).getSharedPreferences("admarvel_preferences", 0)) == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        editor = sharedpreferences.edit();
        s = (new StringBuilder()).append(e.getAbsolutePath()).append("/").append(c).append("_banners.csv").toString();
        i = sharedpreferences.getInt("completed_banners_count", -1);
        com.admarvel.android.b.b b1 = new com.admarvel.android.b.b(new InputStreamReader(new FileInputStream(s)));
        com.admarvel.android.b.b b2 = b1;
_L3:
        ArrayList arraylist;
        FileNotFoundException filenotfoundexception;
        if (b2 == null)
        {
            arraylist = null;
        } else
        {
            arraylist = b2.c();
        }
        if (arraylist != null && i == arraylist.size())
        {
            editor.putInt("completed_banners_count", -1);
            editor.commit();
            d();
            return;
        }
        break MISSING_BLOCK_LABEL_207;
        filenotfoundexception;
        filenotfoundexception.printStackTrace();
        b2 = null;
          goto _L3
        ArrayList arraylist1;
        HashMap hashmap;
        arraylist1 = new ArrayList();
        hashmap = new HashMap();
        if (arraylist == null) goto _L5; else goto _L4
_L4:
        int i1;
        int j1;
        i1 = arraylist.size();
        i = sharedpreferences.getInt("completed_banners_count", -1);
        j1 = i;
_L8:
        String as[];
        if (j1 >= i1)
        {
            break MISSING_BLOCK_LABEL_568;
        }
        as = (String[])arraylist.get(j1);
        if (isCancelled()) goto _L7; else goto _L6
_L6:
        String s2;
        s2 = (new StringBuilder()).append(as[0]).append("_").append(as[1]).toString();
        arraylist1.add(s2);
        hashmap.put(as[0], s2);
        File file1 = new File((new StringBuilder()).append(e.getAbsolutePath()).append("/").append(s2).toString());
        if (!file1.isDirectory())
        {
            file1.mkdirs();
        }
        b b5 = new b(new URL(URLDecoder.decode(as[2], "UTF-8")), (new StringBuilder()).append(e.getAbsolutePath()).append("/").append(s2).toString(), (Context)b.get());
        b b6 = b5;
_L9:
        if (b6 != null)
        {
            b6.run();
            i = 1 + i;
        }
_L7:
        if (i == i1)
        {
            d();
        }
        j1++;
          goto _L8
        MalformedURLException malformedurlexception;
        malformedurlexception;
        Logging.log((new StringBuilder()).append("Offline SDK:").append(malformedurlexception.getMessage()).toString());
        b6 = null;
          goto _L9
        UnsupportedEncodingException unsupportedencodingexception;
        unsupportedencodingexception;
        Logging.log((new StringBuilder()).append("Offline SDK:").append(unsupportedencodingexception.getMessage()).toString());
        b6 = null;
          goto _L9
        com.admarvel.android.b.a.b b3;
        double d1;
        try
        {
            b2.b();
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
        }
        com.admarvel.android.b.a.a(d, hashmap, "/banner_folder_map");
        b3 = new com.admarvel.android.b.a.b();
        b3.a(arraylist1);
        if (!sharedpreferences.getString("/previous_banner_packages", "NULL").equals("NULL"))
        {
            continue; /* Loop/switch isn't completed */
        }
        editor.putString("/previous_banner_packages", "/previous_banner_packages");
        com.admarvel.android.b.a.a(d, b3, "/previous_banner_packages");
_L11:
        com.admarvel.android.b.a.a(d, b3, "/previous_banner_packages");
_L5:
        d();
        d1 = 1.0000000000000001E-09D * (double)(System.nanoTime() - l1);
        Logging.log((new StringBuilder()).append("Offline SDK:Admarvel Offline SDK download completed at ( ").append(d1).append("s").toString());
        a(editor, h);
        return;
        if (b.get() == null) goto _L1; else goto _L10
_L10:
        com.admarvel.android.b.a.b b4 = (com.admarvel.android.b.a.b)com.admarvel.android.b.a.a("/previous_banner_packages", "BannerFolderName", (Context)b.get());
        if (b4 != null)
        {
            b4.a().removeAll(b3.a());
            Iterator iterator = b4.a().iterator();
            while (iterator.hasNext()) 
            {
                String s1 = (String)iterator.next();
                File file = new File(e, s1);
                if (file.isDirectory())
                {
                    com.admarvel.android.b.d.a(file);
                }
            }
        }
          goto _L11
        if (true) goto _L1; else goto _L12
_L12:
    }

    private void d()
    {
        if (b.get() != null) goto _L2; else goto _L1
_L1:
        SharedPreferences sharedpreferences;
        return;
_L2:
        android.content.SharedPreferences.Editor editor;
        if ((sharedpreferences = ((Activity)b.get()).getSharedPreferences("admarvel_preferences", 0)) == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        editor = sharedpreferences.edit();
        if (j == null)
        {
            j = (ArrayList)com.admarvel.android.b.a.a("/complete_ad_content_path_list", "/complete_ad_content_path_list", (Context)b.get());
        }
        if (j != null)
        {
            break; /* Loop/switch isn't completed */
        }
        editor.putString("admarvel_current_version", "-1");
        editor.commit();
        b();
_L5:
        File file = ((Activity)b.get()).getDir("Admarvel", 0);
        if (file != null)
        {
            File file1 = new File(file, "/complete_ad_content_path_list");
            if (file1.exists())
            {
                file1.delete();
                return;
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
        Iterator iterator = j.iterator();
_L7:
        if (!iterator.hasNext()) goto _L5; else goto _L4
_L4:
        if ((new File((String)iterator.next())).exists()) goto _L7; else goto _L6
_L6:
        editor.putString("admarvel_current_version", "-1");
        editor.commit();
        b();
          goto _L5
    }

    protected transient Void a(Void avoid[])
    {
        return b();
    }

    public void a()
    {
        HashMap hashmap = (HashMap)com.admarvel.android.b.a.a("/site_id_banner_map", "/site_id_banner_map", a);
        HashMap hashmap1 = (HashMap)com.admarvel.android.b.a.a("/ad_link_object", "/ad_link_object", a);
        String s = (new StringBuilder()).append(e.getAbsolutePath()).append("/").append(c).append(".csv").toString();
        if (s != null && hashmap == null || hashmap1 == null)
        {
            com.admarvel.android.b.a.b(d, s);
        }
    }

    protected void a(Void void1)
    {
        super.onPostExecute(void1);
    }

    protected Object doInBackground(Object aobj[])
    {
        return a((Void[])aobj);
    }

    protected void onCancelled()
    {
        super.onCancelled();
        String s = (new StringBuilder()).append(e.getAbsolutePath()).append("/").append(c).append("_banners.csv").toString();
        String s1 = (new StringBuilder()).append(e.getAbsolutePath()).append("/").append(c).append(".csv").toString();
        File file = new File(s);
        File file1 = new File(s1);
        SharedPreferences sharedpreferences;
        if (b.get() != null)
        {
            if ((sharedpreferences = ((Activity)b.get()).getSharedPreferences("admarvel_preferences", 0)) != null)
            {
                android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
                if (!file.exists() || !file1.exists())
                {
                    editor.putString("admarvel_current_version", "-1");
                }
                editor.putInt("completed_banners_count", i);
                editor.commit();
                com.admarvel.android.b.a.a(d, j, "/complete_ad_content_path_list");
                return;
            }
        }
    }

    protected void onPostExecute(Object obj)
    {
        a((Void)obj);
    }


    private class b
        implements Runnable
    {

        public boolean a;
        final c b;
        private URL c;
        private ArrayList d;
        private String e;
        private Context f;

        public ArrayList a()
        {
            return d;
        }

        public void run()
        {
            if (c == null || !AdMarvelUtils.isNetworkAvailable(f)) goto _L2; else goto _L1
_L1:
            BufferedInputStream bufferedinputstream;
            Object obj;
            URLConnection urlconnection = c.openConnection();
            urlconnection.connect();
            bufferedinputstream = new BufferedInputStream(c.openStream());
            if (!"gzip".equals(urlconnection.getContentEncoding()))
            {
                break MISSING_BLOCK_LABEL_431;
            }
            obj = new GZIPInputStream(bufferedinputstream);
_L9:
            FileOutputStream fileoutputstream;
            byte abyte0[];
            fileoutputstream = new FileOutputStream((new StringBuilder()).append(e).append("/tmp.zip").toString());
            abyte0 = new byte[4096];
_L5:
            int i1 = ((InputStream) (obj)).read(abyte0);
            if (i1 == -1) goto _L4; else goto _L3
_L3:
            fileoutputstream.write(abyte0, 0, i1);
              goto _L5
            IOException ioexception;
            ioexception;
            Logging.log((new StringBuilder()).append("Offline SDK:").append(Log.getStackTraceString(ioexception)).toString());
            a = false;
_L8:
            a = true;
_L7:
            return;
_L4:
            fileoutputstream.flush();
            fileoutputstream.close();
            ((InputStream) (obj)).close();
            d = com.admarvel.android.b.d.a((new StringBuilder()).append(e).append("/tmp.zip").toString(), e);
            if (c.a(b).get() == null) goto _L7; else goto _L6
_L6:
            if (com.admarvel.android.b.c.b(b) == null)
            {
                c.a(b, (ArrayList)com.admarvel.android.b.a.a("/complete_ad_content_path_list", "/complete_ad_content_path_list", (Context)c.a(b).get()));
                if (com.admarvel.android.b.c.b(b) == null)
                {
                    c.a(b, new ArrayList());
                }
            }
            if (d != null)
            {
                com.admarvel.android.b.c.b(b).addAll(d);
            }
            if (true) goto _L8; else goto _L2
_L2:
            a = false;
            SharedPreferences sharedpreferences;
            if (c.a(b).get() != null)
            {
                sharedpreferences = ((Activity)c.a(b).get()).getSharedPreferences("admarvel_preferences", 0);
            } else
            {
                sharedpreferences = null;
            }
            if (sharedpreferences == null)
            {
                Logging.log("Offline SDK:package cannot be downloaded shared preference is null ");
                c.a(false);
                com.admarvel.android.b.c.b(false);
                return;
            } else
            {
                android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
                c.a(b, editor, "-1");
                editor.commit();
                Logging.log("Offline SDK:package cannot be downloaded because internet is not available ");
                c.a(false);
                com.admarvel.android.b.c.b(false);
                return;
            }
            obj = bufferedinputstream;
              goto _L9
        }

        public b(URL url, String s, Context context)
        {
            b = c.this;
            super();
            a = false;
            c = url;
            e = s;
            f = context;
        }

        public b(URL url, String s, boolean flag, Context context)
        {
            b = c.this;
            super();
            a = false;
            c = url;
            e = s;
            f = context;
        }
    }


    private class a
    {

        public byte a[];
        public int b;

        private a()
        {
            a = null;
            b = 0;
        }

    }

}
