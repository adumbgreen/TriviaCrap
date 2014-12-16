.class public final Lcom/etermax/preguntados/datasource/e;
.super Lcom/etermax/preguntados/datasource/d;
.source "SourceFile"


# static fields
.field private static w:Lcom/etermax/preguntados/datasource/e;


# instance fields
.field private v:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/etermax/preguntados/datasource/d;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/etermax/preguntados/datasource/e;->v:Landroid/content/Context;

    .line 31
    return-void
.end method

.method private I()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/etermax/preguntados/datasource/c;

    invoke-direct {v0}, Lcom/etermax/preguntados/datasource/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/datasource/e;->c:Lcom/etermax/preguntados/datasource/b;

    .line 45
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/e;->v:Landroid/content/Context;

    iput-object v0, p0, Lcom/etermax/preguntados/datasource/e;->s:Landroid/content/Context;

    .line 46
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/e;->v:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/login/datasource/d;->b(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/datasource/e;->a:Lcom/etermax/gamescommon/login/datasource/c;

    .line 47
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/e;->v:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/tools/a/a/i;->a(Landroid/content/Context;)Lcom/etermax/tools/a/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/datasource/e;->u:Lcom/etermax/tools/a/a/g;

    .line 48
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/e;->v:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/tools/j/c;->a(Landroid/content/Context;)Lcom/etermax/tools/j/c;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/datasource/e;->t:Lcom/etermax/tools/j/a;

    .line 49
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/e;->v:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/datasource/e;->b:Lcom/etermax/gamescommon/login/datasource/a;

    .line 50
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/e;->v:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/preguntados/e/d;->a(Landroid/content/Context;)Lcom/etermax/preguntados/e/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/datasource/e;->i:Lcom/etermax/preguntados/e/c;

    .line 51
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/e;->v:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/tools/a/a/k;->a(Landroid/content/Context;)Lcom/etermax/tools/a/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/datasource/e;->d:Lcom/etermax/tools/a/a/j;

    .line 52
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/e;->v:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/datasource/k;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/datasource/k;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/datasource/e;->f:Lcom/etermax/gamescommon/datasource/j;

    .line 53
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/e;->v:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/promotion/PromotionsManager_;->getInstance_(Landroid/content/Context;)Lcom/etermax/gamescommon/promotion/PromotionsManager_;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/datasource/e;->h:Lcom/etermax/gamescommon/promotion/PromotionsManager;

    .line 54
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/e;->v:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/resources/c;->b(Landroid/content/Context;)Lcom/etermax/gamescommon/resources/c;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/datasource/e;->e:Lcom/etermax/gamescommon/resources/a;

    .line 55
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/e;->v:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/e/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/e/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/datasource/e;->j:Lcom/etermax/gamescommon/e/a;

    .line 56
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/e;->v:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/tools/social/a/j;->a(Landroid/content/Context;)Lcom/etermax/tools/social/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/datasource/e;->g:Lcom/etermax/tools/social/a/b;

    .line 57
    invoke-virtual {p0}, Lcom/etermax/preguntados/datasource/e;->c()V

    .line 58
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/etermax/preguntados/datasource/e;
    .locals 3
    .parameter

    .prologue
    .line 34
    sget-object v0, Lcom/etermax/preguntados/datasource/e;->w:Lcom/etermax/preguntados/datasource/e;

    if-nez v0, :cond_0

    .line 35
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 36
    new-instance v1, Lcom/etermax/preguntados/datasource/e;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/etermax/preguntados/datasource/e;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/etermax/preguntados/datasource/e;->w:Lcom/etermax/preguntados/datasource/e;

    .line 37
    sget-object v1, Lcom/etermax/preguntados/datasource/e;->w:Lcom/etermax/preguntados/datasource/e;

    invoke-direct {v1}, Lcom/etermax/preguntados/datasource/e;->I()V

    .line 38
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 40
    :cond_0
    sget-object v0, Lcom/etermax/preguntados/datasource/e;->w:Lcom/etermax/preguntados/datasource/e;

    return-object v0
.end method
