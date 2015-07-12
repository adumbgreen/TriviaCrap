.class public final Lcom/etermax/gamescommon/profile/image/f;
.super Lcom/etermax/gamescommon/profile/image/a;
.source "SourceFile"


# instance fields
.field private g:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/etermax/gamescommon/profile/image/a;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/etermax/gamescommon/profile/image/f;->g:Landroid/content/Context;

    .line 24
    invoke-direct {p0}, Lcom/etermax/gamescommon/profile/image/f;->d()V

    .line 25
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/etermax/gamescommon/profile/image/f;
    .locals 1
    .parameter

    .prologue
    .line 28
    new-instance v0, Lcom/etermax/gamescommon/profile/image/f;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/profile/image/f;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/image/f;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/datasource/i;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/datasource/i;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/image/f;->a:Lcom/etermax/gamescommon/datasource/e;

    .line 33
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/image/f;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/tools/b/c;->a(Landroid/content/Context;)Lcom/etermax/tools/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/image/f;->c:Lcom/etermax/tools/b/a;

    .line 34
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/image/f;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/tools/social/a/j;->a(Landroid/content/Context;)Lcom/etermax/tools/social/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/image/f;->b:Lcom/etermax/tools/social/a/b;

    .line 35
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/image/f;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/login/datasource/d;->b(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/image/f;->d:Lcom/etermax/gamescommon/login/datasource/c;

    .line 36
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/image/f;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/image/f;->e:Lcom/etermax/gamescommon/login/datasource/a;

    .line 37
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/image/f;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/tools/f/d;->c(Landroid/content/Context;)Lcom/etermax/tools/f/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/image/f;->f:Lcom/etermax/tools/f/a;

    .line 38
    return-void
.end method
