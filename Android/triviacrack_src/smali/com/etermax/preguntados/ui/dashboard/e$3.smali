.class Lcom/etermax/preguntados/ui/dashboard/e$3;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/dashboard/e;->E()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Lcom/etermax/preguntados/ui/dashboard/e;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/dashboard/e;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/dashboard/e;)V
    .locals 0
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/etermax/preguntados/ui/dashboard/e$3;->a:Lcom/etermax/preguntados/ui/dashboard/e;

    invoke-direct {p0}, Lcom/etermax/tools/i/a;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/e$3;->b()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/etermax/preguntados/ui/dashboard/e;Ljava/lang/Void;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 257
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 258
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e$3;->a:Lcom/etermax/preguntados/ui/dashboard/e;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/dashboard/e;->l()V

    .line 259
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 247
    check-cast p1, Lcom/etermax/preguntados/ui/dashboard/e;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/dashboard/e$3;->a(Lcom/etermax/preguntados/ui/dashboard/e;Ljava/lang/Void;)V

    return-void
.end method

.method public b()Ljava/lang/Void;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e$3;->a:Lcom/etermax/preguntados/ui/dashboard/e;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/dashboard/e;->c:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->k()V

    .line 252
    const/4 v0, 0x0

    return-object v0
.end method
