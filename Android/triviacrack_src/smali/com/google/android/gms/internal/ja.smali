.class public Lcom/google/android/gms/internal/ja;
.super Lcom/google/android/gms/internal/s;

# interfaces
.implements Lcom/google/android/gms/internal/ai;
.implements Lcom/google/android/gms/internal/an;
.implements Lcom/google/android/gms/internal/aq;
.implements Lcom/google/android/gms/internal/az;
.implements Lcom/google/android/gms/internal/cc;
.implements Lcom/google/android/gms/internal/ch;
.implements Lcom/google/android/gms/internal/ef;
.implements Lcom/google/android/gms/internal/fl;
.implements Lcom/google/android/gms/internal/iz;


# instance fields
.field private final a:Lcom/google/android/gms/internal/bg;

.field private final b:Lcom/google/android/gms/internal/jd;

.field private final c:Lcom/google/android/gms/internal/jg;

.field private final d:Lcom/google/android/gms/internal/c;

.field private e:Z

.field private final f:Landroid/content/ComponentCallbacks;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/am;Ljava/lang/String;Lcom/google/android/gms/internal/bg;Lcom/google/android/gms/internal/ew;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/s;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ja$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ja$1;-><init>(Lcom/google/android/gms/internal/ja;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ja;->f:Landroid/content/ComponentCallbacks;

    new-instance v0, Lcom/google/android/gms/internal/jd;

    invoke-direct {v0, p1, p2, p3, p5}, Lcom/google/android/gms/internal/jd;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/am;Ljava/lang/String;Lcom/google/android/gms/internal/ew;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iput-object p4, p0, Lcom/google/android/gms/internal/ja;->a:Lcom/google/android/gms/internal/bg;

    new-instance v0, Lcom/google/android/gms/internal/jg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/jg;-><init>(Lcom/google/android/gms/internal/ja;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ja;->c:Lcom/google/android/gms/internal/jg;

    new-instance v0, Lcom/google/android/gms/internal/c;

    invoke-direct {v0}, Lcom/google/android/gms/internal/c;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ja;->d:Lcom/google/android/gms/internal/c;

    invoke-static {p1}, Lcom/google/android/gms/internal/fq;->b(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ja;->s()V

    return-void
.end method

.method private A()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    iget-object v0, v0, Lcom/google/android/gms/internal/fg;->b:Lcom/google/android/gms/internal/fz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fz;->destroy()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ja;)Lcom/google/android/gms/internal/jd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    return-object v0
.end method

.method private a(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to load ad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/fx;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->f:Lcom/google/android/gms/internal/o;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->f:Lcom/google/android/gms/internal/o;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/o;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call AdListener.onAdFailedToLoad()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/fx;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    const/4 v1, -0x2

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v1, v1, Lcom/google/android/gms/internal/jd;->a:Lcom/google/android/gms/internal/jb;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/jb;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private b(Z)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    if-nez v0, :cond_1

    const-string v0, "Ad state was null when trying to ping impression URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/fx;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Pinging Impression URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/fx;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->j:Lcom/google/android/gms/internal/fh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fh;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    iget-object v0, v0, Lcom/google/android/gms/internal/fg;->e:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v1, v1, Lcom/google/android/gms/internal/jd;->e:Lcom/google/android/gms/internal/ew;

    iget-object v1, v1, Lcom/google/android/gms/internal/ew;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v2, v2, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    iget-object v2, v2, Lcom/google/android/gms/internal/fg;->e:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/fq;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    iget-object v0, v0, Lcom/google/android/gms/internal/fg;->o:Lcom/google/android/gms/internal/ay;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    iget-object v0, v0, Lcom/google/android/gms/internal/fg;->o:Lcom/google/android/gms/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/internal/ay;->d:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v1, v1, Lcom/google/android/gms/internal/jd;->e:Lcom/google/android/gms/internal/ew;

    iget-object v1, v1, Lcom/google/android/gms/internal/ew;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v2, v2, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    iget-object v3, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v3, v3, Lcom/google/android/gms/internal/jd;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v4, v4, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    iget-object v4, v4, Lcom/google/android/gms/internal/fg;->o:Lcom/google/android/gms/internal/ay;

    iget-object v5, v4, Lcom/google/android/gms/internal/ay;->d:Ljava/util/List;

    move v4, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/be;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/fg;Ljava/lang/String;ZLjava/util/List;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    iget-object v0, v0, Lcom/google/android/gms/internal/fg;->l:Lcom/google/android/gms/internal/aw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    iget-object v0, v0, Lcom/google/android/gms/internal/fg;->l:Lcom/google/android/gms/internal/aw;

    iget-object v0, v0, Lcom/google/android/gms/internal/aw;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v1, v1, Lcom/google/android/gms/internal/jd;->e:Lcom/google/android/gms/internal/ew;

    iget-object v1, v1, Lcom/google/android/gms/internal/ew;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v2, v2, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    iget-object v3, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v3, v3, Lcom/google/android/gms/internal/jd;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v4, v4, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    iget-object v4, v4, Lcom/google/android/gms/internal/fg;->l:Lcom/google/android/gms/internal/aw;

    iget-object v5, v4, Lcom/google/android/gms/internal/aw;->f:Ljava/util/List;

    move v4, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/be;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/fg;Ljava/lang/String;ZLjava/util/List;)V

    goto/16 :goto_0
.end method

.method private b(Lcom/google/android/gms/internal/fg;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p1, Lcom/google/android/gms/internal/fg;->k:Z

    if-eqz v0, :cond_5

    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/fg;->m:Lcom/google/android/gms/internal/bj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bj;->a()Lcom/google/android/gms/a/a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/a/d;->a(Lcom/google/android/gms/a/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v3, v3, Lcom/google/android/gms/internal/jd;->a:Lcom/google/android/gms/internal/jb;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/jb;->getNextView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v4, v4, Lcom/google/android/gms/internal/jd;->a:Lcom/google/android/gms/internal/jb;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/jb;->removeView(Landroid/view/View;)V

    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ja;->a(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->a:Lcom/google/android/gms/internal/jb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jb;->getChildCount()I

    move-result v0

    if-le v0, v2, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->a:Lcom/google/android/gms/internal/jb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jb;->showNext()V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->a:Lcom/google/android/gms/internal/jb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jb;->getNextView()Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Lcom/google/android/gms/internal/fz;

    if-eqz v3, :cond_6

    check-cast v0, Lcom/google/android/gms/internal/fz;

    iget-object v3, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v3, v3, Lcom/google/android/gms/internal/jd;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v4, v4, Lcom/google/android/gms/internal/jd;->h:Lcom/google/android/gms/internal/am;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/fz;->a(Landroid/content/Context;Lcom/google/android/gms/internal/am;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    iget-object v0, v0, Lcom/google/android/gms/internal/fg;->m:Lcom/google/android/gms/internal/bj;

    if-eqz v0, :cond_4

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    iget-object v0, v0, Lcom/google/android/gms/internal/fg;->m:Lcom/google/android/gms/internal/bj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bj;->c()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->a:Lcom/google/android/gms/internal/jb;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jb;->setVisibility(I)V

    move v0, v2

    :goto_3
    return v0

    :catch_0
    move-exception v0

    const-string v2, "Could not get View from mediation adapter."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/fx;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v2, "Could not add mediation view to view hierarchy."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/fx;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_3

    :cond_5
    iget-object v0, p1, Lcom/google/android/gms/internal/fg;->r:Lcom/google/android/gms/internal/am;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/fg;->b:Lcom/google/android/gms/internal/fz;

    iget-object v3, p1, Lcom/google/android/gms/internal/fg;->r:Lcom/google/android/gms/internal/am;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/fz;->a(Lcom/google/android/gms/internal/am;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->a:Lcom/google/android/gms/internal/jb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jb;->removeAllViews()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->a:Lcom/google/android/gms/internal/jb;

    iget-object v3, p1, Lcom/google/android/gms/internal/fg;->r:Lcom/google/android/gms/internal/am;

    iget v3, v3, Lcom/google/android/gms/internal/am;->g:I

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/jb;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->a:Lcom/google/android/gms/internal/jb;

    iget-object v3, p1, Lcom/google/android/gms/internal/fg;->r:Lcom/google/android/gms/internal/am;

    iget v3, v3, Lcom/google/android/gms/internal/am;->d:I

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/jb;->setMinimumHeight(I)V

    iget-object v0, p1, Lcom/google/android/gms/internal/fg;->b:Lcom/google/android/gms/internal/fz;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ja;->a(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_6
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v3, v3, Lcom/google/android/gms/internal/jd;->a:Lcom/google/android/gms/internal/jb;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/jb;->removeView(Landroid/view/View;)V

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v0, "Could not destroy previous mediation adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/fx;->e(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private c(Lcom/google/android/gms/internal/aj;)Lcom/google/android/gms/internal/eq;
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v3, v3, Lcom/google/android/gms/internal/jd;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v3, v3, Lcom/google/android/gms/internal/jd;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v3, v3, Lcom/google/android/gms/internal/jd;->h:Lcom/google/android/gms/internal/am;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/am;->e:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v3, v3, Lcom/google/android/gms/internal/jd;->a:Lcom/google/android/gms/internal/jb;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/jb;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v3, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v3, v3, Lcom/google/android/gms/internal/jd;->a:Lcom/google/android/gms/internal/jb;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/jb;->getLocationOnScreen([I)V

    aget v3, v0, v2

    aget v4, v0, v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v7, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v7, v7, Lcom/google/android/gms/internal/jd;->a:Lcom/google/android/gms/internal/jb;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/jb;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v8, v8, Lcom/google/android/gms/internal/jd;->a:Lcom/google/android/gms/internal/jb;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/jb;->getHeight()I

    move-result v8

    iget-object v9, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v9, v9, Lcom/google/android/gms/internal/jd;->a:Lcom/google/android/gms/internal/jb;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/jb;->isShown()Z

    move-result v9

    if-eqz v9, :cond_0

    add-int v9, v3, v7

    if-lez v9, :cond_0

    add-int v9, v4, v8

    if-lez v9, :cond_0

    iget v9, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-gt v3, v9, :cond_0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v4, v0, :cond_0

    move v0, v1

    :goto_1
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "x"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "y"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "width"

    invoke-virtual {v1, v2, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "height"

    invoke-virtual {v1, v2, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "visible"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_2
    invoke-static {}, Lcom/google/android/gms/internal/fj;->b()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    new-instance v2, Lcom/google/android/gms/internal/fh;

    iget-object v3, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v3, v3, Lcom/google/android/gms/internal/jd;->b:Ljava/lang/String;

    invoke-direct {v2, v7, v3}, Lcom/google/android/gms/internal/fh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/google/android/gms/internal/jd;->j:Lcom/google/android/gms/internal/fh;

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->j:Lcom/google/android/gms/internal/fh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/fh;->a(Lcom/google/android/gms/internal/aj;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->c:Landroid/content/Context;

    invoke-static {v0, p0, v7}, Lcom/google/android/gms/internal/fj;->a(Landroid/content/Context;Lcom/google/android/gms/internal/fl;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    new-instance v0, Lcom/google/android/gms/internal/eq;

    iget-object v2, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v3, v2, Lcom/google/android/gms/internal/jd;->h:Lcom/google/android/gms/internal/am;

    iget-object v2, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v4, v2, Lcom/google/android/gms/internal/jd;->b:Ljava/lang/String;

    sget-object v8, Lcom/google/android/gms/internal/fj;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v9, v2, Lcom/google/android/gms/internal/jd;->e:Lcom/google/android/gms/internal/ew;

    move-object v2, p1

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/eq;-><init>(Landroid/os/Bundle;Lcom/google/android/gms/internal/aj;Lcom/google/android/gms/internal/am;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ew;Landroid/os/Bundle;)V

    return-object v0

    :catch_0
    move-exception v3

    move-object v6, v0

    goto/16 :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_2
.end method

.method private s()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ja;->f:Landroid/content/ComponentCallbacks;

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :cond_0
    return-void
.end method

.method private t()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ja;->f:Landroid/content/ComponentCallbacks;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :cond_0
    return-void
.end method

.method private u()V
    .locals 2

    const-string v0, "Ad closing."

    invoke-static {v0}, Lcom/google/android/gms/internal/fx;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->f:Lcom/google/android/gms/internal/o;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->f:Lcom/google/android/gms/internal/o;

    invoke-interface {v0}, Lcom/google/android/gms/internal/o;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call AdListener.onAdClosed()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/fx;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private v()V
    .locals 2

    const-string v0, "Ad leaving application."

    invoke-static {v0}, Lcom/google/android/gms/internal/fx;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->f:Lcom/google/android/gms/internal/o;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->f:Lcom/google/android/gms/internal/o;

    invoke-interface {v0}, Lcom/google/android/gms/internal/o;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call AdListener.onAdLeftApplication()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/fx;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private w()V
    .locals 2

    const-string v0, "Ad opening."

    invoke-static {v0}, Lcom/google/android/gms/internal/fx;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->f:Lcom/google/android/gms/internal/o;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->f:Lcom/google/android/gms/internal/o;

    invoke-interface {v0}, Lcom/google/android/gms/internal/o;->d()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call AdListener.onAdOpened()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/fx;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private x()V
    .locals 2

    const-string v0, "Ad finished loading."

    invoke-static {v0}, Lcom/google/android/gms/internal/fx;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->f:Lcom/google/android/gms/internal/o;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->f:Lcom/google/android/gms/internal/o;

    invoke-interface {v0}, Lcom/google/android/gms/internal/o;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call AdListener.onAdLoaded()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/fx;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private y()Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v2, v2, Lcom/google/android/gms/internal/jd;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v3, v3, Lcom/google/android/gms/internal/jd;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.permission.INTERNET"

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/fq;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->h:Lcom/google/android/gms/internal/am;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/am;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->a:Lcom/google/android/gms/internal/jb;

    iget-object v2, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v2, v2, Lcom/google/android/gms/internal/jd;->h:Lcom/google/android/gms/internal/am;

    const-string v3, "Missing internet permission in AndroidManifest.xml."

    const-string v4, "Missing internet permission in AndroidManifest.xml. You must have the following declaration: <uses-permission android:name=\"android.permission.INTERNET\" />"

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/internal/fw;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/am;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move v0, v1

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v2, v2, Lcom/google/android/gms/internal/jd;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/fq;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->h:Lcom/google/android/gms/internal/am;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/am;->e:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->a:Lcom/google/android/gms/internal/jb;

    iget-object v2, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v2, v2, Lcom/google/android/gms/internal/jd;->h:Lcom/google/android/gms/internal/am;

    const-string v3, "Missing AdActivity with android:configChanges in AndroidManifest.xml."

    const-string v4, "Missing AdActivity with android:configChanges in AndroidManifest.xml. You must have the following declaration within the <application> element: <activity android:name=\"com.google.android.gms.ads.AdActivity\" android:configChanges=\"keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize\" />"

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/internal/fw;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/am;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move v0, v1

    :cond_3
    if-nez v0, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v2, v2, Lcom/google/android/gms/internal/jd;->h:Lcom/google/android/gms/internal/am;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/am;->e:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v2, v2, Lcom/google/android/gms/internal/jd;->a:Lcom/google/android/gms/internal/jb;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/jb;->setVisibility(I)V

    :cond_4
    return v0
.end method

.method private z()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    if-nez v0, :cond_1

    const-string v0, "Ad state was null when trying to ping click URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/fx;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Pinging click URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/fx;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->j:Lcom/google/android/gms/internal/fh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fh;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    iget-object v0, v0, Lcom/google/android/gms/internal/fg;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v1, v1, Lcom/google/android/gms/internal/jd;->e:Lcom/google/android/gms/internal/ew;

    iget-object v1, v1, Lcom/google/android/gms/internal/ew;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v2, v2, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    iget-object v2, v2, Lcom/google/android/gms/internal/fg;->c:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/fq;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    iget-object v0, v0, Lcom/google/android/gms/internal/fg;->o:Lcom/google/android/gms/internal/ay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    iget-object v0, v0, Lcom/google/android/gms/internal/fg;->o:Lcom/google/android/gms/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/internal/ay;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v1, v1, Lcom/google/android/gms/internal/jd;->e:Lcom/google/android/gms/internal/ew;

    iget-object v1, v1, Lcom/google/android/gms/internal/ew;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v2, v2, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    iget-object v3, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v3, v3, Lcom/google/android/gms/internal/jd;->b:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v5, v5, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    iget-object v5, v5, Lcom/google/android/gms/internal/fg;->o:Lcom/google/android/gms/internal/ay;

    iget-object v5, v5, Lcom/google/android/gms/internal/ay;->c:Ljava/util/List;

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/be;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/fg;Ljava/lang/String;ZLjava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/google/android/gms/a/a;
    .locals 1

    const-string v0, "getAdFrame must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/ib;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->a:Lcom/google/android/gms/internal/jb;

    invoke-static {v0}, Lcom/google/android/gms/a/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/a/a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/internal/am;)V
    .locals 2

    const-string v0, "setAdSize must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/ib;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iput-object p1, v0, Lcom/google/android/gms/internal/jd;->h:Lcom/google/android/gms/internal/am;

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    iget-object v0, v0, Lcom/google/android/gms/internal/fg;->b:Lcom/google/android/gms/internal/fz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/fz;->a(Lcom/google/android/gms/internal/am;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->a:Lcom/google/android/gms/internal/jb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jb;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->a:Lcom/google/android/gms/internal/jb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v1, v1, Lcom/google/android/gms/internal/jd;->a:Lcom/google/android/gms/internal/jb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/jb;->getNextView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jb;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->a:Lcom/google/android/gms/internal/jb;

    iget v1, p1, Lcom/google/android/gms/internal/am;->g:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jb;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->a:Lcom/google/android/gms/internal/jb;

    iget v1, p1, Lcom/google/android/gms/internal/am;->d:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jb;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->a:Lcom/google/android/gms/internal/jb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jb;->requestLayout()V

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/dh;)V
    .locals 1

    const-string v0, "setInAppPurchaseListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/ib;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iput-object p1, v0, Lcom/google/android/gms/internal/jd;->m:Lcom/google/android/gms/internal/dh;

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/du;Ljava/lang/String;)V
    .locals 4

    const-string v0, "setPlayStorePurchaseParams must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/ib;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    new-instance v1, Lcom/google/android/gms/internal/dc;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/dc;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/jd;->n:Lcom/google/android/gms/internal/dc;

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iput-object p1, v0, Lcom/google/android/gms/internal/jd;->l:Lcom/google/android/gms/internal/du;

    invoke-static {}, Lcom/google/android/gms/internal/fj;->f()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/cu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v1, v1, Lcom/google/android/gms/internal/jd;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v2, v2, Lcom/google/android/gms/internal/jd;->l:Lcom/google/android/gms/internal/du;

    iget-object v3, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v3, v3, Lcom/google/android/gms/internal/jd;->n:Lcom/google/android/gms/internal/dc;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/cu;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/du;Lcom/google/android/gms/internal/dc;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cu;->e()V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/gms/internal/fg;)V
    .locals 8

    const-wide/16 v2, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x3

    const/4 v6, -0x2

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iput-object v7, v0, Lcom/google/android/gms/internal/jd;->g:Lcom/google/android/gms/internal/fo;

    iget v0, p1, Lcom/google/android/gms/internal/fg;->d:I

    if-eq v0, v6, :cond_0

    iget v0, p1, Lcom/google/android/gms/internal/fg;->d:I

    if-eq v0, v5, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jd;->a()Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/fj;->a(Ljava/util/HashSet;)V

    :cond_0
    iget v0, p1, Lcom/google/android/gms/internal/fg;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/fg;->a:Lcom/google/android/gms/internal/aj;

    iget-object v0, v0, Lcom/google/android/gms/internal/aj;->c:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/google/android/gms/internal/fg;->a:Lcom/google/android/gms/internal/aj;

    iget-object v0, v0, Lcom/google/android/gms/internal/aj;->c:Landroid/os/Bundle;

    const-string v1, "_noRefresh"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v1, v1, Lcom/google/android/gms/internal/jd;->h:Lcom/google/android/gms/internal/am;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/am;->e:Z

    if-eqz v1, :cond_5

    iget-object v0, p1, Lcom/google/android/gms/internal/fg;->b:Lcom/google/android/gms/internal/fz;

    invoke-static {v0}, Lcom/google/android/gms/internal/fq;->a(Landroid/webkit/WebView;)V

    :cond_2
    :goto_2
    iget v0, p1, Lcom/google/android/gms/internal/fg;->d:I

    if-ne v0, v5, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/fg;->o:Lcom/google/android/gms/internal/ay;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/fg;->o:Lcom/google/android/gms/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/internal/ay;->e:Ljava/util/List;

    if-eqz v0, :cond_3

    const-string v0, "Pinging no fill URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/fx;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v1, v1, Lcom/google/android/gms/internal/jd;->e:Lcom/google/android/gms/internal/ew;

    iget-object v1, v1, Lcom/google/android/gms/internal/ew;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v3, v2, Lcom/google/android/gms/internal/jd;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/fg;->o:Lcom/google/android/gms/internal/ay;

    iget-object v5, v2, Lcom/google/android/gms/internal/ay;->e:Ljava/util/List;

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/be;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/fg;Ljava/lang/String;ZLjava/util/List;)V

    :cond_3
    iget v0, p1, Lcom/google/android/gms/internal/fg;->d:I

    if-eq v0, v6, :cond_8

    iget v0, p1, Lcom/google/android/gms/internal/fg;->d:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ja;->a(I)V

    goto :goto_0

    :cond_4
    move v0, v4

    goto :goto_1

    :cond_5
    if-nez v0, :cond_2

    iget-wide v0, p1, Lcom/google/android/gms/internal/fg;->h:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->c:Lcom/google/android/gms/internal/jg;

    iget-object v1, p1, Lcom/google/android/gms/internal/fg;->a:Lcom/google/android/gms/internal/aj;

    iget-wide v2, p1, Lcom/google/android/gms/internal/fg;->h:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/jg;->a(Lcom/google/android/gms/internal/aj;J)V

    goto :goto_2

    :cond_6
    iget-object v0, p1, Lcom/google/android/gms/internal/fg;->o:Lcom/google/android/gms/internal/ay;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/google/android/gms/internal/fg;->o:Lcom/google/android/gms/internal/ay;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ay;->g:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->c:Lcom/google/android/gms/internal/jg;

    iget-object v1, p1, Lcom/google/android/gms/internal/fg;->a:Lcom/google/android/gms/internal/aj;

    iget-object v2, p1, Lcom/google/android/gms/internal/fg;->o:Lcom/google/android/gms/internal/ay;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ay;->g:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/jg;->a(Lcom/google/android/gms/internal/aj;J)V

    goto :goto_2

    :cond_7
    iget-boolean v0, p1, Lcom/google/android/gms/internal/fg;->k:Z

    if-nez v0, :cond_2

    iget v0, p1, Lcom/google/android/gms/internal/fg;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->c:Lcom/google/android/gms/internal/jg;

    iget-object v1, p1, Lcom/google/android/gms/internal/fg;->a:Lcom/google/android/gms/internal/aj;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jg;->a(Lcom/google/android/gms/internal/aj;)V

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->h:Lcom/google/android/gms/internal/am;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/am;->e:Z

    if-nez v0, :cond_a

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ja;->b(Lcom/google/android/gms/internal/fg;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ja;->a(I)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->a:Lcom/google/android/gms/internal/jb;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->a:Lcom/google/android/gms/internal/jb;

    invoke-static {v0}, Lcom/google/android/gms/internal/jb;->a(Lcom/google/android/gms/internal/jb;)Lcom/google/android/gms/internal/fs;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/fg;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fs;->a(Ljava/lang/String;)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    iget-object v0, v0, Lcom/google/android/gms/internal/fg;->p:Lcom/google/android/gms/internal/ba;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    iget-object v0, v0, Lcom/google/android/gms/internal/fg;->p:Lcom/google/android/gms/internal/ba;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ba;->a(Lcom/google/android/gms/internal/az;)V

    :cond_b
    iget-object v0, p1, Lcom/google/android/gms/internal/fg;->p:Lcom/google/android/gms/internal/ba;

    if-eqz v0, :cond_c

    iget-object v0, p1, Lcom/google/android/gms/internal/fg;->p:Lcom/google/android/gms/internal/ba;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ba;->a(Lcom/google/android/gms/internal/az;)V

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->d:Lcom/google/android/gms/internal/c;

    iget-object v1, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v1, v1, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/c;->b(Lcom/google/android/gms/internal/fg;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iput-object p1, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    iget-object v0, p1, Lcom/google/android/gms/internal/fg;->r:Lcom/google/android/gms/internal/am;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v1, p1, Lcom/google/android/gms/internal/fg;->r:Lcom/google/android/gms/internal/am;

    iput-object v1, v0, Lcom/google/android/gms/internal/jd;->h:Lcom/google/android/gms/internal/am;

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->j:Lcom/google/android/gms/internal/fh;

    iget-wide v1, p1, Lcom/google/android/gms/internal/fg;->t:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/fh;->a(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->j:Lcom/google/android/gms/internal/fh;

    iget-wide v1, p1, Lcom/google/android/gms/internal/fg;->u:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/fh;->b(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->j:Lcom/google/android/gms/internal/fh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v1, v1, Lcom/google/android/gms/internal/jd;->h:Lcom/google/android/gms/internal/am;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/am;->e:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fh;->a(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->j:Lcom/google/android/gms/internal/fh;

    iget-boolean v1, p1, Lcom/google/android/gms/internal/fg;->k:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fh;->b(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->h:Lcom/google/android/gms/internal/am;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/am;->e:Z

    if-nez v0, :cond_e

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ja;->b(Z)V

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->o:Lcom/google/android/gms/internal/fm;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    new-instance v1, Lcom/google/android/gms/internal/fm;

    iget-object v2, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v2, v2, Lcom/google/android/gms/internal/jd;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/fm;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/jd;->o:Lcom/google/android/gms/internal/fm;

    :cond_f
    iget-object v0, p1, Lcom/google/android/gms/internal/fg;->o:Lcom/google/android/gms/internal/ay;

    if-eqz v0, :cond_12

    iget-object v0, p1, Lcom/google/android/gms/internal/fg;->o:Lcom/google/android/gms/internal/ay;

    iget v0, v0, Lcom/google/android/gms/internal/ay;->h:I

    iget-object v1, p1, Lcom/google/android/gms/internal/fg;->o:Lcom/google/android/gms/internal/ay;

    iget v4, v1, Lcom/google/android/gms/internal/ay;->i:I

    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v1, v1, Lcom/google/android/gms/internal/jd;->o:Lcom/google/android/gms/internal/fm;

    invoke-virtual {v1, v0, v4}, Lcom/google/android/gms/internal/fm;->a(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->h:Lcom/google/android/gms/internal/am;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/am;->e:Z

    if-nez v0, :cond_11

    iget-object v0, p1, Lcom/google/android/gms/internal/fg;->b:Lcom/google/android/gms/internal/fz;

    if-eqz v0, :cond_11

    iget-object v0, p1, Lcom/google/android/gms/internal/fg;->b:Lcom/google/android/gms/internal/fz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fz;->f()Lcom/google/android/gms/internal/gb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gb;->a()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p1, Lcom/google/android/gms/internal/fg;->j:Lorg/json/JSONObject;

    if-eqz v0, :cond_11

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->d:Lcom/google/android/gms/internal/c;

    iget-object v1, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v1, v1, Lcom/google/android/gms/internal/jd;->h:Lcom/google/android/gms/internal/am;

    iget-object v2, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v2, v2, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/c;->a(Lcom/google/android/gms/internal/am;Lcom/google/android/gms/internal/fg;)Lcom/google/android/gms/internal/d;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/fg;->b:Lcom/google/android/gms/internal/fz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/fz;->f()Lcom/google/android/gms/internal/gb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gb;->a()Z

    move-result v1

    if-eqz v1, :cond_11

    if-eqz v0, :cond_11

    new-instance v1, Lcom/google/android/gms/internal/jf;

    iget-object v2, p1, Lcom/google/android/gms/internal/fg;->b:Lcom/google/android/gms/internal/fz;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/jf;-><init>(Lcom/google/android/gms/internal/fz;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/d;->a(Lcom/google/android/gms/internal/a;)V

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    iget-object v0, v0, Lcom/google/android/gms/internal/fg;->b:Lcom/google/android/gms/internal/fz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fz;->a()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ja;->x()V

    goto/16 :goto_0

    :cond_12
    move v0, v4

    goto :goto_3
.end method

.method public a(Lcom/google/android/gms/internal/o;)V
    .locals 1

    const-string v0, "setAdListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/ib;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iput-object p1, v0, Lcom/google/android/gms/internal/jd;->f:Lcom/google/android/gms/internal/o;

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/y;)V
    .locals 1

    const-string v0, "setAppEventListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/ib;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iput-object p1, v0, Lcom/google/android/gms/internal/jd;->k:Lcom/google/android/gms/internal/y;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->k:Lcom/google/android/gms/internal/y;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->k:Lcom/google/android/gms/internal/y;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/y;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call the AppEventListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/fx;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/cv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v1, v1, Lcom/google/android/gms/internal/jd;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v2, v2, Lcom/google/android/gms/internal/jd;->e:Lcom/google/android/gms/internal/ew;

    iget-object v2, v2, Lcom/google/android/gms/internal/ew;->b:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/cv;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v1, v1, Lcom/google/android/gms/internal/jd;->m:Lcom/google/android/gms/internal/dh;

    if-nez v1, :cond_4

    const-string v1, "InAppPurchaseListener is not set. Try to launch default purchase flow."

    invoke-static {v1}, Lcom/google/android/gms/internal/fx;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v1, v1, Lcom/google/android/gms/internal/jd;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "Google Play Service unavailable, cannot launch default purchase flow."

    invoke-static {v0}, Lcom/google/android/gms/internal/fx;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v1, v1, Lcom/google/android/gms/internal/jd;->l:Lcom/google/android/gms/internal/du;

    if-nez v1, :cond_2

    const-string v0, "PlayStorePurchaseListener is not set."

    invoke-static {v0}, Lcom/google/android/gms/internal/fx;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v1, v1, Lcom/google/android/gms/internal/jd;->n:Lcom/google/android/gms/internal/dc;

    if-nez v1, :cond_3

    const-string v0, "PlayStorePurchaseVerifier is not initialized."

    invoke-static {v0}, Lcom/google/android/gms/internal/fx;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v1, v1, Lcom/google/android/gms/internal/jd;->l:Lcom/google/android/gms/internal/du;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/du;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v1, v1, Lcom/google/android/gms/internal/jd;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v2, v2, Lcom/google/android/gms/internal/jd;->e:Lcom/google/android/gms/internal/ew;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ew;->e:Z

    new-instance v3, Lcom/google/android/gms/internal/cr;

    iget-object v4, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v4, v4, Lcom/google/android/gms/internal/jd;->l:Lcom/google/android/gms/internal/du;

    iget-object v5, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v5, v5, Lcom/google/android/gms/internal/jd;->n:Lcom/google/android/gms/internal/dc;

    iget-object v6, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v6, v6, Lcom/google/android/gms/internal/jd;->c:Landroid/content/Context;

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/google/android/gms/internal/cr;-><init>(Lcom/google/android/gms/internal/de;Lcom/google/android/gms/internal/du;Lcom/google/android/gms/internal/dc;Landroid/content/Context;)V

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/cw;->a(Landroid/content/Context;ZLcom/google/android/gms/internal/cr;)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "Could not start In-App purchase."

    invoke-static {v1}, Lcom/google/android/gms/internal/fx;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v1, v1, Lcom/google/android/gms/internal/jd;->m:Lcom/google/android/gms/internal/dh;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/dh;->a(Lcom/google/android/gms/internal/de;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "Could not start In-App purchase."

    invoke-static {v0}, Lcom/google/android/gms/internal/fx;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/fh;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jd;->a(Ljava/util/HashSet;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iput-boolean p1, v0, Lcom/google/android/gms/internal/jd;->p:Z

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/aj;)Z
    .locals 12

    const/4 v10, 0x1

    const/4 v2, 0x0

    const-string v0, "loadAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/ib;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->g:Lcom/google/android/gms/internal/fo;

    if-eqz v0, :cond_1

    const-string v0, "An ad request is already in progress. Aborting."

    invoke-static {v0}, Lcom/google/android/gms/internal/fx;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->h:Lcom/google/android/gms/internal/am;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/am;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    if-eqz v0, :cond_2

    const-string v0, "An interstitial is already loading. Aborting."

    invoke-static {v0}, Lcom/google/android/gms/internal/fx;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ja;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Starting ad request."

    invoke-static {v0}, Lcom/google/android/gms/internal/fx;->c(Ljava/lang/String;)V

    iget-boolean v0, p1, Lcom/google/android/gms/internal/aj;->f:Z

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Use AdRequest.Builder.addTestDevice(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v1, v1, Lcom/google/android/gms/internal/jd;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/fw;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\") to get test ads on this device."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/fx;->c(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->c:Lcom/google/android/gms/internal/jg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jg;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iput-boolean v2, v0, Lcom/google/android/gms/internal/jd;->p:Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ja;->c(Lcom/google/android/gms/internal/aj;)Lcom/google/android/gms/internal/eq;

    move-result-object v11

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->h:Lcom/google/android/gms/internal/am;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/am;->e:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v1, v1, Lcom/google/android/gms/internal/jd;->h:Lcom/google/android/gms/internal/am;

    iget-object v3, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v4, v3, Lcom/google/android/gms/internal/jd;->d:Lcom/google/android/gms/internal/ik;

    iget-object v3, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v5, v3, Lcom/google/android/gms/internal/jd;->e:Lcom/google/android/gms/internal/ew;

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/fz;->a(Landroid/content/Context;Lcom/google/android/gms/internal/am;ZZLcom/google/android/gms/internal/ik;Lcom/google/android/gms/internal/ew;)Lcom/google/android/gms/internal/fz;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/fz;->f()Lcom/google/android/gms/internal/gb;

    move-result-object v0

    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p0

    move-object v4, p0

    move v5, v10

    move-object v6, p0

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/gb;->a(Lcom/google/android/gms/internal/iz;Lcom/google/android/gms/internal/cc;Lcom/google/android/gms/internal/ai;Lcom/google/android/gms/internal/ch;ZLcom/google/android/gms/internal/an;Lcom/google/android/gms/internal/aq;)V

    move-object v3, v8

    :goto_1
    iget-object v6, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v2, v1, Lcom/google/android/gms/internal/jd;->d:Lcom/google/android/gms/internal/ik;

    iget-object v4, p0, Lcom/google/android/gms/internal/ja;->a:Lcom/google/android/gms/internal/bg;

    move-object v1, v11

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ee;->a(Landroid/content/Context;Lcom/google/android/gms/internal/eq;Lcom/google/android/gms/internal/ik;Lcom/google/android/gms/internal/fz;Lcom/google/android/gms/internal/bg;Lcom/google/android/gms/internal/ef;)Lcom/google/android/gms/internal/fo;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/gms/internal/jd;->g:Lcom/google/android/gms/internal/fo;

    move v2, v10

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->a:Lcom/google/android/gms/internal/jb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jb;->getNextView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/fz;

    if-eqz v1, :cond_6

    check-cast v0, Lcom/google/android/gms/internal/fz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v1, v1, Lcom/google/android/gms/internal/jd;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v3, v3, Lcom/google/android/gms/internal/jd;->h:Lcom/google/android/gms/internal/am;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/fz;->a(Landroid/content/Context;Lcom/google/android/gms/internal/am;)V

    :cond_5
    :goto_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fz;->f()Lcom/google/android/gms/internal/gb;

    move-result-object v3

    move-object v4, p0

    move-object v5, p0

    move-object v6, p0

    move-object v7, p0

    move v8, v2

    move-object v9, p0

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/gb;->a(Lcom/google/android/gms/internal/iz;Lcom/google/android/gms/internal/cc;Lcom/google/android/gms/internal/ai;Lcom/google/android/gms/internal/ch;ZLcom/google/android/gms/internal/an;)V

    move-object v3, v0

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v1, v1, Lcom/google/android/gms/internal/jd;->a:Lcom/google/android/gms/internal/jb;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/jb;->removeView(Landroid/view/View;)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v1, v1, Lcom/google/android/gms/internal/jd;->h:Lcom/google/android/gms/internal/am;

    iget-object v3, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v4, v3, Lcom/google/android/gms/internal/jd;->d:Lcom/google/android/gms/internal/ik;

    iget-object v3, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v5, v3, Lcom/google/android/gms/internal/jd;->e:Lcom/google/android/gms/internal/ew;

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/fz;->a(Landroid/content/Context;Lcom/google/android/gms/internal/am;ZZLcom/google/android/gms/internal/ik;Lcom/google/android/gms/internal/ew;)Lcom/google/android/gms/internal/fz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v1, v1, Lcom/google/android/gms/internal/jd;->h:Lcom/google/android/gms/internal/am;

    iget-object v1, v1, Lcom/google/android/gms/internal/am;->h:[Lcom/google/android/gms/internal/am;

    if-nez v1, :cond_5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ja;->a(Landroid/view/View;)V

    goto :goto_2
.end method

.method public b()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/ib;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ja;->t()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iput-object v1, v0, Lcom/google/android/gms/internal/jd;->f:Lcom/google/android/gms/internal/o;

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iput-object v1, v0, Lcom/google/android/gms/internal/jd;->k:Lcom/google/android/gms/internal/y;

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->c:Lcom/google/android/gms/internal/jg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jg;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->d:Lcom/google/android/gms/internal/c;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/c;->a()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ja;->g()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->a:Lcom/google/android/gms/internal/jb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->a:Lcom/google/android/gms/internal/jb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jb;->removeAllViews()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    iget-object v0, v0, Lcom/google/android/gms/internal/fg;->b:Lcom/google/android/gms/internal/fz;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    iget-object v0, v0, Lcom/google/android/gms/internal/fg;->b:Lcom/google/android/gms/internal/fz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fz;->destroy()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    iget-object v0, v0, Lcom/google/android/gms/internal/fg;->m:Lcom/google/android/gms/internal/bj;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    iget-object v0, v0, Lcom/google/android/gms/internal/fg;->m:Lcom/google/android/gms/internal/bj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bj;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "Could not destroy mediation adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/fx;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Lcom/google/android/gms/internal/aj;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->a:Lcom/google/android/gms/internal/jb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jb;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/fq;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ja;->e:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ja;->a(Lcom/google/android/gms/internal/aj;)Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "Ad is not visible. Not refreshing ad."

    invoke-static {v0}, Lcom/google/android/gms/internal/fx;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->c:Lcom/google/android/gms/internal/jg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jg;->a(Lcom/google/android/gms/internal/aj;)V

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    const-string v0, "isLoaded must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/ib;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->g:Lcom/google/android/gms/internal/fo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 1

    const-string v0, "pause must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/ib;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    iget-object v0, v0, Lcom/google/android/gms/internal/fg;->b:Lcom/google/android/gms/internal/fz;

    invoke-static {v0}, Lcom/google/android/gms/internal/fq;->a(Landroid/webkit/WebView;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    iget-object v0, v0, Lcom/google/android/gms/internal/fg;->m:Lcom/google/android/gms/internal/bj;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    iget-object v0, v0, Lcom/google/android/gms/internal/fg;->m:Lcom/google/android/gms/internal/bj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bj;->d()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->d:Lcom/google/android/gms/internal/c;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/c;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->c:Lcom/google/android/gms/internal/jg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jg;->b()V

    return-void

    :catch_0
    move-exception v0

    const-string v0, "Could not pause mediation adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/fx;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public e()V
    .locals 1

    const-string v0, "resume must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/ib;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    iget-object v0, v0, Lcom/google/android/gms/internal/fg;->b:Lcom/google/android/gms/internal/fz;

    invoke-static {v0}, Lcom/google/android/gms/internal/fq;->b(Landroid/webkit/WebView;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    iget-object v0, v0, Lcom/google/android/gms/internal/fg;->m:Lcom/google/android/gms/internal/bj;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    iget-object v0, v0, Lcom/google/android/gms/internal/fg;->m:Lcom/google/android/gms/internal/bj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bj;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->c:Lcom/google/android/gms/internal/jg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jg;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->d:Lcom/google/android/gms/internal/c;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/c;->c()V

    return-void

    :catch_0
    move-exception v0

    const-string v0, "Could not resume mediation adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/fx;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public f()V
    .locals 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "showInterstitial must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/ib;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->h:Lcom/google/android/gms/internal/am;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/am;->e:Z

    if-nez v0, :cond_0

    const-string v0, "Cannot call showInterstitial on a banner ad."

    invoke-static {v0}, Lcom/google/android/gms/internal/fx;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    if-nez v0, :cond_1

    const-string v0, "The interstitial has not loaded."

    invoke-static {v0}, Lcom/google/android/gms/internal/fx;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    iget-object v0, v0, Lcom/google/android/gms/internal/fg;->b:Lcom/google/android/gms/internal/fz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fz;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "The interstitial is already showing."

    invoke-static {v0}, Lcom/google/android/gms/internal/fx;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    iget-object v0, v0, Lcom/google/android/gms/internal/fg;->b:Lcom/google/android/gms/internal/fz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fz;->a(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    iget-object v0, v0, Lcom/google/android/gms/internal/fg;->b:Lcom/google/android/gms/internal/fz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fz;->f()Lcom/google/android/gms/internal/gb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gb;->a()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    iget-object v0, v0, Lcom/google/android/gms/internal/fg;->j:Lorg/json/JSONObject;

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->d:Lcom/google/android/gms/internal/c;

    iget-object v3, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v3, v3, Lcom/google/android/gms/internal/jd;->h:Lcom/google/android/gms/internal/am;

    iget-object v4, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v4, v4, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/c;->a(Lcom/google/android/gms/internal/am;Lcom/google/android/gms/internal/fg;)Lcom/google/android/gms/internal/d;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v3, v3, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    iget-object v3, v3, Lcom/google/android/gms/internal/fg;->b:Lcom/google/android/gms/internal/fz;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/fz;->f()Lcom/google/android/gms/internal/gb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/gb;->a()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    new-instance v3, Lcom/google/android/gms/internal/jf;

    iget-object v4, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v4, v4, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    iget-object v4, v4, Lcom/google/android/gms/internal/fg;->b:Lcom/google/android/gms/internal/fz;

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/jf;-><init>(Lcom/google/android/gms/internal/fz;)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/d;->a(Lcom/google/android/gms/internal/a;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/fg;->k:Z

    if-eqz v0, :cond_5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    iget-object v0, v0, Lcom/google/android/gms/internal/fg;->m:Lcom/google/android/gms/internal/bj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bj;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not show interstitial."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/fx;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ja;->A()V

    goto/16 :goto_0

    :cond_5
    new-instance v8, Lcom/google/android/gms/internal/w;

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/jd;->p:Z

    invoke-direct {v8, v0, v2}, Lcom/google/android/gms/internal/w;-><init>(ZZ)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->c:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_6

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_6

    new-instance v8, Lcom/google/android/gms/internal/w;

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-boolean v5, v0, Lcom/google/android/gms/internal/jd;->p:Z

    iget v0, v3, Landroid/graphics/Rect;->top:I

    iget v3, v4, Landroid/graphics/Rect;->top:I

    if-ne v0, v3, :cond_7

    move v0, v1

    :goto_1
    invoke-direct {v8, v5, v0}, Lcom/google/android/gms/internal/w;-><init>(ZZ)V

    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/ci;

    iget-object v1, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v1, v1, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    iget-object v4, v1, Lcom/google/android/gms/internal/fg;->b:Lcom/google/android/gms/internal/fz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v1, v1, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    iget v5, v1, Lcom/google/android/gms/internal/fg;->g:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v6, v1, Lcom/google/android/gms/internal/jd;->e:Lcom/google/android/gms/internal/ew;

    iget-object v1, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v1, v1, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    iget-object v7, v1, Lcom/google/android/gms/internal/fg;->v:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ci;-><init>(Lcom/google/android/gms/internal/iz;Lcom/google/android/gms/internal/cc;Lcom/google/android/gms/internal/ch;Lcom/google/android/gms/internal/fz;ILcom/google/android/gms/internal/ew;Ljava/lang/String;Lcom/google/android/gms/internal/w;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v1, v1, Lcom/google/android/gms/internal/jd;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/bx;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ci;)V

    goto/16 :goto_0

    :cond_7
    move v0, v2

    goto :goto_1
.end method

.method public g()V
    .locals 2

    const-string v0, "stopLoading must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/ib;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    iget-object v0, v0, Lcom/google/android/gms/internal/fg;->b:Lcom/google/android/gms/internal/fz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fz;->stopLoading()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->g:Lcom/google/android/gms/internal/fo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->g:Lcom/google/android/gms/internal/fo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fo;->f()V

    :cond_1
    return-void
.end method

.method public h()V
    .locals 3

    const-string v0, "recordManualImpression must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/ib;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    if-nez v0, :cond_1

    const-string v0, "Ad state was null when trying to ping manual tracking URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/fx;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Pinging manual tracking URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/fx;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    iget-object v0, v0, Lcom/google/android/gms/internal/fg;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v1, v1, Lcom/google/android/gms/internal/jd;->e:Lcom/google/android/gms/internal/ew;

    iget-object v1, v1, Lcom/google/android/gms/internal/ew;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v2, v2, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    iget-object v2, v2, Lcom/google/android/gms/internal/fg;->f:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/fq;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method public i()Lcom/google/android/gms/internal/am;
    .locals 1

    const-string v0, "getAdSize must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/ib;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->h:Lcom/google/android/gms/internal/am;

    return-object v0
.end method

.method public j()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ja;->r()V

    return-void
.end method

.method public k()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ja;->o()V

    return-void
.end method

.method public l()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ja;->q()V

    return-void
.end method

.method public m()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ja;->p()V

    return-void
.end method

.method public n()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mediation adapter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v1, v1, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    iget-object v1, v1, Lcom/google/android/gms/internal/fg;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " refreshed, but mediation adapters should never refresh."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/fx;->e(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ja;->b(Z)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ja;->x()V

    return-void
.end method

.method public o()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->d:Lcom/google/android/gms/internal/c;

    iget-object v1, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v1, v1, Lcom/google/android/gms/internal/jd;->i:Lcom/google/android/gms/internal/fg;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/c;->b(Lcom/google/android/gms/internal/fg;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->h:Lcom/google/android/gms/internal/am;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/am;->e:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ja;->A()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ja;->e:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ja;->u()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->j:Lcom/google/android/gms/internal/fh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fh;->c()V

    return-void
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ja;->b:Lcom/google/android/gms/internal/jd;

    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->h:Lcom/google/android/gms/internal/am;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/am;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ja;->b(Z)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ja;->e:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ja;->w()V

    return-void
.end method

.method public q()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ja;->v()V

    return-void
.end method

.method public r()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ja;->z()V

    return-void
.end method
