.class public final Lcom/etermax/preguntados/ui/questionsfactory/statistics/c;
.super Lcom/etermax/preguntados/ui/questionsfactory/statistics/a;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private final b:Lorg/a/a/b/c;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/a;-><init>()V

    .line 23
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/c;->b:Lorg/a/a/b/c;

    .line 112
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 49
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/datasource/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/datasource/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/c;->a:Lcom/etermax/preguntados/datasource/d;

    .line 50
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/c;->c()V

    .line 51
    return-void
.end method

.method public static g()Lcom/etermax/preguntados/ui/questionsfactory/statistics/d;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/d;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/statistics/c$1;)V

    return-object v0
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 2
    .parameter

    .prologue
    .line 66
    const v0, 0x7f0a04dd

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_0

    .line 68
    new-instance v1, Lcom/etermax/preguntados/ui/questionsfactory/statistics/c$1;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/c$1;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/statistics/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    :cond_0
    const v0, 0x7f0a04e0

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_1

    .line 83
    new-instance v1, Lcom/etermax/preguntados/ui/questionsfactory/statistics/c$2;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/c$2;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/statistics/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    :cond_1
    const v0, 0x7f0a04e3

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_2

    .line 98
    new-instance v1, Lcom/etermax/preguntados/ui/questionsfactory/statistics/c$3;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/c$3;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/statistics/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    :cond_2
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/c;->c:Landroid/view/View;

    if-nez v0, :cond_0

    .line 36
    const/4 v0, 0x0

    .line 38
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/c;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/c;->b:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 29
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/c;->a(Landroid/os/Bundle;)V

    .line 30
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/a;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 32
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/c;->c:Landroid/view/View;

    .line 44
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/c;->c:Landroid/view/View;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 56
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/c;->b:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 57
    return-void
.end method
