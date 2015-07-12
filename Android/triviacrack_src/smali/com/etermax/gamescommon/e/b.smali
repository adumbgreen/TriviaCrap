.class public final Lcom/etermax/gamescommon/e/b;
.super Lcom/etermax/gamescommon/e/a;
.source "SourceFile"


# static fields
.field private static g:Lcom/etermax/gamescommon/e/b;


# instance fields
.field private f:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/etermax/gamescommon/e/a;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/etermax/gamescommon/e/b;->f:Landroid/content/Context;

    .line 22
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/etermax/gamescommon/e/b;
    .locals 3
    .parameter

    .prologue
    .line 25
    sget-object v0, Lcom/etermax/gamescommon/e/b;->g:Lcom/etermax/gamescommon/e/b;

    if-nez v0, :cond_0

    .line 26
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 27
    new-instance v1, Lcom/etermax/gamescommon/e/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/etermax/gamescommon/e/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/etermax/gamescommon/e/b;->g:Lcom/etermax/gamescommon/e/b;

    .line 28
    sget-object v1, Lcom/etermax/gamescommon/e/b;->g:Lcom/etermax/gamescommon/e/b;

    invoke-direct {v1}, Lcom/etermax/gamescommon/e/b;->b()V

    .line 29
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 31
    :cond_0
    sget-object v0, Lcom/etermax/gamescommon/e/b;->g:Lcom/etermax/gamescommon/e/b;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/etermax/gamescommon/e/b;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/datasource/k;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/datasource/k;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/e/b;->e:Lcom/etermax/gamescommon/datasource/j;

    .line 36
    iget-object v0, p0, Lcom/etermax/gamescommon/e/b;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/login/datasource/d;->b(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/e/b;->d:Lcom/etermax/gamescommon/login/datasource/c;

    .line 37
    return-void
.end method
