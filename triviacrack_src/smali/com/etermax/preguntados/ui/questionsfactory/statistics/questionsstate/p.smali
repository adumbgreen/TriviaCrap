.class public final Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/p;
.super Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/n;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private final d:Lorg/a/a/b/c;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/n;-><init>()V

    .line 25
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/p;->d:Lorg/a/a/b/c;

    .line 110
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 52
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/p;->e()V

    .line 53
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/p;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/sharing/o;->a(Landroid/content/Context;)Lcom/etermax/preguntados/sharing/o;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/p;->b:Lcom/etermax/preguntados/sharing/m;

    .line 54
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/p;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/c/a/c;->a(Landroid/content/Context;)Lcom/etermax/preguntados/c/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/p;->a:Lcom/etermax/preguntados/c/a/b;

    .line 55
    return-void
.end method

.method public static d()Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/q;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/q;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/q;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/p$1;)V

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/p;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_0

    .line 104
    const-string v1, "mQuestion"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    const-string v1, "mQuestion"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/p;->c:Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;

    .line 108
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 2
    .parameter

    .prologue
    .line 70
    const v0, 0x7f0a0413

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_0

    .line 72
    new-instance v1, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/p$1;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/p$1;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/p;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    :cond_0
    const v0, 0x7f0a0414

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_1

    .line 87
    new-instance v1, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/p$2;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/p$2;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/p;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    :cond_1
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/p;->e:Landroid/view/View;

    if-nez v0, :cond_0

    .line 39
    const/4 v0, 0x0

    .line 41
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/p;->e:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/p;->d:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 32
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/p;->a(Landroid/os/Bundle;)V

    .line 33
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/n;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 35
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/n;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/p;->e:Landroid/view/View;

    .line 47
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/p;->e:Landroid/view/View;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/n;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 60
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/p;->d:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 61
    return-void
.end method
