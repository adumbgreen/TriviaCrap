.class public final Lcom/etermax/tools/social/a/j;
.super Lcom/etermax/tools/social/a/b;
.source "SourceFile"


# static fields
.field private static c:Lcom/etermax/tools/social/a/j;


# instance fields
.field private b:Landroid/content/Context;

.field private d:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/etermax/tools/social/a/b;-><init>()V

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/etermax/tools/social/a/j;->d:Landroid/os/Handler;

    .line 25
    iput-object p1, p0, Lcom/etermax/tools/social/a/j;->b:Landroid/content/Context;

    .line 26
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/etermax/tools/social/a/j;
    .locals 3
    .parameter

    .prologue
    .line 29
    sget-object v0, Lcom/etermax/tools/social/a/j;->c:Lcom/etermax/tools/social/a/j;

    if-nez v0, :cond_0

    .line 30
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 31
    new-instance v1, Lcom/etermax/tools/social/a/j;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/etermax/tools/social/a/j;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/etermax/tools/social/a/j;->c:Lcom/etermax/tools/social/a/j;

    .line 32
    sget-object v1, Lcom/etermax/tools/social/a/j;->c:Lcom/etermax/tools/social/a/j;

    invoke-direct {v1}, Lcom/etermax/tools/social/a/j;->l()V

    .line 33
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 35
    :cond_0
    sget-object v0, Lcom/etermax/tools/social/a/j;->c:Lcom/etermax/tools/social/a/j;

    return-object v0
.end method

.method static synthetic a(Lcom/etermax/tools/social/a/j;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    invoke-super {p0}, Lcom/etermax/tools/social/a/b;->d()V

    return-void
.end method

.method static synthetic a(Lcom/etermax/tools/social/a/j;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/etermax/tools/social/a/b;->a(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic a(Lcom/etermax/tools/social/a/j;Lcom/facebook/Request;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/etermax/tools/social/a/b;->a(Lcom/facebook/Request;)V

    return-void
.end method

.method private l()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/etermax/tools/social/a/j;->b:Landroid/content/Context;

    iput-object v0, p0, Lcom/etermax/tools/social/a/j;->a:Landroid/content/Context;

    .line 40
    invoke-virtual {p0}, Lcom/etermax/tools/social/a/j;->a()V

    .line 41
    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)V
    .locals 6
    .parameter

    .prologue
    .line 77
    new-instance v0, Lcom/etermax/tools/social/a/j$3;

    const-string v2, ""

    const/4 v3, 0x0

    const-string v4, ""

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/etermax/tools/social/a/j$3;-><init>(Lcom/etermax/tools/social/a/j;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;)V

    invoke-static {v0}, Lorg/a/a/a;->a(Lorg/a/a/b;)V

    .line 91
    return-void
.end method

.method public a(Lcom/facebook/Request;)V
    .locals 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/etermax/tools/social/a/j;->d:Landroid/os/Handler;

    new-instance v1, Lcom/etermax/tools/social/a/j$1;

    invoke-direct {v1, p0, p1}, Lcom/etermax/tools/social/a/j$1;-><init>(Lcom/etermax/tools/social/a/j;Lcom/facebook/Request;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 55
    return-void
.end method

.method public d()V
    .locals 4

    .prologue
    .line 59
    new-instance v0, Lcom/etermax/tools/social/a/j$2;

    const-string v1, ""

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/etermax/tools/social/a/j$2;-><init>(Lcom/etermax/tools/social/a/j;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lorg/a/a/a;->a(Lorg/a/a/b;)V

    .line 73
    return-void
.end method
