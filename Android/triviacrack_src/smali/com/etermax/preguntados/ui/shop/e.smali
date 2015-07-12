.class public Lcom/etermax/preguntados/ui/shop/e;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/preguntados/ui/shop/f;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/etermax/preguntados/datasource/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 29
    return-void
.end method

.method public static b()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/etermax/preguntados/ui/shop/g;->d()Lcom/etermax/preguntados/ui/shop/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/shop/h;->a()Lcom/etermax/preguntados/ui/shop/e;

    move-result-object v0

    .line 41
    return-object v0
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/shop/f;
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/etermax/preguntados/ui/shop/e$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/shop/e$1;-><init>(Lcom/etermax/preguntados/ui/shop/e;)V

    return-object v0
.end method

.method c()V
    .locals 2

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/shop/e;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->shop_info_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 54
    return-void
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/shop/e;->a()Lcom/etermax/preguntados/ui/shop/f;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    sget v0, Lcom/etermax/k;->shop_info_fragment_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 48
    return-object v0
.end method
