.class public final Lcom/etermax/preguntados/sharing/t;
.super Lcom/etermax/preguntados/sharing/s;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private d:Z

.field private final e:Lorg/a/a/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/RankingsDTO;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/etermax/preguntados/sharing/s;-><init>(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/RankingsDTO;Z)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/preguntados/sharing/t;->d:Z

    .line 35
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/sharing/t;->e:Lorg/a/a/b/c;

    .line 39
    invoke-direct {p0}, Lcom/etermax/preguntados/sharing/t;->c()V

    .line 40
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/RankingsDTO;Z)Lcom/etermax/preguntados/sharing/s;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    new-instance v0, Lcom/etermax/preguntados/sharing/t;

    invoke-direct {v0, p0, p1, p2}, Lcom/etermax/preguntados/sharing/t;-><init>(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/RankingsDTO;Z)V

    .line 44
    invoke-virtual {v0}, Lcom/etermax/preguntados/sharing/t;->onFinishInflate()V

    .line 45
    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/t;->e:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 67
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 68
    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/t;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/etermax/tools/social/a/j;->a(Landroid/content/Context;)Lcom/etermax/tools/social/a/j;

    move-result-object v1

    iput-object v1, p0, Lcom/etermax/preguntados/sharing/t;->n:Lcom/etermax/tools/social/a/b;

    .line 69
    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/t;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v1

    iput-object v1, p0, Lcom/etermax/preguntados/sharing/t;->m:Lcom/etermax/gamescommon/login/datasource/a;

    .line 70
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 71
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 1
    .parameter

    .prologue
    .line 75
    const v0, 0x7f0a0044

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/preguntados/sharing/t;->a:Landroid/widget/ImageView;

    .line 76
    const v0, 0x7f0a04a4

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/sharing/t;->c:Landroid/widget/TextView;

    .line 77
    const v0, 0x7f0a04b5

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/sharing/t;->b:Landroid/widget/TextView;

    .line 78
    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/t;->a()V

    .line 79
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/etermax/preguntados/sharing/t;->d:Z

    if-nez v0, :cond_0

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/preguntados/sharing/t;->d:Z

    .line 59
    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/t;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030121

    invoke-static {v0, v1, p0}, Lcom/etermax/preguntados/sharing/t;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 60
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/t;->e:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 62
    :cond_0
    invoke-super {p0}, Lcom/etermax/preguntados/sharing/s;->onFinishInflate()V

    .line 63
    return-void
.end method
