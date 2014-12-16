.class public final Lcom/etermax/gamescommon/datasource/m;
.super Lcom/etermax/gamescommon/datasource/l;
.source "SourceFile"


# static fields
.field private static e:Lcom/etermax/gamescommon/datasource/m;


# instance fields
.field private d:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/etermax/gamescommon/datasource/l;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/etermax/gamescommon/datasource/m;->d:Landroid/content/Context;

    .line 20
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/etermax/gamescommon/datasource/m;
    .locals 3
    .parameter

    .prologue
    .line 23
    sget-object v0, Lcom/etermax/gamescommon/datasource/m;->e:Lcom/etermax/gamescommon/datasource/m;

    if-nez v0, :cond_0

    .line 24
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 25
    new-instance v1, Lcom/etermax/gamescommon/datasource/m;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/etermax/gamescommon/datasource/m;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/etermax/gamescommon/datasource/m;->e:Lcom/etermax/gamescommon/datasource/m;

    .line 26
    sget-object v1, Lcom/etermax/gamescommon/datasource/m;->e:Lcom/etermax/gamescommon/datasource/m;

    invoke-direct {v1}, Lcom/etermax/gamescommon/datasource/m;->c()V

    .line 27
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 29
    :cond_0
    sget-object v0, Lcom/etermax/gamescommon/datasource/m;->e:Lcom/etermax/gamescommon/datasource/m;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/m;->d:Landroid/content/Context;

    iput-object v0, p0, Lcom/etermax/gamescommon/datasource/m;->a:Landroid/content/Context;

    .line 34
    invoke-virtual {p0}, Lcom/etermax/gamescommon/datasource/m;->a()V

    .line 35
    return-void
.end method
