.class Lcom/etermax/preguntados/ui/tvshow/a/a$6;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/tvshow/a/a;->f()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Lcom/etermax/preguntados/ui/tvshow/a/a;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/datasource/dto/RegistrationDTO;

.field final synthetic b:Lcom/etermax/preguntados/ui/tvshow/a/a;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/tvshow/a/a;Lcom/etermax/preguntados/datasource/dto/RegistrationDTO;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/etermax/preguntados/ui/tvshow/a/a$6;->b:Lcom/etermax/preguntados/ui/tvshow/a/a;

    iput-object p2, p0, Lcom/etermax/preguntados/ui/tvshow/a/a$6;->a:Lcom/etermax/preguntados/datasource/dto/RegistrationDTO;

    invoke-direct {p0}, Lcom/etermax/tools/i/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a$6;->b:Lcom/etermax/preguntados/ui/tvshow/a/a;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/tvshow/a/a;->a:Lcom/etermax/preguntados/datasource/d;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/tvshow/a/a$6;->a:Lcom/etermax/preguntados/datasource/dto/RegistrationDTO;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/preguntados/datasource/dto/RegistrationDTO;)V

    .line 341
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Lcom/etermax/preguntados/ui/tvshow/a/a;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 346
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 348
    return-void
.end method

.method protected a(Lcom/etermax/preguntados/ui/tvshow/a/a;Ljava/lang/Void;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 352
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 353
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a$6;->b:Lcom/etermax/preguntados/ui/tvshow/a/a;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/tvshow/a/a;->d(Lcom/etermax/preguntados/ui/tvshow/a/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/tvshow/a/b;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/tvshow/a/b;->e()V

    .line 354
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 336
    check-cast p1, Lcom/etermax/preguntados/ui/tvshow/a/a;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/tvshow/a/a$6;->a(Lcom/etermax/preguntados/ui/tvshow/a/a;Ljava/lang/Exception;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 336
    check-cast p1, Lcom/etermax/preguntados/ui/tvshow/a/a;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/tvshow/a/a$6;->a(Lcom/etermax/preguntados/ui/tvshow/a/a;Ljava/lang/Void;)V

    return-void
.end method
