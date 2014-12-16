.class public Lcom/etermax/preguntados/ui/questionsfactory/a;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/preguntados/ui/questionsfactory/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 19
    return-void
.end method

.method public static a()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/etermax/preguntados/ui/questionsfactory/c;->g()Lcom/etermax/preguntados/ui/questionsfactory/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/d;->a()Lcom/etermax/preguntados/ui/questionsfactory/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public b()Lcom/etermax/preguntados/ui/questionsfactory/b;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/a$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/questionsfactory/a$1;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/a;)V

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/a;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/b;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/questionsfactory/b;->b()V

    .line 52
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/a;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/b;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/questionsfactory/b;->c()V

    .line 57
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/a;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/b;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/questionsfactory/b;->d()V

    .line 62
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/a;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/b;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/questionsfactory/b;->e()V

    .line 67
    return-void
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/a;->b()Lcom/etermax/preguntados/ui/questionsfactory/b;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    sget v0, Lcom/etermax/k;->questions_factory_panel_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 44
    sget v0, Lcom/etermax/i;->questions_factory_header_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v2, Lcom/etermax/o;->factory:I

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/questionsfactory/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    return-object v1
.end method
