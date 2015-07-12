.class public final Lcom/etermax/preguntados/ui/newgame/f;
.super Lcom/etermax/preguntados/ui/newgame/e;
.source "SourceFile"


# instance fields
.field private d:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/newgame/e;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/etermax/preguntados/ui/newgame/f;->d:Landroid/content/Context;

    .line 20
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/newgame/f;->b()V

    .line 21
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/newgame/f;
    .locals 1
    .parameter

    .prologue
    .line 24
    new-instance v0, Lcom/etermax/preguntados/ui/newgame/f;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/newgame/f;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/f;->d:Landroid/content/Context;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/f;->a:Landroid/content/Context;

    .line 29
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/f;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/preguntados/datasource/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/datasource/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/f;->b:Lcom/etermax/preguntados/datasource/d;

    .line 30
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/f;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/c/b;->b(Landroid/content/Context;)Lcom/etermax/gamescommon/c/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/f;->c:Lcom/etermax/gamescommon/c/a;

    .line 31
    return-void
.end method
