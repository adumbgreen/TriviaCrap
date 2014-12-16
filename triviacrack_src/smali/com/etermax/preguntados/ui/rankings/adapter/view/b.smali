.class public final Lcom/etermax/preguntados/ui/rankings/adapter/view/b;
.super Lcom/etermax/preguntados/ui/rankings/adapter/view/a;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private i:Z

.field private final j:Lorg/a/a/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/rankings/adapter/view/a;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/rankings/adapter/view/b;->i:Z

    .line 33
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/rankings/adapter/view/b;->j:Lorg/a/a/b/c;

    .line 37
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/rankings/adapter/view/b;->b()V

    .line 38
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/rankings/adapter/view/a;
    .locals 1
    .parameter

    .prologue
    .line 41
    new-instance v0, Lcom/etermax/preguntados/ui/rankings/adapter/view/b;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/rankings/adapter/view/b;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/rankings/adapter/view/b;->onFinishInflate()V

    .line 43
    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/adapter/view/b;->j:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 65
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 66
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 67
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 1
    .parameter

    .prologue
    .line 71
    const v0, 0x7f0a042c

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/rankings/adapter/view/b;->e:Landroid/widget/TextView;

    .line 72
    const v0, 0x7f0a008c

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/rankings/adapter/view/b;->a:Landroid/view/View;

    .line 73
    const v0, 0x7f0a0432

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/rankings/adapter/view/b;->g:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f0a0429

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/rankings/adapter/view/b;->c:Landroid/view/View;

    .line 75
    const v0, 0x7f0a042b

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/rankings/adapter/view/b;->h:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f0a042f

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/rankings/adapter/view/b;->f:Landroid/widget/TextView;

    .line 77
    const v0, 0x7f0a042a

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/rankings/adapter/view/b;->d:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f0a0044

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/rankings/adapter/view/b;->b:Landroid/widget/ImageView;

    .line 79
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/rankings/adapter/view/b;->a()V

    .line 80
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/rankings/adapter/view/b;->i:Z

    if-nez v0, :cond_0

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/rankings/adapter/view/b;->i:Z

    .line 57
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/rankings/adapter/view/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f03010b

    invoke-static {v0, v1, p0}, Lcom/etermax/preguntados/ui/rankings/adapter/view/b;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 58
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/adapter/view/b;->j:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 60
    :cond_0
    invoke-super {p0}, Lcom/etermax/preguntados/ui/rankings/adapter/view/a;->onFinishInflate()V

    .line 61
    return-void
.end method
