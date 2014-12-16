.class public final Lcom/etermax/tools/widget/ProfileProgressBar_;
.super Lcom/etermax/tools/widget/ProfileProgressBar;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private k:Z

.field private final l:Lorg/a/a/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/etermax/tools/widget/ProfileProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/tools/widget/ProfileProgressBar_;->k:Z

    .line 33
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/tools/widget/ProfileProgressBar_;->l:Lorg/a/a/b/c;

    .line 42
    invoke-direct {p0}, Lcom/etermax/tools/widget/ProfileProgressBar_;->c()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/etermax/tools/widget/ProfileProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/tools/widget/ProfileProgressBar_;->k:Z

    .line 33
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/tools/widget/ProfileProgressBar_;->l:Lorg/a/a/b/c;

    .line 37
    invoke-direct {p0}, Lcom/etermax/tools/widget/ProfileProgressBar_;->c()V

    .line 38
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/etermax/tools/widget/ProfileProgressBar_;->l:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 75
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 76
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 77
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 1
    .parameter

    .prologue
    .line 93
    const v0, 0x7f0a008c

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/etermax/tools/widget/ProfileProgressBar_;->f:Landroid/widget/RelativeLayout;

    .line 94
    const v0, 0x7f0a03b1

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/tools/widget/ProfileProgressBar_;->c:Landroid/widget/TextView;

    .line 95
    const v0, 0x7f0a03ae

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/etermax/tools/widget/ProfileProgressBar_;->d:Landroid/widget/RelativeLayout;

    .line 96
    const v0, 0x7f0a03af

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/tools/widget/ProfileProgressBar_;->b:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f0a03b0

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/etermax/tools/widget/ProfileProgressBar_;->e:Landroid/widget/RelativeLayout;

    .line 98
    invoke-virtual {p0}, Lcom/etermax/tools/widget/ProfileProgressBar_;->a()V

    .line 99
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/etermax/tools/widget/ProfileProgressBar_;->k:Z

    if-nez v0, :cond_0

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/tools/widget/ProfileProgressBar_;->k:Z

    .line 67
    invoke-virtual {p0}, Lcom/etermax/tools/widget/ProfileProgressBar_;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0300f8

    invoke-static {v0, v1, p0}, Lcom/etermax/tools/widget/ProfileProgressBar_;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 68
    iget-object v0, p0, Lcom/etermax/tools/widget/ProfileProgressBar_;->l:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 70
    :cond_0
    invoke-super {p0}, Lcom/etermax/tools/widget/ProfileProgressBar;->onFinishInflate()V

    .line 71
    return-void
.end method
