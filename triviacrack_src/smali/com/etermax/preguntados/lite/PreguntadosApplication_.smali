.class public final Lcom/etermax/preguntados/lite/PreguntadosApplication_;
.super Lcom/etermax/preguntados/lite/PreguntadosApplication;
.source "SourceFile"


# static fields
.field private static m:Lcom/etermax/preguntados/lite/PreguntadosApplication;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/etermax/preguntados/lite/PreguntadosApplication;-><init>()V

    return-void
.end method

.method private z()V
    .locals 1

    .prologue
    .line 46
    invoke-static {p0}, Lcom/etermax/preguntados/datasource/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/datasource/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/lite/PreguntadosApplication_;->g:Lcom/etermax/preguntados/datasource/d;

    .line 47
    invoke-static {p0}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/lite/PreguntadosApplication_;->e:Lcom/etermax/gamescommon/login/datasource/a;

    .line 48
    invoke-static {p0}, Lcom/etermax/gamescommon/datasource/d;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/datasource/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/lite/PreguntadosApplication_;->c:Lcom/etermax/gamescommon/datasource/a;

    .line 49
    invoke-static {p0}, Lcom/etermax/gamescommon/datasource/i;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/datasource/i;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/lite/PreguntadosApplication_;->b:Lcom/etermax/gamescommon/datasource/e;

    .line 50
    invoke-static {p0}, Lcom/etermax/preguntados/c/a/c;->a(Landroid/content/Context;)Lcom/etermax/preguntados/c/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/lite/PreguntadosApplication_;->j:Lcom/etermax/preguntados/c/a/b;

    .line 51
    invoke-static {p0}, Lcom/etermax/gamescommon/promotion/PromotionsManager_;->getInstance_(Landroid/content/Context;)Lcom/etermax/gamescommon/promotion/PromotionsManager_;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/lite/PreguntadosApplication_;->i:Lcom/etermax/gamescommon/promotion/PromotionsManager;

    .line 52
    invoke-static {p0}, Lcom/etermax/preguntados/g/b;->a(Landroid/content/Context;)Lcom/etermax/preguntados/g/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/lite/PreguntadosApplication_;->h:Lcom/etermax/preguntados/g/a;

    .line 53
    invoke-static {p0}, Lcom/etermax/tools/b/c;->a(Landroid/content/Context;)Lcom/etermax/tools/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/lite/PreguntadosApplication_;->d:Lcom/etermax/tools/b/a;

    .line 54
    invoke-static {p0}, Lcom/etermax/gamescommon/c/b;->b(Landroid/content/Context;)Lcom/etermax/gamescommon/c/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/lite/PreguntadosApplication_;->f:Lcom/etermax/gamescommon/c/a;

    .line 55
    invoke-static {p0}, Lcom/etermax/gamescommon/login/datasource/d;->b(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/lite/PreguntadosApplication_;->a:Lcom/etermax/gamescommon/login/datasource/c;

    .line 56
    invoke-static {p0}, Lcom/etermax/preguntados/b/b;->a(Landroid/content/Context;)Lcom/etermax/preguntados/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/lite/PreguntadosApplication_;->k:Lcom/etermax/preguntados/b/a;

    .line 57
    invoke-virtual {p0}, Lcom/etermax/preguntados/lite/PreguntadosApplication_;->j()V

    .line 58
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 40
    sput-object p0, Lcom/etermax/preguntados/lite/PreguntadosApplication_;->m:Lcom/etermax/preguntados/lite/PreguntadosApplication;

    .line 41
    invoke-direct {p0}, Lcom/etermax/preguntados/lite/PreguntadosApplication_;->z()V

    .line 42
    invoke-super {p0}, Lcom/etermax/preguntados/lite/PreguntadosApplication;->onCreate()V

    .line 43
    return-void
.end method
