.class public Lcom/google/android/gms/internal/gb;
.super Landroid/webkit/WebViewClient;


# instance fields
.field protected final a:Lcom/google/android/gms/internal/fz;

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/al;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Object;

.field private d:Lcom/google/android/gms/internal/iz;

.field private e:Lcom/google/android/gms/internal/cc;

.field private f:Lcom/google/android/gms/internal/gc;

.field private g:Lcom/google/android/gms/internal/ai;

.field private h:Z

.field private i:Lcom/google/android/gms/internal/an;

.field private j:Lcom/google/android/gms/internal/aq;

.field private k:Z

.field private l:Lcom/google/android/gms/internal/ch;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/fz;Z)V
    .locals 1

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gb;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gb;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gb;->h:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/gb;->a:Lcom/google/android/gms/internal/fz;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/gb;->k:Z

    return-void
.end method

.method private static a(Landroid/net/Uri;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/net/Uri;)V
    .locals 6

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/gb;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/al;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/internal/fq;->a(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/google/android/gms/internal/fx;->a(I)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received GMSG: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/fx;->d(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/fx;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/gb;->a:Lcom/google/android/gms/internal/fz;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/al;->a(Lcom/google/android/gms/internal/fz;Ljava/util/Map;)V

    :goto_1
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No GMSG handler found for GMSG: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/fx;->d(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/cf;)V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/gb;->a:Lcom/google/android/gms/internal/fz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fz;->i()Z

    move-result v1

    new-instance v0, Lcom/google/android/gms/internal/ci;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/gb;->a:Lcom/google/android/gms/internal/fz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fz;->e()Lcom/google/android/gms/internal/am;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/gms/internal/am;->e:Z

    if-nez v2, :cond_0

    move-object v2, v3

    :goto_0
    if-eqz v1, :cond_1

    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/gb;->l:Lcom/google/android/gms/internal/ch;

    iget-object v1, p0, Lcom/google/android/gms/internal/gb;->a:Lcom/google/android/gms/internal/fz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/fz;->h()Lcom/google/android/gms/internal/ew;

    move-result-object v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ci;-><init>(Lcom/google/android/gms/internal/cf;Lcom/google/android/gms/internal/iz;Lcom/google/android/gms/internal/cc;Lcom/google/android/gms/internal/ch;Lcom/google/android/gms/internal/ew;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gb;->a(Lcom/google/android/gms/internal/ci;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/gb;->d:Lcom/google/android/gms/internal/iz;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/gb;->e:Lcom/google/android/gms/internal/cc;

    goto :goto_1
.end method

.method protected a(Lcom/google/android/gms/internal/ci;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gb;->a:Lcom/google/android/gms/internal/fz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fz;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/bx;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ci;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/gc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gb;->f:Lcom/google/android/gms/internal/gc;

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/iz;Lcom/google/android/gms/internal/cc;Lcom/google/android/gms/internal/ai;Lcom/google/android/gms/internal/ch;ZLcom/google/android/gms/internal/an;)V
    .locals 2

    const-string v0, "/appEvent"

    new-instance v1, Lcom/google/android/gms/internal/ah;

    invoke-direct {v1, p3}, Lcom/google/android/gms/internal/ah;-><init>(Lcom/google/android/gms/internal/ai;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gb;->a(Ljava/lang/String;Lcom/google/android/gms/internal/al;)V

    const-string v0, "/canOpenURLs"

    sget-object v1, Lcom/google/android/gms/internal/ak;->b:Lcom/google/android/gms/internal/al;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gb;->a(Ljava/lang/String;Lcom/google/android/gms/internal/al;)V

    const-string v0, "/click"

    sget-object v1, Lcom/google/android/gms/internal/ak;->c:Lcom/google/android/gms/internal/al;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gb;->a(Ljava/lang/String;Lcom/google/android/gms/internal/al;)V

    const-string v0, "/close"

    sget-object v1, Lcom/google/android/gms/internal/ak;->d:Lcom/google/android/gms/internal/al;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gb;->a(Ljava/lang/String;Lcom/google/android/gms/internal/al;)V

    const-string v0, "/customClose"

    sget-object v1, Lcom/google/android/gms/internal/ak;->e:Lcom/google/android/gms/internal/al;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gb;->a(Ljava/lang/String;Lcom/google/android/gms/internal/al;)V

    const-string v0, "/httpTrack"

    sget-object v1, Lcom/google/android/gms/internal/ak;->f:Lcom/google/android/gms/internal/al;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gb;->a(Ljava/lang/String;Lcom/google/android/gms/internal/al;)V

    const-string v0, "/log"

    sget-object v1, Lcom/google/android/gms/internal/ak;->g:Lcom/google/android/gms/internal/al;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gb;->a(Ljava/lang/String;Lcom/google/android/gms/internal/al;)V

    const-string v0, "/open"

    new-instance v1, Lcom/google/android/gms/internal/ar;

    invoke-direct {v1, p6}, Lcom/google/android/gms/internal/ar;-><init>(Lcom/google/android/gms/internal/an;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gb;->a(Ljava/lang/String;Lcom/google/android/gms/internal/al;)V

    const-string v0, "/touch"

    sget-object v1, Lcom/google/android/gms/internal/ak;->h:Lcom/google/android/gms/internal/al;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gb;->a(Ljava/lang/String;Lcom/google/android/gms/internal/al;)V

    const-string v0, "/video"

    sget-object v1, Lcom/google/android/gms/internal/ak;->i:Lcom/google/android/gms/internal/al;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gb;->a(Ljava/lang/String;Lcom/google/android/gms/internal/al;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/gb;->d:Lcom/google/android/gms/internal/iz;

    iput-object p2, p0, Lcom/google/android/gms/internal/gb;->e:Lcom/google/android/gms/internal/cc;

    iput-object p3, p0, Lcom/google/android/gms/internal/gb;->g:Lcom/google/android/gms/internal/ai;

    iput-object p6, p0, Lcom/google/android/gms/internal/gb;->i:Lcom/google/android/gms/internal/an;

    iput-object p4, p0, Lcom/google/android/gms/internal/gb;->l:Lcom/google/android/gms/internal/ch;

    invoke-virtual {p0, p5}, Lcom/google/android/gms/internal/gb;->a(Z)V

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/iz;Lcom/google/android/gms/internal/cc;Lcom/google/android/gms/internal/ai;Lcom/google/android/gms/internal/ch;ZLcom/google/android/gms/internal/an;Lcom/google/android/gms/internal/aq;)V
    .locals 2

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/gms/internal/gb;->a(Lcom/google/android/gms/internal/iz;Lcom/google/android/gms/internal/cc;Lcom/google/android/gms/internal/ai;Lcom/google/android/gms/internal/ch;ZLcom/google/android/gms/internal/an;)V

    const-string v0, "/setInterstitialProperties"

    new-instance v1, Lcom/google/android/gms/internal/ao;

    invoke-direct {v1, p7}, Lcom/google/android/gms/internal/ao;-><init>(Lcom/google/android/gms/internal/aq;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gb;->a(Ljava/lang/String;Lcom/google/android/gms/internal/al;)V

    iput-object p7, p0, Lcom/google/android/gms/internal/gb;->j:Lcom/google/android/gms/internal/aq;

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/al;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gb;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/gb;->h:Z

    return-void
.end method

.method public final a(ZI)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/gb;->a:Lcom/google/android/gms/internal/fz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fz;->i()Z

    move-result v1

    new-instance v0, Lcom/google/android/gms/internal/ci;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/gb;->a:Lcom/google/android/gms/internal/fz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/fz;->e()Lcom/google/android/gms/internal/am;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/internal/am;->e:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/gb;->e:Lcom/google/android/gms/internal/cc;

    iget-object v3, p0, Lcom/google/android/gms/internal/gb;->l:Lcom/google/android/gms/internal/ch;

    iget-object v4, p0, Lcom/google/android/gms/internal/gb;->a:Lcom/google/android/gms/internal/fz;

    iget-object v5, p0, Lcom/google/android/gms/internal/gb;->a:Lcom/google/android/gms/internal/fz;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/fz;->h()Lcom/google/android/gms/internal/ew;

    move-result-object v7

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ci;-><init>(Lcom/google/android/gms/internal/iz;Lcom/google/android/gms/internal/cc;Lcom/google/android/gms/internal/ch;Lcom/google/android/gms/internal/fz;ZILcom/google/android/gms/internal/ew;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gb;->a(Lcom/google/android/gms/internal/ci;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/gb;->d:Lcom/google/android/gms/internal/iz;

    goto :goto_0
.end method

.method public final a(ZILjava/lang/String;)V
    .locals 11

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/gb;->a:Lcom/google/android/gms/internal/fz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fz;->i()Z

    move-result v3

    new-instance v0, Lcom/google/android/gms/internal/ci;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/gb;->a:Lcom/google/android/gms/internal/fz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/fz;->e()Lcom/google/android/gms/internal/am;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/internal/am;->e:Z

    if-nez v1, :cond_0

    move-object v1, v2

    :goto_0
    if-eqz v3, :cond_1

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/gb;->g:Lcom/google/android/gms/internal/ai;

    iget-object v4, p0, Lcom/google/android/gms/internal/gb;->l:Lcom/google/android/gms/internal/ch;

    iget-object v5, p0, Lcom/google/android/gms/internal/gb;->a:Lcom/google/android/gms/internal/fz;

    iget-object v6, p0, Lcom/google/android/gms/internal/gb;->a:Lcom/google/android/gms/internal/fz;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/fz;->h()Lcom/google/android/gms/internal/ew;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/gms/internal/gb;->i:Lcom/google/android/gms/internal/an;

    move v6, p1

    move v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ci;-><init>(Lcom/google/android/gms/internal/iz;Lcom/google/android/gms/internal/cc;Lcom/google/android/gms/internal/ai;Lcom/google/android/gms/internal/ch;Lcom/google/android/gms/internal/fz;ZILjava/lang/String;Lcom/google/android/gms/internal/ew;Lcom/google/android/gms/internal/an;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gb;->a(Lcom/google/android/gms/internal/ci;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/gb;->d:Lcom/google/android/gms/internal/iz;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/gb;->e:Lcom/google/android/gms/internal/cc;

    goto :goto_1
.end method

.method public final a(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/internal/gb;->a:Lcom/google/android/gms/internal/fz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fz;->i()Z

    move-result v2

    new-instance v0, Lcom/google/android/gms/internal/ci;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/gb;->a:Lcom/google/android/gms/internal/fz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/fz;->e()Lcom/google/android/gms/internal/am;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/internal/am;->e:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/gb;->g:Lcom/google/android/gms/internal/ai;

    iget-object v4, p0, Lcom/google/android/gms/internal/gb;->l:Lcom/google/android/gms/internal/ch;

    iget-object v5, p0, Lcom/google/android/gms/internal/gb;->a:Lcom/google/android/gms/internal/fz;

    iget-object v6, p0, Lcom/google/android/gms/internal/gb;->a:Lcom/google/android/gms/internal/fz;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/fz;->h()Lcom/google/android/gms/internal/ew;

    move-result-object v10

    iget-object v11, p0, Lcom/google/android/gms/internal/gb;->i:Lcom/google/android/gms/internal/an;

    move v6, p1

    move v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/ci;-><init>(Lcom/google/android/gms/internal/iz;Lcom/google/android/gms/internal/cc;Lcom/google/android/gms/internal/ai;Lcom/google/android/gms/internal/ch;Lcom/google/android/gms/internal/fz;ZILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ew;Lcom/google/android/gms/internal/an;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gb;->a(Lcom/google/android/gms/internal/ci;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/gb;->d:Lcom/google/android/gms/internal/iz;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/gb;->e:Lcom/google/android/gms/internal/cc;

    goto :goto_1
.end method

.method public a()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/gb;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gb;->k:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/gb;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gb;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/gb;->d:Lcom/google/android/gms/internal/iz;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/gb;->e:Lcom/google/android/gms/internal/cc;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/gb;->f:Lcom/google/android/gms/internal/gc;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/gb;->g:Lcom/google/android/gms/internal/ai;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gb;->h:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gb;->k:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/gb;->i:Lcom/google/android/gms/internal/an;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/gb;->l:Lcom/google/android/gms/internal/ch;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c()V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/gb;->c:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/gb;->h:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gb;->k:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gb;->a:Lcom/google/android/gms/internal/fz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fz;->d()Lcom/google/android/gms/internal/bx;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/fw;->b()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/google/android/gms/internal/fw;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/gb$1;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/gb$1;-><init>(Lcom/google/android/gms/internal/gb;Lcom/google/android/gms/internal/bx;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/bx;->k()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading resource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/fx;->d(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "gmsg"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "mobileads.google.com"

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gb;->b(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gb;->f:Lcom/google/android/gms/internal/gc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/gb;->f:Lcom/google/android/gms/internal/gc;

    iget-object v1, p0, Lcom/google/android/gms/internal/gb;->a:Lcom/google/android/gms/internal/fz;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/gc;->a(Lcom/google/android/gms/internal/fz;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/gb;->f:Lcom/google/android/gms/internal/gc;

    :cond_0
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdWebView shouldOverrideUrlLoading: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/fx;->d(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "gmsg"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "mobileads.google.com"

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gb;->b(Landroid/net/Uri;)V

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/gb;->h:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/gb;->a:Lcom/google/android/gms/internal/fz;

    if-ne p1, v1, :cond_1

    invoke-static {v0}, Lcom/google/android/gms/internal/gb;->a(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/gb;->a:Lcom/google/android/gms/internal/fz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/fz;->willNotDraw()Z

    move-result v1

    if-nez v1, :cond_3

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/gb;->a:Lcom/google/android/gms/internal/fz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/fz;->g()Lcom/google/android/gms/internal/ik;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ik;->a(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/gb;->a:Lcom/google/android/gms/internal/fz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fz;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ik;->a(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/gms/internal/im; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_2
    move-object v2, v0

    :goto_2
    new-instance v0, Lcom/google/android/gms/internal/cf;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/cf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gb;->a(Lcom/google/android/gms/internal/cf;)V

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to append parameter to URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/fx;->e(Ljava/lang/String;)V

    move-object v2, v0

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdWebView unable to handle URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/fx;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
