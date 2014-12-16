.class public final Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/q;
.super Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/p;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private c:Z

.field private final d:Lorg/a/a/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/p;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/q;->c:Z

    .line 32
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/q;->d:Lorg/a/a/b/c;

    .line 36
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/q;->c()V

    .line 37
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/p;
    .locals 1
    .parameter

    .prologue
    .line 40
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/q;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/q;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/q;->onFinishInflate()V

    .line 42
    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/q;->d:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 64
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 65
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 66
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 1
    .parameter

    .prologue
    .line 70
    const v0, 0x7f0a04dc

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/q;->b:Landroid/widget/ProgressBar;

    .line 71
    const v0, 0x7f0a04d2

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/q;->a:Landroid/widget/TextView;

    .line 72
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/q;->c:Z

    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/q;->c:Z

    .line 56
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/q;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f03012f

    invoke-static {v0, v1, p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/q;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 57
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/q;->d:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 59
    :cond_0
    invoke-super {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/p;->onFinishInflate()V

    .line 60
    return-void
.end method
