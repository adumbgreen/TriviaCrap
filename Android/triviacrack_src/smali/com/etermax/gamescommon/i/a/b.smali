.class public final Lcom/etermax/gamescommon/i/a/b;
.super Lcom/etermax/gamescommon/i/a/a;
.source "SourceFile"


# instance fields
.field private f:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/etermax/gamescommon/i/a/a;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/etermax/gamescommon/i/a/b;->f:Landroid/content/Context;

    .line 21
    invoke-direct {p0}, Lcom/etermax/gamescommon/i/a/b;->c()V

    .line 22
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/etermax/gamescommon/i/a/b;
    .locals 1
    .parameter

    .prologue
    .line 25
    new-instance v0, Lcom/etermax/gamescommon/i/a/b;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/i/a/b;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/etermax/gamescommon/i/a/b;->f:Landroid/content/Context;

    iput-object v0, p0, Lcom/etermax/gamescommon/i/a/b;->d:Landroid/content/Context;

    .line 30
    iget-object v0, p0, Lcom/etermax/gamescommon/i/a/b;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/login/datasource/d;->b(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/i/a/b;->c:Lcom/etermax/gamescommon/login/datasource/c;

    .line 31
    iget-object v0, p0, Lcom/etermax/gamescommon/i/a/b;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/tools/b/c;->a(Landroid/content/Context;)Lcom/etermax/tools/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/i/a/b;->b:Lcom/etermax/tools/b/a;

    .line 32
    iget-object v0, p0, Lcom/etermax/gamescommon/i/a/b;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/i/a/b;->a:Lcom/etermax/gamescommon/login/datasource/a;

    .line 33
    invoke-virtual {p0}, Lcom/etermax/gamescommon/i/a/b;->a()V

    .line 34
    return-void
.end method
