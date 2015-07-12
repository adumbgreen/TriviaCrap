.class public final Lcom/etermax/chat/a/e;
.super Lcom/etermax/chat/a/a;
.source "SourceFile"


# static fields
.field private static e:Lcom/etermax/chat/a/e;


# instance fields
.field private d:Landroid/content/Context;

.field private f:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/etermax/chat/a/a;-><init>()V

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/etermax/chat/a/e;->f:Landroid/os/Handler;

    .line 26
    iput-object p1, p0, Lcom/etermax/chat/a/e;->d:Landroid/content/Context;

    .line 27
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/etermax/chat/a/e;
    .locals 3
    .parameter

    .prologue
    .line 30
    sget-object v0, Lcom/etermax/chat/a/e;->e:Lcom/etermax/chat/a/e;

    if-nez v0, :cond_0

    .line 31
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 32
    new-instance v1, Lcom/etermax/chat/a/e;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/etermax/chat/a/e;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/etermax/chat/a/e;->e:Lcom/etermax/chat/a/e;

    .line 33
    sget-object v1, Lcom/etermax/chat/a/e;->e:Lcom/etermax/chat/a/e;

    invoke-direct {v1}, Lcom/etermax/chat/a/e;->g()V

    .line 34
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 36
    :cond_0
    sget-object v0, Lcom/etermax/chat/a/e;->e:Lcom/etermax/chat/a/e;

    return-object v0
.end method

.method static synthetic a(Lcom/etermax/chat/a/e;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    invoke-super {p0}, Lcom/etermax/chat/a/a;->d()V

    return-void
.end method

.method static synthetic a(Lcom/etermax/chat/a/e;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/etermax/chat/a/a;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/etermax/chat/a/e;Lcom/etermax/chat/a/f;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/etermax/chat/a/a;->b(Lcom/etermax/chat/a/f;)V

    return-void
.end method

.method static synthetic a(Lcom/etermax/chat/a/e;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/etermax/chat/a/a;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic b(Lcom/etermax/chat/a/e;Lcom/etermax/chat/a/f;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/etermax/chat/a/a;->a(Lcom/etermax/chat/a/f;)V

    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/etermax/chat/a/e;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/chat/ui/adapter/c;->a(Landroid/content/Context;)Lcom/etermax/chat/ui/adapter/c;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/chat/a/e;->c:Lcom/etermax/chat/ui/adapter/a;

    .line 41
    iget-object v0, p0, Lcom/etermax/chat/a/e;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/chat/a/a/f;->a(Landroid/content/Context;)Lcom/etermax/chat/a/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/chat/a/e;->b:Lcom/etermax/chat/a/a/d;

    .line 42
    iget-object v0, p0, Lcom/etermax/chat/a/e;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/chat/a/e;->a:Lcom/etermax/gamescommon/login/datasource/a;

    .line 43
    invoke-virtual {p0}, Lcom/etermax/chat/a/e;->a()V

    .line 44
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/etermax/chat/a/e;->f:Landroid/os/Handler;

    new-instance v1, Lcom/etermax/chat/a/e$5;

    invoke-direct {v1, p0, p1}, Lcom/etermax/chat/a/e$5;-><init>(Lcom/etermax/chat/a/e;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 114
    return-void
.end method

.method public a(Lcom/etermax/chat/a/f;)V
    .locals 2
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/etermax/chat/a/e;->f:Landroid/os/Handler;

    new-instance v1, Lcom/etermax/chat/a/e$3;

    invoke-direct {v1, p0, p1}, Lcom/etermax/chat/a/e$3;-><init>(Lcom/etermax/chat/a/e;Lcom/etermax/chat/a/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/chat/a/f;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/etermax/chat/a/e;->f:Landroid/os/Handler;

    new-instance v1, Lcom/etermax/chat/a/e$4;

    invoke-direct {v1, p0, p1}, Lcom/etermax/chat/a/e$4;-><init>(Lcom/etermax/chat/a/e;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 100
    return-void
.end method

.method public b(Lcom/etermax/chat/a/f;)V
    .locals 2
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/etermax/chat/a/e;->f:Landroid/os/Handler;

    new-instance v1, Lcom/etermax/chat/a/e$2;

    invoke-direct {v1, p0, p1}, Lcom/etermax/chat/a/e$2;-><init>(Lcom/etermax/chat/a/e;Lcom/etermax/chat/a/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/etermax/chat/a/e;->f:Landroid/os/Handler;

    new-instance v1, Lcom/etermax/chat/a/e$1;

    invoke-direct {v1, p0}, Lcom/etermax/chat/a/e$1;-><init>(Lcom/etermax/chat/a/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    return-void
.end method
