.class Lcom/etermax/preguntados/ui/dashboard/e$2;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/dashboard/e;->D()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Lcom/etermax/preguntados/ui/dashboard/e;",
        "Lcom/etermax/preguntados/datasource/dto/DashboardDTO;",
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
    .line 210
    iput-object p1, p0, Lcom/etermax/preguntados/ui/dashboard/e$2;->a:Lcom/etermax/preguntados/ui/dashboard/e;

    invoke-direct {p0}, Lcom/etermax/tools/i/a;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/e$2;->b()Lcom/etermax/preguntados/datasource/dto/DashboardDTO;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/etermax/preguntados/ui/dashboard/e;Lcom/etermax/preguntados/datasource/dto/DashboardDTO;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 219
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 220
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e$2;->a:Lcom/etermax/preguntados/ui/dashboard/e;

    invoke-virtual {v0, p2}, Lcom/etermax/preguntados/ui/dashboard/e;->a(Lcom/etermax/preguntados/datasource/dto/DashboardDTO;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    invoke-virtual {p1, p2}, Lcom/etermax/preguntados/ui/dashboard/e;->b(Lcom/etermax/preguntados/datasource/dto/DashboardDTO;)V

    .line 222
    invoke-static {p1}, Lcom/etermax/preguntados/ui/dashboard/e;->a(Lcom/etermax/preguntados/ui/dashboard/e;)V

    .line 224
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e$2;->a:Lcom/etermax/preguntados/ui/dashboard/e;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/dashboard/e;->b(Lcom/etermax/preguntados/ui/dashboard/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/dashboard/f;

    invoke-interface {v0, p2}, Lcom/etermax/preguntados/ui/dashboard/f;->a(Lcom/etermax/preguntados/datasource/dto/DashboardDTO;)V

    .line 226
    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->getLives()Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/LivesDTO;->getQuantity()I

    move-result v0

    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->getLives()Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/LivesDTO;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->getLives()Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/LivesDTO;->isUnlimited()Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    invoke-static {p1}, Lcom/etermax/preguntados/ui/dashboard/e;->c(Lcom/etermax/preguntados/ui/dashboard/e;)V

    .line 229
    :cond_0
    invoke-static {p1}, Lcom/etermax/preguntados/ui/dashboard/e;->d(Lcom/etermax/preguntados/ui/dashboard/e;)Lcom/etermax/preguntados/ui/dashboard/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/dashboard/i;->h()V

    .line 233
    :goto_0
    return-void

    .line 231
    :cond_1
    invoke-static {p1}, Lcom/etermax/preguntados/ui/dashboard/e;->e(Lcom/etermax/preguntados/ui/dashboard/e;)V

    goto :goto_0
.end method

.method protected a(Lcom/etermax/preguntados/ui/dashboard/e;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 236
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 237
    invoke-static {p1}, Lcom/etermax/preguntados/ui/dashboard/e;->f(Lcom/etermax/preguntados/ui/dashboard/e;)V

    .line 238
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 210
    check-cast p1, Lcom/etermax/preguntados/ui/dashboard/e;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/dashboard/e$2;->a(Lcom/etermax/preguntados/ui/dashboard/e;Ljava/lang/Exception;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 210
    check-cast p1, Lcom/etermax/preguntados/ui/dashboard/e;

    check-cast p2, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/dashboard/e$2;->a(Lcom/etermax/preguntados/ui/dashboard/e;Lcom/etermax/preguntados/datasource/dto/DashboardDTO;)V

    return-void
.end method

.method public b()Lcom/etermax/preguntados/datasource/dto/DashboardDTO;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e$2;->a:Lcom/etermax/preguntados/ui/dashboard/e;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/dashboard/e;->c:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->f()Lcom/etermax/preguntados/datasource/dto/DashboardDTO;

    move-result-object v0

    return-object v0
.end method
