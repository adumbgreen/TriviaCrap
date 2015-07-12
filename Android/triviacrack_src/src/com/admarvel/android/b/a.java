// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.b;

import android.content.Context;
import android.os.Environment;
import android.os.Handler;
import android.util.Log;
import com.admarvel.android.ads.AdMarvelAd;
import com.admarvel.android.ads.AdMarvelUtils;
import com.admarvel.android.b.a.b;
import com.admarvel.android.util.Logging;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.StreamCorruptedException;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.net.URLDecoder;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.TimeZone;

// Referenced classes of package com.admarvel.android.b:
//            b

public class a
{

    private final Handler a = null;
    private WeakReference b;

    public a()
    {
        b = null;
    }

    public static com.admarvel.android.b.a.a a(String as[])
    {
        com.admarvel.android.b.a.a a1;
        String s;
        a1 = new com.admarvel.android.b.a.a();
        if (as.length < 10)
        {
            break MISSING_BLOCK_LABEL_340;
        }
        a1.b(Integer.valueOf(as[3]).intValue());
        a1.a(Integer.valueOf(as[5]).intValue());
        a1.a(Float.valueOf(as[6]).floatValue());
        a1.c(Integer.valueOf(as[7]).intValue());
        a1.a(b(as[8]));
        a1.b(b(as[9]));
        s = "";
        String s2 = URLDecoder.decode(as[10], "UTF-8");
        s = s2;
_L1:
        HashMap hashmap;
        String as1[] = s.split("&");
        if (as1.length <= 0)
        {
            break MISSING_BLOCK_LABEL_340;
        }
        hashmap = new HashMap();
        int i = as1.length;
        int j = 0;
        while (j < i) 
        {
            String s1 = as1[j];
            String as2[] = s1.split(";");
            UnsupportedEncodingException unsupportedencodingexception;
            HashMap hashmap1;
            if (as2.length > 2)
            {
                if (!hashmap.containsKey(as2[0]))
                {
                    ArrayList arraylist = new ArrayList();
                    arraylist.add(s1.substring(1 + s1.indexOf(";")).split(";"));
                    hashmap.put(as2[0], arraylist);
                    hashmap1 = hashmap;
                } else
                {
                    ArrayList arraylist1 = (ArrayList)hashmap.get(as2[0]);
                    arraylist1.add(s1.substring(1 + s1.indexOf(";")).split(";"));
                    hashmap.put(as2[0], arraylist1);
                    hashmap1 = hashmap;
                }
            } else
            {
                hashmap1 = null;
            }
            j++;
            hashmap = hashmap1;
        }
        break MISSING_BLOCK_LABEL_334;
        unsupportedencodingexception;
        Logging.log((new StringBuilder()).append("Offline SDK:").append(unsupportedencodingexception.getMessage()).toString());
          goto _L1
        a1.a(hashmap);
        return a1;
    }

