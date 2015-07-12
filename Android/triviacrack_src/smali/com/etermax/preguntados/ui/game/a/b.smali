.class public final Lcom/etermax/preguntados/ui/game/a/b;
.super Lcom/etermax/preguntados/ui/game/a/a;
.source "SourceFile"


# static fields
.field private static h:Lcom/etermax/preguntados/ui/game/a/b;


# instance fields
.field private g:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/a/a;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/etermax/preguntados/ui/game/a/b;->g:Landroid/content/Context;

    .line 25
    return-void
.end method

.method private C()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/b;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/datasource/k;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/datasource/k;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/a/b;->b:Lcom/etermax/gamescommon/datasource/j;

    .line 39
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/b;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/h;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/h;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/a/b;->d:Lcom/etermax/gamescommon/e;

    .line 40
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/b;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/a/b;->c:Lcom/etermax/gamescommon/login/datasource/a;

    .line 41
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/b;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/preguntados/datasource/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/datasource/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/a/b;->a:Lcom/etermax/preguntados/datasource/d;

    .line 42
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/b;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/preguntados/c/a/c;->a(Landroid/content/Context;)Lcom/etermax/preguntados/c/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/a/b;->e:Lcom/etermax/preguntados/c/a/b;

    .line 43
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/game/a/b;
    .locals 3
    .parameter

    .prologue
    .line 28
    sget-object v0, Lcom/etermax/preguntados/ui/game/a/b;->h:Lcom/etermax/preguntados/ui/game/a/b;

    if-nez v0, :cond_0

    .line 29
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 30
    new-instance v1, Lcom/etermax/preguntados/ui/game/a/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/etermax/preguntados/ui/game/a/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/etermax/preguntados/ui/game/a/b;->h:Lcom/etermax/preguntados/ui/game/a/b;

    .line 31
    sget-object v1, Lcom/etermax/preguntados/ui/game/a/b;->h:Lcom/etermax/preguntados/ui/game/a/b;

    invoke-direct {v1}, Lcom/etermax/preguntados/ui/game/a/b;->C()V

    .line 32
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 34
    :cond_0
    sget-object v0, Lcom/etermax/preguntados/ui/game/a/b;->h:Lcom/etermax/preguntados/ui/game/a/b;

    return-object v0
.end method
