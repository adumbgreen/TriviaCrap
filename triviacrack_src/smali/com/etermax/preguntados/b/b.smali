.class public final Lcom/etermax/preguntados/b/b;
.super Lcom/etermax/preguntados/b/a;
.source "SourceFile"


# static fields
.field private static e:Lcom/etermax/preguntados/b/b;


# instance fields
.field private d:Landroid/content/Context;

.field private f:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/etermax/preguntados/b/a;-><init>()V

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/etermax/preguntados/b/b;->f:Landroid/os/Handler;

    .line 27
    iput-object p1, p0, Lcom/etermax/preguntados/b/b;->d:Landroid/content/Context;

    .line 28
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/etermax/preguntados/b/b;
    .locals 3
    .parameter

    .prologue
    .line 31
    sget-object v0, Lcom/etermax/preguntados/b/b;->e:Lcom/etermax/preguntados/b/b;

    if-nez v0, :cond_0

    .line 32
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 33
    new-instance v1, Lcom/etermax/preguntados/b/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/etermax/preguntados/b/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/etermax/preguntados/b/b;->e:Lcom/etermax/preguntados/b/b;

    .line 34
    sget-object v1, Lcom/etermax/preguntados/b/b;->e:Lcom/etermax/preguntados/b/b;

    invoke-direct {v1}, Lcom/etermax/preguntados/b/b;->a()V

    .line 35
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 37
    :cond_0
    sget-object v0, Lcom/etermax/preguntados/b/b;->e:Lcom/etermax/preguntados/b/b;

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/etermax/preguntados/b/b;->d:Landroid/content/Context;

    iput-object v0, p0, Lcom/etermax/preguntados/b/b;->c:Landroid/content/Context;

    .line 42
    iget-object v0, p0, Lcom/etermax/preguntados/b/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/animations/c;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/animations/c;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/b/b;->a:Lcom/etermax/gamescommon/animations/a;

    .line 43
    iget-object v0, p0, Lcom/etermax/preguntados/b/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/resources/c;->b(Landroid/content/Context;)Lcom/etermax/gamescommon/resources/c;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/b/b;->b:Lcom/etermax/gamescommon/resources/a;

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/b/b;Lcom/etermax/gamescommon/animations/d;Landroid/view/ViewGroup;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/b/a;->a(Lcom/etermax/gamescommon/animations/d;Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/b/b;[Lcom/etermax/preguntados/b/c;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/etermax/preguntados/b/a;->a([Lcom/etermax/preguntados/b/c;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/gamescommon/animations/d;Landroid/view/ViewGroup;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/etermax/preguntados/b/b;->f:Landroid/os/Handler;

    new-instance v1, Lcom/etermax/preguntados/b/b$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/etermax/preguntados/b/b$1;-><init>(Lcom/etermax/preguntados/b/b;Lcom/etermax/gamescommon/animations/d;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    return-void
.end method

.method public a([Lcom/etermax/preguntados/b/c;)V
    .locals 6
    .parameter

    .prologue
    .line 62
    new-instance v0, Lcom/etermax/preguntados/b/b$2;

    const-string v2, ""

    const/4 v3, 0x0

    const-string v4, ""

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/etermax/preguntados/b/b$2;-><init>(Lcom/etermax/preguntados/b/b;Ljava/lang/String;ILjava/lang/String;[Lcom/etermax/preguntados/b/c;)V

    invoke-static {v0}, Lorg/a/a/a;->a(Lorg/a/a/b;)V

    .line 76
    return-void
.end method
