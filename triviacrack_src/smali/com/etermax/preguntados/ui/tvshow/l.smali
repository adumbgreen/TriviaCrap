.class public Lcom/etermax/preguntados/ui/tvshow/l;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/preguntados/ui/tvshow/m;",
        ">;"
    }
.end annotation


# instance fields
.field a:Landroid/view/View;

.field b:Lcom/etermax/preguntados/ui/widget/PreguntadosLoading;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 21
    return-void
.end method

.method public static b()Lcom/etermax/preguntados/ui/tvshow/l;
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/etermax/preguntados/ui/tvshow/n;->d()Lcom/etermax/preguntados/ui/tvshow/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/tvshow/o;->a()Lcom/etermax/preguntados/ui/tvshow/l;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/tvshow/m;
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/etermax/preguntados/ui/tvshow/l$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/tvshow/l$1;-><init>(Lcom/etermax/preguntados/ui/tvshow/l;)V

    return-object v0
.end method

.method protected c()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/l;->a:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 42
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/l;->b:Lcom/etermax/preguntados/ui/widget/PreguntadosLoading;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/widget/PreguntadosLoading;->a()V

    .line 43
    return-void
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/tvshow/l;->a()Lcom/etermax/preguntados/ui/tvshow/m;

    move-result-object v0

    return-object v0
.end method
