// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.g;

import android.content.Context;
import android.media.MediaPlayer;
import android.media.SoundPool;
import android.util.SparseIntArray;
import com.etermax.gamescommon.e;
import com.etermax.gamescommon.g;
import com.etermax.n;

public class a
{

    public static final int A;
    public static final int B;
    public static final int C;
    public static final int D;
    public static final int E;
    public static final int F;
    public static final int c;
    public static final int d;
    public static final int e;
    public static final int f;
    public static final int g;
    public static final int h;
    public static final int i;
    public static final int j;
    public static final int k;
    public static final int l;
    public static final int m;
    public static final int n;
    public static final int o;
    public static final int p;
    public static final int q;
    public static final int r;
    public static final int s;
    public static final int t;
    public static final int u;
    public static final int v;
    public static final int w;
    public static final int x;
    public static final int y;
    public static final int z;
    private SparseIntArray G;
    private SoundPool H;
    private MediaPlayer I;
    e a;
    Context b;

    public a()
    {
        G = null;
        H = null;
        I = null;
    }

    private void a(MediaPlayer mediaplayer)
    {
        if (mediaplayer != null)
        {
            mediaplayer.stop();
            mediaplayer.release();
        }
    }

    private void a(MediaPlayer mediaplayer, boolean flag)
    {
        if (mediaplayer != null)
        {
            mediaplayer.setLooping(flag);
            mediaplayer.start();
        }
    }

    static void a(a a1)
    {
        a1.d();
    }

    static void a(a a1, MediaPlayer mediaplayer)
    {
        a1.a(mediaplayer);
    }

    private void c()
    {
        (new Thread(new Runnable() {

            final a a;

            public void run()
            {
                a.a(a);
            }

            
            {
                a = a.this;
                super();
            }
        })).start();
    }

    private void d()
    {
        if (G == null || G.size() != 0)
        {
            break MISSING_BLOCK_LABEL_767;
        }
        G.put(c, H.load(b, c, 1));
        G.put(d, H.load(b, d, 1));
        G.put(e, H.load(b, e, 1));
        G.put(f, H.load(b, f, 1));
        G.put(g, H.load(b, g, 1));
        G.put(h, H.load(b, h, 1));
        G.put(i, H.load(b, i, 1));
        G.put(j, H.load(b, j, 1));
        G.put(k, H.load(b, k, 1));
        G.put(l, H.load(b, l, 1));
        G.put(m, H.load(b, m, 1));
        G.put(n, H.load(b, n, 1));
        G.put(o, H.load(b, o, 1));
        G.put(p, H.load(b, p, 1));
        G.put(q, H.load(b, q, 1));
        G.put(r, H.load(b, r, 1));
        G.put(w, H.load(b, w, 1));
        G.put(s, H.load(b, s, 1));
        G.put(t, H.load(b, t, 1));
        G.put(u, H.load(b, u, 1));
        G.put(v, H.load(b, v, 1));
        G.put(z, H.load(b, z, 1));
        G.put(A, H.load(b, A, 1));
        G.put(B, H.load(b, B, 1));
        G.put(x, H.load(b, x, 1));
        G.put(C, H.load(b, C, 1));
        G.put(y, H.load(b, y, 1));
        G.put(D, H.load(b, D, 1));
        G.put(E, H.load(b, E, 1));
        G.put(F, H.load(b, F, 1));
        return;
        Exception exception;
        exception;
        exception.printStackTrace();
        return;
    }

    private android.media.MediaPlayer.OnCompletionListener e()
    {
        return new android.media.MediaPlayer.OnCompletionListener() {

            final a a;

            public void onCompletion(MediaPlayer mediaplayer)
            {
                a.a(a, mediaplayer);
            }

            
            {
                a = a.this;
                super();
            }
        };
    }

    public void a()
    {
        if (H == null)
        {
            H = new SoundPool(10, 3, 0);
        }
        if (G == null)
        {
            G = new SparseIntArray(35);
            c();
        }
    }

    public void a(int i1)
    {
        if (a.a(g.d, true))
        {
            a(i1, 0, 1);
        }
    }

    public void a(int i1, int j1, int k1)
    {
        if (G.indexOfKey(i1) < 0)
        {
            break MISSING_BLOCK_LABEL_33;
        }
        H.play(G.get(i1), 1.0F, 1.0F, 1, j1, k1);
        return;
        Exception exception;
        exception;
    }

    public void b()
    {
        if (!a.a(g.d, true))
        {
            break MISSING_BLOCK_LABEL_48;
        }
        I = MediaPlayer.create(b, y);
        I.setOnCompletionListener(e());
        a(I, false);
        return;
        Exception exception;
        exception;
    }

    static 
    {
        c = n.sfx_correcto;
        d = n.sfx_incorrecto;
        e = n.sfx_ruleta_giro;
        f = n.sfx_pregunta_aparicion;
        g = n.sfx_pregunta_salida;
        h = n.sfx_cuentaregresiva;
        i = n.sfx_finalizatiempo;
        j = n.sfx_powerup_bomba;
        k = n.sfx_powerup_cambiopregunta;
        l = n.sfx_powerup_doblechance;
        m = n.sfx_powerup_tiempo;
        n = n.sfx_tiro_extra;
        o = n.sfx_duelo_gano;
        p = n.sfx_duelo_perdio;
        q = n.sfx_partida_gano;
        r = n.sfx_partida_perdio;
        s = n.sfx_cargapunto;
        t = n.sfx_trash;
        u = n.sfx_corona;
        v = n.sfx_categoria;
        w = n.sfx_aviso;
        x = n.sfx_chat;
        y = n.sfx_inicioapp;
        z = n.sfx_play;
        A = n.sfx_oponentealeatorio;
        B = n.sfx_nocoins;
        C = n.sfx_send_message;
        D = n.sfx_lift;
        E = n.sfx_duelo_grupal_victoria;
        F = n.sfx_duelo_grupal_derrota;
    }
}
