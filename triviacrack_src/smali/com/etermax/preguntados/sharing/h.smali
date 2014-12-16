.class public final Lcom/etermax/preguntados/sharing/h;
.super Lcom/etermax/preguntados/sharing/g;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private g:Z

.field private final h:Lorg/a/a/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/etermax/preguntados/sharing/g;-><init>(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/preguntados/sharing/h;->g:Z

    .line 36
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/sharing/h;->h:Lorg/a/a/b/c;

    .line 40
    invoke-direct {p0}, Lcom/etermax/preguntados/sharing/h;->c()V

    .line 41
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;)Lcom/etermax/preguntados/sharing/g;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 44
    new-instance v0, Lcom/etermax/preguntados/sharing/h;

    invoke-direct {v0, p0, p1}, Lcom/etermax/preguntados/sharing/h;-><init>(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;)V

    .line 45
    invoke-virtual {v0}, Lcom/etermax/preguntados/sharing/h;->onFinishInflate()V

    .line 46
    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/h;->h:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 68
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 69
    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/h;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v1

    iput-object v1, p0, Lcom/etermax/preguntados/sharing/h;->m:Lcom/etermax/gamescommon/login/datasource/a;

    .line 70
    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/h;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/etermax/tools/social/a/j;->a(Landroid/content/Context;)Lcom/etermax/tools/social/a/j;

    move-result-object v1

    iput-object v1, p0, Lcom/etermax/preguntados/sharing/h;->n:Lcom/etermax/tools/social/a/b;

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
    const v0, 0x7f0a036b

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/sharing/h;->b:Landroid/widget/TextView;

    .line 77
    const v0, 0x7f0a036a

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/sharing/h;->a:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f0a0370

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/sharing/h;->d:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f0a036e

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/etermax/preguntados/sharing/h;->f:Landroid/widget/ViewSwitcher;

    .line 80
    const v0, 0x7f0a036f

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/sharing/h;->c:Landroid/widget/TextView;

    .line 81
    const v0, 0x7f0a036c

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/preguntados/sharing/h;->e:Landroid/widget/ImageView;

    .line 82
    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/h;->a()V

    .line 83
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/etermax/preguntados/sharing/h;->g:Z

    if-nez v0, :cond_0

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/preguntados/sharing/h;->g:Z

    .line 60
    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/h;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0300eb

    invoke-static {v0, v1, p0}, Lcom/etermax/preguntados/sharing/h;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 61
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/h;->h:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 63
    :cond_0
    invoke-super {p0}, Lcom/etermax/preguntados/sharing/g;->onFinishInflate()V

    .line 64
    return-void
.end method