    public static FileInputStream a(String s)
    {
        File file;
        s.substring(0, s.lastIndexOf("/"));
        s.substring(1 + s.lastIndexOf("/"));
        file = new File(s);
        FileInputStream fileinputstream = new FileInputStream(file);
        return fileinputstream;
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        Logging.log((new StringBuilder()).append("Offline SDK:read file").append(filenotfoundexception.getMessage()).toString());
_L2:
        return null;
        NullPointerException nullpointerexception;
        nullpointerexception;
        Logging.log((new StringBuilder()).append("Offline SDK:read file").append(nullpointerexception.getMessage()).toString());
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        Logging.log((new StringBuilder()).append("Offline SDK:read file").append(exception.getMessage()).toString());
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static Object a(String s, String s1, Context context)
    {
        File file = context.getDir("Admarvel", 0);
        if (s != null) goto _L2; else goto _L1
_L1:
        Object obj = null;
_L4:
        return obj;
_L2:
        File file1;
        file1 = new File(file, s);
        if (!file1.exists())
        {
            return null;
        }
        ObjectInputStream objectinputstream = new ObjectInputStream(new FileInputStream(file1));
        if (!s1.equals("BannerFolderName"))
        {
            break MISSING_BLOCK_LABEL_104;
        }
        obj = (b)objectinputstream.readObject();
        objectinputstream.close();
        if (objectinputstream != null)
        {
            try
            {
                objectinputstream.close();
            }
            catch (IOException ioexception11)
            {
                ioexception11.printStackTrace();
                return obj;
            }
            return obj;
        }
        continue; /* Loop/switch isn't completed */
        if (!s1.equals("/pixel_fire_list"))
        {
            break MISSING_BLOCK_LABEL_151;
        }
        obj = (ArrayList)objectinputstream.readObject();
        objectinputstream.close();
        if (objectinputstream != null)
        {
            try
            {
                objectinputstream.close();
            }
            catch (IOException ioexception10)
            {
                ioexception10.printStackTrace();
                return obj;
            }
            return obj;
        }
        continue; /* Loop/switch isn't completed */
        if (!s1.equals("/banner_folder_map"))
        {
            break MISSING_BLOCK_LABEL_198;
        }
        obj = (HashMap)objectinputstream.readObject();
        objectinputstream.close();
        if (objectinputstream != null)
        {
            try
            {
                objectinputstream.close();
            }
            catch (IOException ioexception9)
            {
                ioexception9.printStackTrace();
                return obj;
            }
            return obj;
        }
        continue; /* Loop/switch isn't completed */
        if (!s1.equals("/site_id_banner_map"))
        {
            break MISSING_BLOCK_LABEL_245;
        }
        obj = (HashMap)objectinputstream.readObject();
        objectinputstream.close();
        if (objectinputstream != null)
        {
            try
            {
                objectinputstream.close();
            }
            catch (IOException ioexception8)
            {
                ioexception8.printStackTrace();
                return obj;
            }
            return obj;
        }
        continue; /* Loop/switch isn't completed */
        if (!s1.equals("/ad_link_object"))
        {
            break; /* Loop/switch isn't completed */
        }
        obj = (HashMap)objectinputstream.readObject();
        objectinputstream.close();
        if (objectinputstream != null)
        {
            try
            {
                objectinputstream.close();
            }
            catch (IOException ioexception7)
            {
                ioexception7.printStackTrace();
                return obj;
            }
            return obj;
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (objectinputstream != null)
        {
            try
            {
                objectinputstream.close();
            }
            catch (IOException ioexception6)
            {
                ioexception6.printStackTrace();
            }
        }
_L5:
        return null;
        StreamCorruptedException streamcorruptedexception;
        streamcorruptedexception;
        objectinputstream = null;
_L11:
        Logging.log((new StringBuilder()).append("Offline SDK:").append(Log.getStackTraceString(streamcorruptedexception)).toString());
        if (objectinputstream != null)
        {
            try
            {
                objectinputstream.close();
            }
            catch (IOException ioexception1)
            {
                ioexception1.printStackTrace();
            }
        }
          goto _L5
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        objectinputstream = null;
_L10:
        Logging.log((new StringBuilder()).append("Offline SDK:").append(Log.getStackTraceString(filenotfoundexception)).toString());
        if (objectinputstream != null)
        {
            try
            {
                objectinputstream.close();
            }
            catch (IOException ioexception2)
            {
                ioexception2.printStackTrace();
            }
        }
          goto _L5
        IOException ioexception3;
        ioexception3;
        objectinputstream = null;
_L9:
        Logging.log((new StringBuilder()).append("Offline SDK:").append(Log.getStackTraceString(ioexception3)).toString());
        if (objectinputstream != null)
        {
            try
            {
                objectinputstream.close();
            }
            catch (IOException ioexception4)
            {
                ioexception4.printStackTrace();
            }
        }
          goto _L5
        ClassNotFoundException classnotfoundexception;
        classnotfoundexception;
        objectinputstream = null;
_L8:
        Logging.log((new StringBuilder()).append("Offline SDK:").append(Log.getStackTraceString(classnotfoundexception)).toString());
        if (objectinputstream != null)
        {
            try
            {
                objectinputstream.close();
            }
            catch (IOException ioexception5)
            {
                ioexception5.printStackTrace();
            }
        }
          goto _L5
        Exception exception;
        exception;
        objectinputstream = null;
_L7:
        if (objectinputstream != null)
        {
            try
            {
                objectinputstream.close();
            }
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
            }
        }
        throw exception;
        exception;
        if (true) goto _L7; else goto _L6
_L6:
        classnotfoundexception;
          goto _L8
        ioexception3;
          goto _L9
        filenotfoundexception;
          goto _L10
        streamcorruptedexception;
          goto _L11
    }

    public static String a(FileInputStream fileinputstream, String s)
    {
        File file1;
        File file = new File((new StringBuilder()).append(Environment.getExternalStorageDirectory()).append("/").append(".admfiles").toString());
        if (!file.exists())
        {
            file.mkdirs();
        }
        file1 = new File((new StringBuilder()).append(file.getAbsolutePath()).append("/").append(s).toString());
        if (file1.exists()) goto _L2; else goto _L1
_L1:
        byte abyte0[] = new byte[16384];
        FileOutputStream fileoutputstream;
        file1.createNewFile();
        fileoutputstream = new FileOutputStream(file1);
_L5:
        int i = fileinputstream.read(abyte0);
        if (i == -1) goto _L4; else goto _L3
_L3:
        FileNotFoundException filenotfoundexception;
        fileoutputstream.write(abyte0, 0, i);
          goto _L5
_L2:
        return file1.getAbsolutePath();
_L4:
        try
        {
            fileoutputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch (FileNotFoundException filenotfoundexception)
        {
            filenotfoundexception.printStackTrace();
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
        }
        if (true) goto _L2; else goto _L6
_L6:
    }

    public static String a(String s, String s1)
    {
        BufferedReader bufferedreader;
        ArrayList arraylist;
        int i;
        File file = new File(s, s1);
        int j;
        char ac[];
        a a1;
        if (file.exists())
        {
            Logging.log("Offline: readData- file exist");
        } else
        {
            Logging.log("Offline: readData- file doesn't exist");
        }
        try
        {
            bufferedreader = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
            arraylist = new ArrayList();
        }
        catch (Exception exception)
        {
            if (exception != null)
            {
                Logging.log((new StringBuilder()).append("error").append(exception.getMessage()).toString());
            }
            return "";
        }
        i = 0;
        j = 8192;
        if (j == '\uFFFF')
        {
            break MISSING_BLOCK_LABEL_183;
        }
        ac = new char[8192];
        j = bufferedreader.read(ac, 0, 8192);
        if (j <= 0)
        {
            break MISSING_BLOCK_LABEL_63;
        }
        a1 = new a();
        a1.a = ac;
        a1.b = j;
        i += j;
        arraylist.add(a1);
        break MISSING_BLOCK_LABEL_63;
        bufferedreader.close();
        if (i <= 0) goto _L2; else goto _L1
_L1:
        char ac1[] = new char[i];
        int k;
        int l;
        k = 0;
        l = 0;
_L4:
        if (k >= arraylist.size())
        {
            break; /* Loop/switch isn't completed */
        }
        a a2 = (a)arraylist.get(k);
        System.arraycopy(a2.a, 0, ac1, l, a2.b);
        l += a2.b;
        k++;
        if (true) goto _L4; else goto _L3
_L3:
        String s2 = new String(ac1);
_L6:
        return s2;
_L2:
        s2 = "";
        if (true) goto _L6; else goto _L5
_L5:
    }

    public static void a(File file, Object obj, String s)
    {
        if (obj == null)
        {
            return;
        }
        try
        {
            FileOutputStream fileoutputstream = new FileOutputStream(new File(file, s));
            ObjectOutputStream objectoutputstream = new ObjectOutputStream(fileoutputstream);
            objectoutputstream.writeObject(obj);
            objectoutputstream.close();
            fileoutputstream.close();
            return;
        }
        catch (FileNotFoundException filenotfoundexception)
        {
            Logging.log((new StringBuilder()).append("Offline SDK:").append(filenotfoundexception.getMessage()).toString());
            return;
        }
        catch (IOException ioexception)
        {
            Logging.log((new StringBuilder()).append("Offline SDK:").append(ioexception.getMessage()).toString());
        }
    }

    public static void a(File file, String s)
    {
        FileInputStream fileinputstream;
        com.admarvel.android.b.b b1;
        ArrayList arraylist;
        ArrayList arraylist1;
        HashMap hashmap;
        try
        {
            fileinputstream = new FileInputStream(s);
        }
        catch (FileNotFoundException filenotfoundexception)
        {
            Logging.log((new StringBuilder()).append("Offline SDK:").append(filenotfoundexception.getMessage()).toString());
            fileinputstream = null;
        }
        b1 = new com.admarvel.android.b.b(new InputStreamReader(fileinputstream));
        arraylist = b1.c();
        arraylist1 = new ArrayList();
        hashmap = new HashMap();
        if (arraylist != null)
        {
            String as[];
            String s1;
            for (Iterator iterator = arraylist.iterator(); iterator.hasNext(); hashmap.put(as[0], s1))
            {
                as = (String[])iterator.next();
                s1 = (new StringBuilder()).append(as[0]).append("_").append(as[1]).toString();
                arraylist1.add(s1);
            }

            try
            {
                b1.b();
            }
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
            }
            a(file, hashmap, "/banner_folder_map");
        }
    }

    public static long b(String s)
    {
        long l;
        String s1 = URLDecoder.decode(s, "UTF-8");
        SimpleDateFormat simpledateformat = new SimpleDateFormat("yyyy-MM-dd HH:mm");
        simpledateformat.setTimeZone(TimeZone.getTimeZone("GMT"));
        l = simpledateformat.parse(s1).getTime();
        return l;
        UnsupportedEncodingException unsupportedencodingexception;
        unsupportedencodingexception;
        Logging.log((new StringBuilder()).append("Offline SDK:").append(unsupportedencodingexception.getMessage()).toString());
_L2:
        return 0L;
        ParseException parseexception;
        parseexception;
        Logging.log((new StringBuilder()).append("Offline SDK:").append(parseexception.getMessage()).toString());
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static void b(File file, String s)
    {
        FileInputStream fileinputstream;
        ArrayList arraylist;
        HashMap hashmap;
        HashMap hashmap1;
        try
        {
            fileinputstream = new FileInputStream(s);
        }
        catch (FileNotFoundException filenotfoundexception)
        {
            Logging.log((new StringBuilder()).append("Offline SDK:").append(filenotfoundexception.getMessage()).toString());
            fileinputstream = null;
        }
        arraylist = (new com.admarvel.android.b.b(new InputStreamReader(fileinputstream))).c();
        hashmap = new HashMap();
        hashmap1 = new HashMap();
        for (Iterator iterator = arraylist.iterator(); iterator.hasNext();)
        {
            String as[] = (String[])iterator.next();
            com.admarvel.android.b.a.a a1 = a(as);
            hashmap.put(Integer.valueOf(a1.f()), a1);
            if (!hashmap1.containsKey(as[1]))
            {
                ArrayList arraylist1 = new ArrayList();
                arraylist1.add(as[3]);
                hashmap1.put(as[1], arraylist1);
            } else
            {
                ArrayList arraylist2 = (ArrayList)hashmap1.get(as[1]);
                arraylist2.add(as[3]);
                hashmap1.put(as[1], arraylist2);
            }
        }

        a(file, hashmap, "/ad_link_object");
        a(file, hashmap1, "/site_id_banner_map");
    }

    public void a(Context context)
    {
        ArrayList arraylist = (ArrayList)a("/pixel_fire_list", "/pixel_fire_list", context);
        if (arraylist != null)
        {
            if (arraylist.size() > 50)
            {
                for (int i = 0; i < 50; i++)
                {
                    String s1 = ((String)arraylist.get(0)).replaceAll("\\{timestamp\\}", String.valueOf(System.currentTimeMillis()));
                    (new AdMarvelUtils(context)).firePixelUsingHTTP(s1, a);
                    arraylist.remove(0);
                    Logging.log((new StringBuilder()).append("Offline SDK:fire pixel url :- ").append(s1).toString());
                }

            } else
            {
                String s;
                for (Iterator iterator = arraylist.iterator(); iterator.hasNext(); Logging.log((new StringBuilder()).append("Offline SDK:fire pixel url :- ").append(s).toString()))
                {
                    s = ((String)iterator.next()).replaceAll("\\{timestamp\\}", String.valueOf(System.currentTimeMillis()));
                    (new AdMarvelUtils(context)).firePixelUsingHTTP(s, a);
                }

                arraylist.clear();
            }
            a(context.getDir("Admarvel", 0), arraylist, "/pixel_fire_list");
        }
    }

    public void a(AdMarvelAd admarvelad, Context context, Handler handler)
    {
        if (AdMarvelUtils.isNetworkAvailable(context))
        {
            ArrayList arraylist1 = (ArrayList)a("/pixel_fire_list", "/pixel_fire_list", context);
            if (arraylist1 != null)
            {
                if (arraylist1.size() > 50)
                {
                    for (int i = 0; i < 50; i++)
                    {
                        String s2 = ((String)arraylist1.get(0)).replaceAll("\\{timestamp\\}", String.valueOf(System.currentTimeMillis()));
                        (new AdMarvelUtils(context)).firePixelUsingHTTP(s2, handler);
                        Logging.log((new StringBuilder()).append("Offline SDK:fire pixel url :- ").append(s2).toString());
                        arraylist1.remove(0);
                    }

                } else
                {
                    String s1;
                    for (Iterator iterator1 = arraylist1.iterator(); iterator1.hasNext(); Logging.log((new StringBuilder()).append("Offline SDK:fire pixel url :- ").append(s1).toString()))
                    {
                        s1 = ((String)iterator1.next()).replaceAll("\\{timestamp\\}", String.valueOf(System.currentTimeMillis()));
                        (new AdMarvelUtils(context)).firePixelUsingHTTP(s1, handler);
                    }

                    arraylist1.clear();
                }
            }
            AdMarvelUtils admarvelutils = new AdMarvelUtils(context);
            String s;
            for (Iterator iterator = admarvelad.getPixels().iterator(); iterator.hasNext(); Logging.log((new StringBuilder()).append("Offline SDK:fire pixel url :- ").append(s).toString()))
            {
                s = ((String)iterator.next()).replaceAll("\\{timestamp\\}", String.valueOf(System.currentTimeMillis()));
                admarvelutils.firePixelUsingHTTP(s, handler);
            }

            a(context.getDir("Admarvel", 0), arraylist1, "/pixel_fire_list");
            return;
        }
        Logging.log("Offline SDK:No Internet available so saving pixel url in file ");
        List list = admarvelad.getPixels();
        File file = context.getDir("Admarvel", 0);
        ArrayList arraylist = (ArrayList)a("/pixel_fire_list", "/pixel_fire_list", context);
        if (arraylist != null)
        {
            arraylist.addAll(list);
        } else
        {
            arraylist = new ArrayList();
            arraylist.addAll(list);
        }
        a(file, arraylist, "/pixel_fire_list");
    }

    public void a(String s, Context context, Handler handler)
    {
        if (AdMarvelUtils.isNetworkAvailable(context))
        {
            ArrayList arraylist1 = (ArrayList)a("/pixel_fire_list", "/pixel_fire_list", context);
            if (arraylist1 != null)
            {
                if (arraylist1.size() > 50)
                {
                    for (int i = 0; i < 50; i++)
                    {
                        String s2 = ((String)arraylist1.get(0)).replaceAll("\\{timestamp\\}", String.valueOf(System.currentTimeMillis()));
                        (new AdMarvelUtils(context)).firePixelUsingHTTP(s2, handler);
                        Logging.log((new StringBuilder()).append("Offline SDK:fire pixel url :- ").append(s2).toString());
                        arraylist1.remove(0);
                    }

                } else
                {
                    String s1;
                    for (Iterator iterator = arraylist1.iterator(); iterator.hasNext(); Logging.log((new StringBuilder()).append("Offline SDK:fire pixel url :- ").append(s1).toString()))
                    {
                        s1 = ((String)iterator.next()).replaceAll("\\{timestamp\\}", String.valueOf(System.currentTimeMillis()));
                        (new AdMarvelUtils(context)).firePixelUsingHTTP(s1, handler);
                    }

                    arraylist1.clear();
                }
            }
            (new AdMarvelUtils(context)).firePixelUsingHTTP(s.replaceAll("\\{timestamp\\}", String.valueOf(System.currentTimeMillis())), handler);
            a(context.getDir("Admarvel", 0), arraylist1, "/pixel_fire_list");
            return;
        }
        File file = context.getDir("Admarvel", 0);
        ArrayList arraylist = (ArrayList)a("/pixel_fire_list", "/pixel_fire_list", context);
        Logging.log("Offline SDK:No Internet available so saving pixel url in file ");
        if (arraylist != null)
        {
            arraylist.add(s);
        } else
        {
            arraylist = new ArrayList();
            arraylist.add(s);
        }
        a(file, arraylist, "/pixel_fire_list");
    }

    private class a
    {

        public char a[];
        public int b;

        private a()
        {
            a = null;
            b = 0;
        }

    }

}
