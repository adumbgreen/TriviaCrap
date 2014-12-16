.class Lcom/etermax/preguntados/ui/dashboard/b/b$2;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/dashboard/b/b;->b(Lcom/etermax/tools/nationality/Nationality;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Lcom/etermax/preguntados/ui/dashboard/b/b;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/tools/nationality/Nationality;

.field final synthetic b:Lcom/etermax/preguntados/ui/dashboard/b/b;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/dashboard/b/b;Ljava/lang/String;Lcom/etermax/tools/nationality/Nationality;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/etermax/preguntados/ui/dashboard/b/b$2;->b:Lcom/etermax/preguntados/ui/dashboard/b/b;

    iput-object p3, p0, Lcom/etermax/preguntados/ui/dashboard/b/b$2;->a:Lcom/etermax/tools/nationality/Nationality;

    invoke-direct {p0, p2}, Lcom/etermax/tools/i/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/b/b$2;->b:Lcom/etermax/preguntados/ui/dashboard/b/b;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/dashboard/b/b;->b:Lcom/etermax/gamescommon/login/datasource/c;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/b/b$2;->a:Lcom/etermax/tools/nationality/Nationality;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/login/datasource/c;->a(Lcom/etermax/tools/nationality/Nationality;)V

    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/etermax/preguntados/ui/dashboard/b/b;Ljava/lang/Void;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 126
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/b/b$2;->b:Lcom/etermax/preguntados/ui/dashboard/b/b;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/dashboard/b/b;->a:Lcom/etermax/preguntados/datasource/d;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/b/b$2;->a:Lcom/etermax/tools/nationality/Nationality;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/tools/nationality/Nationality;)V

    .line 128
    invoke-virtual {p1}, Lcom/etermax/preguntados/ui/dashboard/b/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 129
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 116
    check-cast p1, Lcom/etermax/preguntados/ui/dashboard/b/b;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/dashboard/b/b$2;->a(Lcom/etermax/preguntados/ui/dashboard/b/b;Ljava/lang/Void;)V

    return-void
.end method
