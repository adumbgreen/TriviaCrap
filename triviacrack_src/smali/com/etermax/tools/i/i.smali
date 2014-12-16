.class public final Lcom/etermax/tools/i/i;
.super Lcom/etermax/tools/i/g;
.source "SourceFile"


# static fields
.field private static b:Lcom/etermax/tools/i/i;


# instance fields
.field private a:Landroid/content/Context;

.field private c:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/etermax/tools/i/g;-><init>()V

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/etermax/tools/i/i;->c:Landroid/os/Handler;

    .line 24
    iput-object p1, p0, Lcom/etermax/tools/i/i;->a:Landroid/content/Context;

    .line 25
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/etermax/tools/i/i;
    .locals 3
    .parameter

    .prologue
    .line 28
    sget-object v0, Lcom/etermax/tools/i/i;->b:Lcom/etermax/tools/i/i;

    if-nez v0, :cond_0

    .line 29
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 30
    new-instance v1, Lcom/etermax/tools/i/i;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/etermax/tools/i/i;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/etermax/tools/i/i;->b:Lcom/etermax/tools/i/i;

    .line 31
    sget-object v1, Lcom/etermax/tools/i/i;->b:Lcom/etermax/tools/i/i;

    invoke-direct {v1}, Lcom/etermax/tools/i/i;->a()V

    .line 32
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 34
    :cond_0
    sget-object v0, Lcom/etermax/tools/i/i;->b:Lcom/etermax/tools/i/i;

    return-object v0
.end method

.method private a()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method static synthetic a(Lcom/etermax/tools/i/i;Lcom/etermax/tools/i/h;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/etermax/tools/i/g;->b(Lcom/etermax/tools/i/h;)V

    return-void
.end method

.method static synthetic a(Lcom/etermax/tools/i/i;Lcom/etermax/tools/i/h;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/g;->a(Lcom/etermax/tools/i/h;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic a(Lcom/etermax/tools/i/i;Lcom/etermax/tools/i/h;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/g;->a(Lcom/etermax/tools/i/h;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/tools/i/h;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/etermax/tools/i/i;->c:Landroid/os/Handler;

    new-instance v1, Lcom/etermax/tools/i/i$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/etermax/tools/i/i$1;-><init>(Lcom/etermax/tools/i/i;Lcom/etermax/tools/i/h;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    return-void
.end method

.method public a(Lcom/etermax/tools/i/h;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/etermax/tools/i/i;->c:Landroid/os/Handler;

    new-instance v1, Lcom/etermax/tools/i/i$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/etermax/tools/i/i$2;-><init>(Lcom/etermax/tools/i/i;Lcom/etermax/tools/i/h;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 66
    return-void
.end method

.method public b(Lcom/etermax/tools/i/h;)V
    .locals 6
    .parameter

    .prologue
    .line 70
    new-instance v0, Lcom/etermax/tools/i/i$3;

    const-string v2, ""

    const/4 v3, 0x0

    const-string v4, ""

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/etermax/tools/i/i$3;-><init>(Lcom/etermax/tools/i/i;Ljava/lang/String;ILjava/lang/String;Lcom/etermax/tools/i/h;)V

    invoke-static {v0}, Lorg/a/a/a;->a(Lorg/a/a/b;)V

    .line 84
    return-void
.end method
