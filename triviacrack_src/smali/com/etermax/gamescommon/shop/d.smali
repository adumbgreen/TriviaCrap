.class public final Lcom/etermax/gamescommon/shop/d;
.super Lcom/etermax/gamescommon/shop/c;
.source "SourceFile"


# static fields
.field private static j:Lcom/etermax/gamescommon/shop/d;


# instance fields
.field private i:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/etermax/gamescommon/shop/c;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/etermax/gamescommon/shop/d;->i:Landroid/content/Context;

    .line 24
    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/etermax/gamescommon/shop/d;
    .locals 3
    .parameter

    .prologue
    .line 27
    sget-object v0, Lcom/etermax/gamescommon/shop/d;->j:Lcom/etermax/gamescommon/shop/d;

    if-nez v0, :cond_0

    .line 28
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 29
    new-instance v1, Lcom/etermax/gamescommon/shop/d;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/etermax/gamescommon/shop/d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/etermax/gamescommon/shop/d;->j:Lcom/etermax/gamescommon/shop/d;

    .line 30
    sget-object v1, Lcom/etermax/gamescommon/shop/d;->j:Lcom/etermax/gamescommon/shop/d;

    invoke-direct {v1}, Lcom/etermax/gamescommon/shop/d;->f()V

    .line 31
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 33
    :cond_0
    sget-object v0, Lcom/etermax/gamescommon/shop/d;->j:Lcom/etermax/gamescommon/shop/d;

    return-object v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/etermax/gamescommon/shop/d;->i:Landroid/content/Context;

    iput-object v0, p0, Lcom/etermax/gamescommon/shop/d;->c:Landroid/content/Context;

    .line 38
    iget-object v0, p0, Lcom/etermax/gamescommon/shop/d;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/datasource/i;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/datasource/i;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/shop/d;->f:Lcom/etermax/gamescommon/datasource/e;

    .line 39
    iget-object v0, p0, Lcom/etermax/gamescommon/shop/d;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/tools/f/d;->c(Landroid/content/Context;)Lcom/etermax/tools/f/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/shop/d;->d:Lcom/etermax/tools/f/a;

    .line 40
    iget-object v0, p0, Lcom/etermax/gamescommon/shop/d;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/shop/d;->e:Lcom/etermax/gamescommon/login/datasource/a;

    .line 41
    iget-object v0, p0, Lcom/etermax/gamescommon/shop/d;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/tools/j/c;->a(Landroid/content/Context;)Lcom/etermax/tools/j/c;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/shop/d;->g:Lcom/etermax/tools/j/a;

    .line 42
    invoke-virtual {p0}, Lcom/etermax/gamescommon/shop/d;->d()V

    .line 43
    return-void
.end method
