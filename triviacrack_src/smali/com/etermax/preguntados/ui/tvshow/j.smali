.class public final Lcom/etermax/preguntados/ui/tvshow/j;
.super Lcom/etermax/preguntados/ui/tvshow/g;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private final w:Lorg/a/a/b/c;

.field private x:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/tvshow/g;-><init>()V

    .line 30
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/j;->w:Lorg/a/a/b/c;

    .line 121
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 59
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 60
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/tvshow/j;->g()V

    .line 61
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/tvshow/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/c/a/c;->a(Landroid/content/Context;)Lcom/etermax/preguntados/c/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/j;->b:Lcom/etermax/preguntados/c/a/b;

    .line 62
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/tvshow/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/g/b;->a(Landroid/content/Context;)Lcom/etermax/preguntados/g/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/j;->a:Lcom/etermax/preguntados/g/a;

    .line 63
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/tvshow/j;->b(Landroid/os/Bundle;)V

    .line 64
    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 113
    if-nez p1, :cond_0

    .line 119
    :goto_0
    return-void

    .line 116
    :cond_0
    const-string v0, "mHasAnswered"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/tvshow/j;->p:Z

    .line 117
    const-string v0, "mIsLoading"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/etermax/preguntados/ui/tvshow/j;->q:Z

    .line 118
    const-string v0, "mStartTime"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/etermax/preguntados/ui/tvshow/j;->o:J

    goto :goto_0
.end method

.method public static f()Lcom/etermax/preguntados/ui/tvshow/k;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Lcom/etermax/preguntados/ui/tvshow/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/etermax/preguntados/ui/tvshow/k;-><init>(Lcom/etermax/preguntados/ui/tvshow/j$1;)V

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/tvshow/j;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_0

    .line 98
    const-string v1, "mQuestion"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    const-string v1, "mQuestion"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/j;->c:Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;

    .line 102
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 1
    .parameter

    .prologue
    .line 78
    const v0, 0x7f0a0387

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/j;->e:Landroid/widget/ImageView;

    .line 79
    const v0, 0x7f0a0112

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/j;->t:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f0a03f7

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/j;->s:Landroid/widget/ProgressBar;

    .line 81
    const v0, 0x7f0a03f8

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/j;->f:Landroid/widget/TextView;

    .line 82
    const v0, 0x7f0a03f6

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/j;->u:Landroid/view/View;

    .line 83
    const v0, 0x7f0a0288

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/j;->g:Landroid/view/View;

    .line 84
    const v0, 0x7f0a0299

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/OutlineTextView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/j;->v:Lcom/etermax/tools/widget/OutlineTextView;

    .line 85
    const v0, 0x7f0a0544

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/j;->l:Lcom/etermax/preguntados/ui/widget/AnswerButtonView;

    .line 86
    const v0, 0x7f0a03f2

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/j;->h:Landroid/widget/TextView;

    .line 87
    const v0, 0x7f0a0546

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/j;->n:Lcom/etermax/preguntados/ui/widget/AnswerButtonView;

    .line 88
    const v0, 0x7f0a0545

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/j;->m:Lcom/etermax/preguntados/ui/widget/AnswerButtonView;

    .line 89
    const v0, 0x7f0a0543

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/widget/AnswerButtonView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/j;->k:Lcom/etermax/preguntados/ui/widget/AnswerButtonView;

    .line 90
    const v0, 0x7f0a0286

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/j;->d:Landroid/view/View;

    .line 91
    const v0, 0x7f0a0541

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/j;->i:Landroid/view/View;

    .line 92
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/tvshow/j;->c()V

    .line 93
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/j;->x:Landroid/view/View;

    if-nez v0, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/j;->x:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/j;->w:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 37
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/tvshow/j;->a(Landroid/os/Bundle;)V

    .line 38
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/tvshow/g;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 40
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/preguntados/ui/tvshow/g;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/j;->x:Landroid/view/View;

    .line 52
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/j;->x:Landroid/view/View;

    if-nez v0, :cond_0

    .line 53
    const v0, 0x7f030140

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/j;->x:Landroid/view/View;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/j;->x:Landroid/view/View;

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/tvshow/g;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 107
    const-string v0, "mHasAnswered"

    iget-boolean v1, p0, Lcom/etermax/preguntados/ui/tvshow/j;->p:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 108
    const-string v0, "mIsLoading"

    iget-boolean v1, p0, Lcom/etermax/preguntados/ui/tvshow/j;->q:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 109
    const-string v0, "mStartTime"

    iget-wide v1, p0, Lcom/etermax/preguntados/ui/tvshow/j;->o:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 110
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/tvshow/g;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 69
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/j;->w:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 70
    return-void
.end method
