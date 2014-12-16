.class public final Lcom/etermax/gamescommon/login/datasource/d;
.super Lcom/etermax/gamescommon/login/datasource/c;
.source "SourceFile"


# static fields
.field private static k:Lcom/etermax/gamescommon/login/datasource/d;


# instance fields
.field private j:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/datasource/c;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/etermax/gamescommon/login/datasource/d;->j:Landroid/content/Context;

    .line 29
    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/d;
    .locals 3
    .parameter

    .prologue
    .line 32
    sget-object v0, Lcom/etermax/gamescommon/login/datasource/d;->k:Lcom/etermax/gamescommon/login/datasource/d;

    if-nez v0, :cond_0

    .line 33
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 34
    new-instance v1, Lcom/etermax/gamescommon/login/datasource/d;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/etermax/gamescommon/login/datasource/d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/etermax/gamescommon/login/datasource/d;->k:Lcom/etermax/gamescommon/login/datasource/d;

    .line 35
    sget-object v1, Lcom/etermax/gamescommon/login/datasource/d;->k:Lcom/etermax/gamescommon/login/datasource/d;

    invoke-direct {v1}, Lcom/etermax/gamescommon/login/datasource/d;->h()V

    .line 36
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 38
    :cond_0
    sget-object v0, Lcom/etermax/gamescommon/login/datasource/d;->k:Lcom/etermax/gamescommon/login/datasource/d;

    return-object v0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/etermax/gamescommon/login/datasource/a/d;

    invoke-direct {v0}, Lcom/etermax/gamescommon/login/datasource/a/d;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/login/datasource/d;->a:Lcom/etermax/gamescommon/login/datasource/a/c;

    .line 43
    new-instance v0, Lcom/etermax/gamescommon/login/datasource/a/f;

    invoke-direct {v0}, Lcom/etermax/gamescommon/login/datasource/a/f;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/login/datasource/d;->b:Lcom/etermax/gamescommon/login/datasource/a/e;

    .line 44
    new-instance v0, Lcom/etermax/gamescommon/login/datasource/a/b;

    invoke-direct {v0}, Lcom/etermax/gamescommon/login/datasource/a/b;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/login/datasource/d;->c:Lcom/etermax/gamescommon/login/datasource/a/a;

    .line 45
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/d;->j:Landroid/content/Context;

    iput-object v0, p0, Lcom/etermax/gamescommon/login/datasource/d;->s:Landroid/content/Context;

    .line 46
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/d;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/tools/j/c;->a(Landroid/content/Context;)Lcom/etermax/tools/j/c;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/login/datasource/d;->t:Lcom/etermax/tools/j/a;

    .line 47
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/d;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/tools/a/a/i;->a(Landroid/content/Context;)Lcom/etermax/tools/a/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/login/datasource/d;->u:Lcom/etermax/tools/a/a/g;

    .line 48
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/d;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/h;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/h;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/login/datasource/d;->g:Lcom/etermax/gamescommon/e;

    .line 49
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/d;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/datasource/m;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/datasource/m;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/login/datasource/d;->h:Lcom/etermax/gamescommon/datasource/l;

    .line 50
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/d;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/login/datasource/d;->d:Lcom/etermax/gamescommon/login/datasource/a;

    .line 51
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/d;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/tools/social/a/j;->a(Landroid/content/Context;)Lcom/etermax/tools/social/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/login/datasource/d;->e:Lcom/etermax/tools/social/a/b;

    .line 52
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/d;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/tools/a/a/k;->a(Landroid/content/Context;)Lcom/etermax/tools/a/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/login/datasource/d;->f:Lcom/etermax/tools/a/a/j;

    .line 53
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/datasource/d;->c()V

    .line 54
    return-void
.end method
