// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.admarvel.android.util.Logging;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.GZIPInputStream;

// Referenced classes of package com.admarvel.android.ads:
//            ac, AdMarvelView

public class AdMarvelLocalFileContentProvider extends ContentProvider
{

    public AdMarvelLocalFileContentProvider()
    {
    }

    public int delete(Uri uri, String s, String as[])
    {
        throw new UnsupportedOperationException("Not supported by this provider");
    }

    public String getType(Uri uri)
    {
        throw new UnsupportedOperationException("Not supported by this provider");
    }

    public Uri insert(Uri uri, ContentValues contentvalues)
    {
        throw new UnsupportedOperationException("Not supported by this provider");
    }

    public boolean onCreate()
    {
        return true;
    }

    public ParcelFileDescriptor openFile(Uri uri, String s)
    {
        int i;
        String s1;
        i = 0;
        s1 = uri.getPath().replace((new StringBuilder()).append("content://").append(getContext().getPackageName()).append(".AdMarvelLocalFileContentProvider").toString(), "");
        if (s1 == null) goto _L2; else goto _L1
_L1:
        if (!s1.equals("/mraid.js") && !s1.equals("mraid.js")) goto _L4; else goto _L3
_L3:
        HttpURLConnection httpurlconnection;
        int j;
        httpurlconnection = (HttpURLConnection)(new URL("http://admarvel.s3.amazonaws.com/js/admarvel_mraid_v2_complete.js")).openConnection();
        httpurlconnection.setRequestMethod("GET");
        httpurlconnection.setDoOutput(false);
        httpurlconnection.setDoInput(true);
        httpurlconnection.setUseCaches(false);
        httpurlconnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
        httpurlconnection.setRequestProperty("Content-Length", "0");
        httpurlconnection.setConnectTimeout(2000);
        httpurlconnection.setReadTimeout(10000);
        j = httpurlconnection.getResponseCode();
        int k = httpurlconnection.getContentLength();
        Logging.log((new StringBuilder()).append("Mraid Connection Status Code: ").append(j).toString());
        Logging.log((new StringBuilder()).append("Mraid Content Length: ").append(k).toString());
        if (j != 200) goto _L4; else goto _L5
_L5:
        InputStream inputstream;
        Object obj;
        inputstream = (InputStream)httpurlconnection.getContent();
        if (!"gzip".equals(httpurlconnection.getContentEncoding()) || ac.a() >= 9)
        {
            break MISSING_BLOCK_LABEL_626;
        }
        obj = new GZIPInputStream(inputstream);
_L14:
        ArrayList arraylist = new ArrayList();
        int l;
        int i1;
        l = 0;
        i1 = 8192;
_L7:
        if (i1 == '\uFFFF')
        {
            break; /* Loop/switch isn't completed */
        }
        byte abyte0[];
        abyte0 = new byte[8192];
        i1 = ((InputStream) (obj)).read(abyte0, 0, 8192);
        if (i1 <= 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        a a1;
        a1 = new a();
        a1.a = abyte0;
        a1.b = i1;
        l += i1;
        arraylist.add(a1);
        IOException ioexception;
        if (true) goto _L7; else goto _L6
_L4:
        File file = new File(new File(AdMarvelView.a), (new StringBuilder()).append("/data/com.admarvel.android.admarvelcachedads").append(s1).toString());
        if (file.exists())
        {
            Logging.log((new StringBuilder()).append("AdMarvelLocalFileContentProvider::openFile: ").append(file.getAbsolutePath()).toString());
            ParcelFileDescriptor parcelfiledescriptor = ParcelFileDescriptor.open(file, 0x10000000);
            if (parcelfiledescriptor.getStatSize() > 0L)
            {
                return parcelfiledescriptor;
            }
        }
          goto _L2
_L6:
        ((InputStream) (obj)).close();
        if (l <= 0) goto _L9; else goto _L8
_L8:
        byte abyte1[] = new byte[l];
        int j1 = 0;
_L11:
        if (j1 >= arraylist.size())
        {
            break; /* Loop/switch isn't completed */
        }
        a a2 = (a)arraylist.get(j1);
        System.arraycopy(a2.a, 0, abyte1, i, a2.b);
        i += a2.b;
        j1++;
        if (true) goto _L11; else goto _L10
_L10:
        String s2 = new String(abyte1);
_L13:
        FileOutputStream fileoutputstream = getContext().openFileOutput("admarvel_mraid.js", 0);
        fileoutputstream.write(s2.getBytes());
        fileoutputstream.close();
_L12:
        try
        {
            return ParcelFileDescriptor.open(new File((new StringBuilder()).append("/data/data/").append(getContext().getPackageName()).append("/files").toString(), "admarvel_mraid.js"), 0x10000000);
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
        }
          goto _L4
        IOException ioexception1;
        ioexception1;
        ioexception1.printStackTrace();
          goto _L12
_L2:
        return null;
_L9:
        s2 = "";
          goto _L13
        obj = inputstream;
          goto _L14
    }

    public Cursor query(Uri uri, String as[], String s, String as1[], String s1)
    {
        throw new UnsupportedOperationException("Not supported by this provider");
    }

    public int update(Uri uri, ContentValues contentvalues, String s, String as[])
    {
        throw new UnsupportedOperationException("Not supported by this provider");
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
