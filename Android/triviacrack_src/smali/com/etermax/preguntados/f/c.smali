.class public final Lcom/etermax/preguntados/f/c;
.super Lcom/etermax/preguntados/f/a;
.source "SourceFile"


# instance fields
.field private j:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/etermax/preguntados/f/a;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/etermax/preguntados/f/c;->j:Landroid/content/Context;

    .line 24
    invoke-direct {p0}, Lcom/etermax/preguntados/f/c;->f()V

    .line 25
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/etermax/preguntados/f/c;
    .locals 1
    .parameter

    .prologue
    .line 28
    new-instance v0, Lcom/etermax/preguntados/f/c;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/f/c;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/etermax/preguntados/f/c;->j:Landroid/content/Context;

    iput-object v0, p0, Lcom/etermax/preguntados/f/c;->i:Landroid/content/Context;

    .line 33
    iget-object v0, p0, Lcom/etermax/preguntados/f/c;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/f/c;->d:Lcom/etermax/gamescommon/login/datasource/a;

    .line 34
    iget-object v0, p0, Lcom/etermax/preguntados/f/c;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/login/datasource/d;->b(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/f/c;->c:Lcom/etermax/gamescommon/login/datasource/c;

    .line 35
    iget-object v0, p0, Lcom/etermax/preguntados/f/c;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/h;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/h;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/f/c;->e:Lcom/etermax/gamescommon/e;

    .line 36
    iget-object v0, p0, Lcom/etermax/preguntados/f/c;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/tools/f/d;->c(Landroid/content/Context;)Lcom/etermax/tools/f/d;

    move-result-object v0

    sput-object v0, Lcom/etermax/preguntados/f/c;->h:Lcom/etermax/tools/f/a;

    .line 37
    iget-object v0, p0, Lcom/etermax/preguntados/f/c;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/tools/b/c;->a(Landroid/content/Context;)Lcom/etermax/tools/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/f/c;->a:Lcom/etermax/tools/b/a;

    .line 38
    iget-object v0, p0, Lcom/etermax/preguntados/f/c;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/tools/social/a/j;->a(Landroid/content/Context;)Lcom/etermax/tools/social/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/f/c;->b:Lcom/etermax/tools/social/a/b;

    .line 39
    iget-object v0, p0, Lcom/etermax/preguntados/f/c;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/tools/f/d;->c(Landroid/content/Context;)Lcom/etermax/tools/f/d;

    move-result-object v0

    sput-object v0, Lcom/etermax/preguntados/f/c;->h:Lcom/etermax/tools/f/a;

    .line 40
    return-void
.end method
