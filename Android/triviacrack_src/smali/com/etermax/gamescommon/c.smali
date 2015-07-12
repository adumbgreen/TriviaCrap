.class public final Lcom/etermax/gamescommon/c;
.super Lcom/etermax/gamescommon/b;
.source "SourceFile"


# instance fields
.field private e:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/etermax/gamescommon/b;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/etermax/gamescommon/c;->e:Landroid/content/Context;

    .line 21
    invoke-direct {p0}, Lcom/etermax/gamescommon/c;->d()V

    .line 22
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/etermax/gamescommon/c;
    .locals 1
    .parameter

    .prologue
    .line 25
    new-instance v0, Lcom/etermax/gamescommon/c;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/c;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/etermax/gamescommon/c;->e:Landroid/content/Context;

    iput-object v0, p0, Lcom/etermax/gamescommon/c;->a:Landroid/content/Context;

    .line 30
    iget-object v0, p0, Lcom/etermax/gamescommon/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/c;->b:Lcom/etermax/gamescommon/login/datasource/a;

    .line 31
    iget-object v0, p0, Lcom/etermax/gamescommon/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/tools/j/c;->a(Landroid/content/Context;)Lcom/etermax/tools/j/c;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/c;->d:Lcom/etermax/tools/j/a;

    .line 32
    iget-object v0, p0, Lcom/etermax/gamescommon/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/tools/a/a/i;->a(Landroid/content/Context;)Lcom/etermax/tools/a/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/c;->c:Lcom/etermax/tools/a/a/g;

    .line 33
    return-void
.end method
