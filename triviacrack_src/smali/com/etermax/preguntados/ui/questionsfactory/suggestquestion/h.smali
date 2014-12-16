.class public final Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/h;
.super Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;
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
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;-><init>()V

    .line 25
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/h;->d:Lorg/a/a/b/c;

    .line 84
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/c/a/c;->a(Landroid/content/Context;)Lcom/etermax/preguntados/c/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/h;->a:Lcom/etermax/preguntados/c/a/b;

    .line 51
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/datasource/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/datasource/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/h;->b:Lcom/etermax/preguntados/datasource/d;

    .line 52
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/h;->b(Landroid/os/Bundle;)V

    .line 53
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 54
    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 73
    if-nez p1, :cond_0

    .line 77
    :goto_0
    return-void

    .line 76
    :cond_0
    const-string v0, "mCategories"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/h;->c:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public static d()Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/i;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/i;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/h$1;)V

    return-object v0
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/h;->c()V

    .line 82
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/h;->e:Landroid/view/View;

    if-nez v0, :cond_0

    .line 38
    const/4 v0, 0x0

    .line 40
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/h;->e:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/h;->d:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 31
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/h;->a(Landroid/os/Bundle;)V

    .line 32
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;->onCreate(Landroid/os/Bundle;)V

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
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/h;->e:Landroid/view/View;

    .line 46
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/h;->e:Landroid/view/View;

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 69
    const-string v0, "mCategories"

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/h;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 70
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 59
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/h;->d:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 60
    return-void
.end method
