.class public final Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/x;
.super Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/v;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private final c:Lorg/a/a/b/c;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/v;-><init>()V

    .line 23
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/x;->c:Lorg/a/a/b/c;

    .line 125
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 51
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/x;->f()V

    .line 52
    return-void
.end method

.method public static e()Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/y;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/y;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/y;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/x$1;)V

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/x;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 115
    if-eqz v1, :cond_1

    .line 116
    const-string v0, "mQuestionsStats"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    const-string v0, "mQuestionsStats"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsCountDTO;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/x;->b:Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsCountDTO;

    .line 119
    :cond_0
    const-string v0, "mTitleResourceId"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    const-string v0, "mTitleResourceId"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/x;->a:I

    .line 123
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 2
    .parameter

    .prologue
    .line 67
    const v0, 0x7f0a04e9

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_0

    .line 69
    new-instance v1, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/x$1;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/x$1;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/x;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    :cond_0
    const v0, 0x7f0a04eb

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_1

    .line 84
    new-instance v1, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/x$2;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/x$2;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/x;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    :cond_1
    const v0, 0x7f0a04ed

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_2

    .line 99
    new-instance v1, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/x$3;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/x$3;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/x;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    :cond_2
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/x;->d:Landroid/view/View;

    if-nez v0, :cond_0

    .line 38
    const/4 v0, 0x0

    .line 40
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/x;->d:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/x;->c:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 31
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/x;->a(Landroid/os/Bundle;)V

    .line 32
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/v;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 34
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/v;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/x;->d:Landroid/view/View;

    .line 46
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/x;->d:Landroid/view/View;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/v;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 57
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/x;->c:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 58
    return-void
.end method
