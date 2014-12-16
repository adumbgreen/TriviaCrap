.class public final Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/d;
.super Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/c;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private f:Z

.field private final g:Lorg/a/a/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/c;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/d;->f:Z

    .line 34
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/d;->g:Lorg/a/a/b/c;

    .line 38
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/d;->a()V

    .line 39
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/c;
    .locals 1
    .parameter

    .prologue
    .line 42
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/d;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/d;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/d;->onFinishInflate()V

    .line 44
    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/d;->g:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 66
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 67
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/etermax/preguntados/c/a/c;->a(Landroid/content/Context;)Lcom/etermax/preguntados/c/a/c;

    move-result-object v1

    iput-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/d;->a:Lcom/etermax/preguntados/c/a/b;

    .line 68
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 69
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 1
    .parameter

    .prologue
    .line 73
    const v0, 0x7f0a04cc

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/d;->e:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f0a018f

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/d;->d:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f0a04d1

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/d;->c:Landroid/widget/ImageView;

    .line 76
    const v0, 0x7f0a0198

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/d;->b:Landroid/widget/RelativeLayout;

    .line 77
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/d;->f:Z

    if-nez v0, :cond_0

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/d;->f:Z

    .line 58
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f03012c

    invoke-static {v0, v1, p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/d;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 59
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/d;->g:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 61
    :cond_0
    invoke-super {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/c;->onFinishInflate()V

    .line 62
    return-void
.end method
