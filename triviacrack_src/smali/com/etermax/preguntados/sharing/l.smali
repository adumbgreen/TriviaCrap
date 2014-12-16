.class public final Lcom/etermax/preguntados/sharing/l;
.super Lcom/etermax/preguntados/sharing/k;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private o:Z

.field private final p:Lorg/a/a/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/QuestionDTO;Lcom/etermax/preguntados/c/a/b;Lcom/etermax/preguntados/ui/game/duelmode/g;Lcom/etermax/preguntados/e/c;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct/range {p0 .. p5}, Lcom/etermax/preguntados/sharing/k;-><init>(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/QuestionDTO;Lcom/etermax/preguntados/c/a/b;Lcom/etermax/preguntados/ui/game/duelmode/g;Lcom/etermax/preguntados/e/c;)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/preguntados/sharing/l;->o:Z

    .line 40
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/sharing/l;->p:Lorg/a/a/b/c;

    .line 44
    invoke-direct {p0}, Lcom/etermax/preguntados/sharing/l;->c()V

    .line 45
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/QuestionDTO;Lcom/etermax/preguntados/c/a/b;Lcom/etermax/preguntados/ui/game/duelmode/g;Lcom/etermax/preguntados/e/c;)Lcom/etermax/preguntados/sharing/k;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    new-instance v0, Lcom/etermax/preguntados/sharing/l;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/etermax/preguntados/sharing/l;-><init>(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/QuestionDTO;Lcom/etermax/preguntados/c/a/b;Lcom/etermax/preguntados/ui/game/duelmode/g;Lcom/etermax/preguntados/e/c;)V

    .line 59
    invoke-virtual {v0}, Lcom/etermax/preguntados/sharing/l;->onFinishInflate()V

    .line 60
    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/l;->p:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 82
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 83
    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/l;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/etermax/tools/social/a/j;->a(Landroid/content/Context;)Lcom/etermax/tools/social/a/j;

    move-result-object v1

    iput-object v1, p0, Lcom/etermax/preguntados/sharing/l;->n:Lcom/etermax/tools/social/a/b;

    .line 84
    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/l;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v1

    iput-object v1, p0, Lcom/etermax/preguntados/sharing/l;->m:Lcom/etermax/gamescommon/login/datasource/a;

    .line 85
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 86
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 1
    .parameter

    .prologue
    .line 102
    const v0, 0x7f0a02a3

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/etermax/preguntados/sharing/l;->j:Landroid/widget/LinearLayout;

    .line 103
    const v0, 0x7f0a02ac

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/etermax/preguntados/sharing/l;->h:Landroid/widget/Button;

    .line 104
    const v0, 0x7f0a02a2

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/sharing/l;->d:Landroid/widget/TextView;

    .line 105
    const v0, 0x7f0a02a6

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/etermax/preguntados/sharing/l;->e:Landroid/widget/Button;

    .line 106
    const v0, 0x7f0a029d

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/preguntados/sharing/l;->b:Landroid/widget/ImageView;

    .line 107
    const v0, 0x7f0a02a4

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/preguntados/sharing/l;->i:Landroid/widget/ImageView;

    .line 108
    const v0, 0x7f0a029b

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/etermax/preguntados/sharing/l;->c:Landroid/widget/LinearLayout;

    .line 109
    const v0, 0x7f0a029f

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/sharing/l;->k:Landroid/widget/TextView;

    .line 110
    const v0, 0x7f0a02aa

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/etermax/preguntados/sharing/l;->g:Landroid/widget/Button;

    .line 111
    const v0, 0x7f0a02a8

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/etermax/preguntados/sharing/l;->f:Landroid/widget/Button;

    .line 112
    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/l;->a()V

    .line 113
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/etermax/preguntados/sharing/l;->o:Z

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/preguntados/sharing/l;->o:Z

    .line 74
    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/l;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0300a9

    invoke-static {v0, v1, p0}, Lcom/etermax/preguntados/sharing/l;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 75
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/l;->p:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 77
    :cond_0
    invoke-super {p0}, Lcom/etermax/preguntados/sharing/k;->onFinishInflate()V

    .line 78
    return-void
.end method
