.class public final Lcom/etermax/preguntados/sharing/r;
.super Lcom/etermax/preguntados/sharing/q;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private o:Z

.field private final p:Lorg/a/a/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/etermax/preguntados/sharing/p;Lcom/etermax/preguntados/c/a/b;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/etermax/preguntados/sharing/q;-><init>(Landroid/content/Context;Lcom/etermax/preguntados/sharing/p;Lcom/etermax/preguntados/c/a/b;)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/preguntados/sharing/r;->o:Z

    .line 37
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/sharing/r;->p:Lorg/a/a/b/c;

    .line 41
    invoke-direct {p0}, Lcom/etermax/preguntados/sharing/r;->c()V

    .line 42
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/etermax/preguntados/sharing/p;Lcom/etermax/preguntados/c/a/b;)Lcom/etermax/preguntados/sharing/q;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    new-instance v0, Lcom/etermax/preguntados/sharing/r;

    invoke-direct {v0, p0, p1, p2}, Lcom/etermax/preguntados/sharing/r;-><init>(Landroid/content/Context;Lcom/etermax/preguntados/sharing/p;Lcom/etermax/preguntados/c/a/b;)V

    .line 46
    invoke-virtual {v0}, Lcom/etermax/preguntados/sharing/r;->onFinishInflate()V

    .line 47
    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/r;->p:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 69
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 70
    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/r;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/etermax/tools/social/a/j;->a(Landroid/content/Context;)Lcom/etermax/tools/social/a/j;

    move-result-object v1

    iput-object v1, p0, Lcom/etermax/preguntados/sharing/r;->n:Lcom/etermax/tools/social/a/b;

    .line 71
    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/r;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v1

    iput-object v1, p0, Lcom/etermax/preguntados/sharing/r;->m:Lcom/etermax/gamescommon/login/datasource/a;

    .line 72
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 73
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 1
    .parameter

    .prologue
    .line 77
    const v0, 0x7f0a02a6

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/etermax/preguntados/sharing/r;->e:Landroid/widget/Button;

    .line 78
    const v0, 0x7f0a029f

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/sharing/r;->k:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f0a02aa

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/etermax/preguntados/sharing/r;->g:Landroid/widget/Button;

    .line 80
    const v0, 0x7f0a029b

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/etermax/preguntados/sharing/r;->c:Landroid/widget/LinearLayout;

    .line 81
    const v0, 0x7f0a029d

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/preguntados/sharing/r;->b:Landroid/widget/ImageView;

    .line 82
    const v0, 0x7f0a02a4

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/preguntados/sharing/r;->i:Landroid/widget/ImageView;

    .line 83
    const v0, 0x7f0a02a3

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/etermax/preguntados/sharing/r;->j:Landroid/widget/LinearLayout;

    .line 84
    const v0, 0x7f0a02ac

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/etermax/preguntados/sharing/r;->h:Landroid/widget/Button;

    .line 85
    const v0, 0x7f0a02a2

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/sharing/r;->d:Landroid/widget/TextView;

    .line 86
    const v0, 0x7f0a02a8

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/etermax/preguntados/sharing/r;->f:Landroid/widget/Button;

    .line 87
    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/r;->a()V

    .line 88
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/etermax/preguntados/sharing/r;->o:Z

    if-nez v0, :cond_0

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/preguntados/sharing/r;->o:Z

    .line 61
    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/r;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0300a9

    invoke-static {v0, v1, p0}, Lcom/etermax/preguntados/sharing/r;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 62
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/r;->p:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 64
    :cond_0
    invoke-super {p0}, Lcom/etermax/preguntados/sharing/q;->onFinishInflate()V

    .line 65
    return-void
.end method
