.class public Lcom/etermax/preguntados/ui/help/a;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/preguntados/ui/help/b;",
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

.method public static a()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/etermax/preguntados/ui/help/c;

    invoke-direct {v0}, Lcom/etermax/preguntados/ui/help/c;-><init>()V

    .line 31
    return-object v0
.end method


# virtual methods
.method public b()Lcom/etermax/preguntados/ui/help/b;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/etermax/preguntados/ui/help/a$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/help/a$1;-><init>(Lcom/etermax/preguntados/ui/help/a;)V

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/etermax/preguntados/ui/help/a;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/help/b;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/help/b;->b()V

    .line 57
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/etermax/preguntados/ui/help/a;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/help/b;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/help/b;->c()V

    .line 62
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/etermax/preguntados/ui/help/a;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/help/b;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/help/b;->d()V

    .line 67
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/etermax/preguntados/ui/help/a;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/help/b;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/help/b;->e()V

    .line 72
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/etermax/preguntados/ui/help/a;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/help/b;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/help/b;->f()V

    .line 77
    return-void
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/help/a;->b()Lcom/etermax/preguntados/ui/help/b;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/etermax/preguntados/ui/help/a;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/help/b;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/help/b;->h()V

    .line 82
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/etermax/preguntados/ui/help/a;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/help/b;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/help/b;->i()V

    .line 87
    return-void
.end method

.method public j()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/etermax/preguntados/ui/help/a;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/help/b;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/help/b;->j()V

    .line 92
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    sget v0, Lcom/etermax/k;->help_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 37
    return-object v0
.end method
