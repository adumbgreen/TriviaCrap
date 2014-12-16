.class public final Lcom/etermax/preguntados/ui/widget/AnswerButtonView_;
.super Lcom/etermax/preguntados/ui/widget/AnswerButtonView;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private d:Z

.field private final e:Lorg/a/a/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView_;->d:Z

    .line 34
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView_;->e:Lorg/a/a/b/c;

    .line 43
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/widget/AnswerButtonView_;->b()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView_;->d:Z

    .line 34
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView_;->e:Lorg/a/a/b/c;

    .line 48
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/widget/AnswerButtonView_;->b()V

    .line 49
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView_;->e:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 76
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 77
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/widget/AnswerButtonView_;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/etermax/preguntados/g/b;->a(Landroid/content/Context;)Lcom/etermax/preguntados/g/b;

    move-result-object v1

    iput-object v1, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView_;->c:Lcom/etermax/preguntados/g/a;

    .line 78
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 79
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 1
    .parameter

    .prologue
    .line 95
    const v0, 0x7f0a0098

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/CustomFontButton;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView_;->a:Lcom/etermax/tools/widget/CustomFontButton;

    .line 96
    const v0, 0x7f0a0099

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView_;->b:Landroid/widget/ViewSwitcher;

    .line 97
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/widget/AnswerButtonView_;->a()V

    .line 98
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView_;->d:Z

    if-nez v0, :cond_0

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView_;->d:Z

    .line 68
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/widget/AnswerButtonView_;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030025

    invoke-static {v0, v1, p0}, Lcom/etermax/preguntados/ui/widget/AnswerButtonView_;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 69
    iget-object v0, p0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView_;->e:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 71
    :cond_0
    invoke-super {p0}, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;->onFinishInflate()V

    .line 72
    return-void
.end method
