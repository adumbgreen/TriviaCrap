.class public final Lcom/etermax/gamescommon/datasource/i;
.super Lcom/etermax/gamescommon/datasource/e;
.source "SourceFile"


# static fields
.field private static h:Lcom/etermax/gamescommon/datasource/i;


# instance fields
.field private g:Landroid/content/Context;

.field private i:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/etermax/gamescommon/datasource/e;-><init>()V

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/etermax/gamescommon/datasource/i;->i:Landroid/os/Handler;

    .line 33
    iput-object p1, p0, Lcom/etermax/gamescommon/datasource/i;->g:Landroid/content/Context;

    .line 34
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/etermax/gamescommon/datasource/i;
    .locals 3
    .parameter

    .prologue
    .line 37
    sget-object v0, Lcom/etermax/gamescommon/datasource/i;->h:Lcom/etermax/gamescommon/datasource/i;

    if-nez v0, :cond_0

    .line 38
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 39
    new-instance v1, Lcom/etermax/gamescommon/datasource/i;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/etermax/gamescommon/datasource/i;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/etermax/gamescommon/datasource/i;->h:Lcom/etermax/gamescommon/datasource/i;

    .line 40
    sget-object v1, Lcom/etermax/gamescommon/datasource/i;->h:Lcom/etermax/gamescommon/datasource/i;

    invoke-direct {v1}, Lcom/etermax/gamescommon/datasource/i;->m()V

    .line 41
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 43
    :cond_0
    sget-object v0, Lcom/etermax/gamescommon/datasource/i;->h:Lcom/etermax/gamescommon/datasource/i;

    return-object v0
.end method

.method static synthetic a(Lcom/etermax/gamescommon/datasource/i;Lcom/etermax/gamescommon/datasource/dto/AdsDTO;Ljava/lang/Class;Lcom/etermax/gamescommon/datasource/h;Lcom/etermax/gamescommon/datasource/g;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-super {p0, p1, p2, p3, p4}, Lcom/etermax/gamescommon/datasource/e;->a(Lcom/etermax/gamescommon/datasource/dto/AdsDTO;Ljava/lang/Class;Lcom/etermax/gamescommon/datasource/h;Lcom/etermax/gamescommon/datasource/g;)V

    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/datasource/i;Lcom/etermax/gamescommon/datasource/g;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-super {p0, p1, p2}, Lcom/etermax/gamescommon/datasource/e;->a(Lcom/etermax/gamescommon/datasource/g;Ljava/lang/String;)V

    return-void
.end method

.method private m()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/etermax/gamescommon/datasource/a/b;

    invoke-direct {v0}, Lcom/etermax/gamescommon/datasource/a/b;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/datasource/i;->c:Lcom/etermax/gamescommon/datasource/a/a;

    .line 48
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/i;->g:Landroid/content/Context;

    iput-object v0, p0, Lcom/etermax/gamescommon/datasource/i;->s:Landroid/content/Context;

    .line 49
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/i;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/tools/a/a/i;->a(Landroid/content/Context;)Lcom/etermax/tools/a/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/datasource/i;->u:Lcom/etermax/tools/a/a/g;

    .line 50
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/i;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/datasource/i;->b:Lcom/etermax/gamescommon/login/datasource/a;

    .line 51
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/i;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/tools/j/c;->a(Landroid/content/Context;)Lcom/etermax/tools/j/c;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/datasource/i;->t:Lcom/etermax/tools/j/a;

    .line 52
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/i;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/login/datasource/d;->b(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/datasource/i;->a:Lcom/etermax/gamescommon/login/datasource/c;

    .line 53
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/i;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/mediation/MediationManager_;->getInstance_(Landroid/content/Context;)Lcom/etermax/gamescommon/mediation/MediationManager_;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/datasource/i;->f:Lcom/etermax/gamescommon/mediation/MediationManager;

    .line 54
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/i;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/datasource/k;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/datasource/k;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/datasource/i;->e:Lcom/etermax/gamescommon/datasource/j;

    .line 55
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/i;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/tools/a/a/k;->a(Landroid/content/Context;)Lcom/etermax/tools/a/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/datasource/i;->d:Lcom/etermax/tools/a/a/j;

    .line 56
    invoke-virtual {p0}, Lcom/etermax/gamescommon/datasource/i;->c()V

    .line 57
    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/gamescommon/datasource/dto/AdsDTO;Ljava/lang/Class;Lcom/etermax/gamescommon/datasource/h;Lcom/etermax/gamescommon/datasource/g;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/etermax/gamescommon/datasource/dto/AdsDTO;",
            ">(TT;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/etermax/gamescommon/datasource/h",
            "<TT;>;",
            "Lcom/etermax/gamescommon/datasource/g;",
            ")V"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Lcom/etermax/gamescommon/datasource/i$2;

    const-string v2, ""

    const/4 v3, 0x0

    const-string v4, ""

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/etermax/gamescommon/datasource/i$2;-><init>(Lcom/etermax/gamescommon/datasource/i;Ljava/lang/String;ILjava/lang/String;Lcom/etermax/gamescommon/datasource/dto/AdsDTO;Ljava/lang/Class;Lcom/etermax/gamescommon/datasource/h;Lcom/etermax/gamescommon/datasource/g;)V

    invoke-static {v0}, Lorg/a/a/a;->a(Lorg/a/a/b;)V

    .line 89
    return-void
.end method

.method public a(Lcom/etermax/gamescommon/datasource/g;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/i;->i:Landroid/os/Handler;

    new-instance v1, Lcom/etermax/gamescommon/datasource/i$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/etermax/gamescommon/datasource/i$1;-><init>(Lcom/etermax/gamescommon/datasource/i;Lcom/etermax/gamescommon/datasource/g;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 71
    return-void
.end method
