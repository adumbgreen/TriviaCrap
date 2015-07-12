.class public Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/f;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/g;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 18
    return-void
.end method

.method public static b()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/h;->f()Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/i;->a()Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/f;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/g;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/f$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/f$1;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/f;)V

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/f;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/g;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/g;->j()V

    .line 50
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/f;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/g;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/g;->j()V

    .line 55
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/f;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/g;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/g;->i()V

    .line 60
    return-void
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/f;->a()Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/g;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    sget v0, Lcom/etermax/k;->rate_question_warning:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 44
    return-object v0
.end method
