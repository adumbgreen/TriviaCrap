.class public final Lcom/etermax/preguntados/ui/tvshow/d;
.super Lcom/etermax/preguntados/ui/tvshow/a;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private final j:Lorg/a/a/b/c;

.field private k:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/tvshow/a;-><init>()V

    .line 25
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/d;->j:Lorg/a/a/b/c;

    .line 113
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 58
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/tvshow/d;->e()V

    .line 59
    return-void
.end method

.method public static d()Lcom/etermax/preguntados/ui/tvshow/e;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Lcom/etermax/preguntados/ui/tvshow/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/etermax/preguntados/ui/tvshow/e;-><init>(Lcom/etermax/preguntados/ui/tvshow/d$1;)V

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/tvshow/d;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_3

    .line 98
    const-string v1, "mBackgroundColor"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    const-string v1, "mBackgroundColor"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/etermax/preguntados/ui/tvshow/d;->g:I

    .line 101
    :cond_0
    const-string v1, "mSubtitleResource"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    const-string v1, "mSubtitleResource"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/etermax/preguntados/ui/tvshow/d;->f:I

    .line 104
    :cond_1
    const-string v1, "mTextColor"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 105
    const-string v1, "mTextColor"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/etermax/preguntados/ui/tvshow/d;->h:I

    .line 107
    :cond_2
    const-string v1, "mTitleResource"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 108
    const-string v1, "mTitleResource"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/etermax/preguntados/ui/tvshow/d;->e:I

    .line 111
    :cond_3
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 2
    .parameter

    .prologue
    const v1, 0x7f0a0547

    .line 73
    invoke-interface {p1, v1}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/d;->a:Landroid/widget/LinearLayout;

    .line 74
    const v0, 0x7f0a0549

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/d;->b:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f0a0548

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/d;->d:Landroid/view/View;

    .line 76
    const v0, 0x7f0a054a

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/d;->c:Landroid/widget/TextView;

    .line 78
    invoke-interface {p1, v1}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_0

    .line 80
    new-instance v1, Lcom/etermax/preguntados/ui/tvshow/d$1;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/tvshow/d$1;-><init>(Lcom/etermax/preguntados/ui/tvshow/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/tvshow/d;->b()V

    .line 93
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/d;->k:Landroid/view/View;

    if-nez v0, :cond_0

    .line 42
    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/d;->k:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/d;->j:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 35
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/tvshow/d;->a(Landroid/os/Bundle;)V

    .line 36
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/tvshow/a;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 38
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/preguntados/ui/tvshow/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/d;->k:Landroid/view/View;

    .line 50
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/d;->k:Landroid/view/View;

    if-nez v0, :cond_0

    .line 51
    const v0, 0x7f030141

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/d;->k:Landroid/view/View;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/d;->k:Landroid/view/View;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/tvshow/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 64
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/d;->j:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 65
    return-void
.end method
