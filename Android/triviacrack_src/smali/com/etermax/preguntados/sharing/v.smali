.class public final Lcom/etermax/preguntados/sharing/v;
.super Lcom/etermax/preguntados/sharing/u;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private e:Z

.field private final f:Lorg/a/a/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/UserRankDTO;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/etermax/preguntados/sharing/u;-><init>(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/UserRankDTO;)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/preguntados/sharing/v;->e:Z

    .line 36
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/sharing/v;->f:Lorg/a/a/b/c;

    .line 40
    invoke-direct {p0}, Lcom/etermax/preguntados/sharing/v;->c()V

    .line 41
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/UserRankDTO;)Lcom/etermax/preguntados/sharing/u;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 44
    new-instance v0, Lcom/etermax/preguntados/sharing/v;

    invoke-direct {v0, p0, p1}, Lcom/etermax/preguntados/sharing/v;-><init>(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/UserRankDTO;)V

    .line 45
    invoke-virtual {v0}, Lcom/etermax/preguntados/sharing/v;->onFinishInflate()V

    .line 46
    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/v;->f:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 68
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 69
    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/v;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/etermax/tools/social/a/j;->a(Landroid/content/Context;)Lcom/etermax/tools/social/a/j;

    move-result-object v1

    iput-object v1, p0, Lcom/etermax/preguntados/sharing/v;->n:Lcom/etermax/tools/social/a/b;

    .line 70
    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/v;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v1

    iput-object v1, p0, Lcom/etermax/preguntados/sharing/v;->m:Lcom/etermax/gamescommon/login/datasource/a;

    .line 71
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 72
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 1
    .parameter

    .prologue
    .line 76
    const v0, 0x7f0a00c6

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/etermax/preguntados/sharing/v;->d:Landroid/widget/ViewSwitcher;

    .line 77
    const v0, 0x7f0a0047

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/preguntados/sharing/v;->c:Landroid/widget/ImageView;

    .line 78
    const v0, 0x7f0a04ba

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/sharing/v;->b:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f0a0142

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/sharing/v;->a:Landroid/widget/TextView;

    .line 80
    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/v;->a()V

    .line 81
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/etermax/preguntados/sharing/v;->e:Z

    if-nez v0, :cond_0

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/preguntados/sharing/v;->e:Z

    .line 60
    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/v;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030122

    invoke-static {v0, v1, p0}, Lcom/etermax/preguntados/sharing/v;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 61
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/v;->f:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 63
    :cond_0
    invoke-super {p0}, Lcom/etermax/preguntados/sharing/u;->onFinishInflate()V

    .line 64
    return-void
.end method
