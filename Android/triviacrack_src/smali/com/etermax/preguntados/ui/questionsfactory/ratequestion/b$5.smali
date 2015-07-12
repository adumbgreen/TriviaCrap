.class Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->o()Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c",
        "<",
        "Lcom/etermax/preguntados/ui/questionsfactory/widget/a/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;)V
    .locals 0
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$5;->a:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/preguntados/ui/questionsfactory/widget/a/f;)V
    .locals 2
    .parameter

    .prologue
    .line 248
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$5;->a:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;

    invoke-virtual {p1}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/f;->b()Lcom/etermax/preguntados/datasource/dto/enums/Country;

    move-result-object v1

    iput-object v1, v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->j:Lcom/etermax/preguntados/datasource/dto/enums/Country;

    .line 249
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$5;->a:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->c(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/ui/questionsfactory/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/questionsfactory/e;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$5;->a:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;

    iget-object v1, v1, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->j:Lcom/etermax/preguntados/datasource/dto/enums/Country;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/e;->a(Lcom/etermax/preguntados/datasource/dto/enums/Country;)V

    .line 250
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$5;->a:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->b(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;)V

    .line 251
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$5;->a:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->d(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;)V

    .line 252
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 245
    check-cast p1, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/f;

    invoke-virtual {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$5;->a(Lcom/etermax/preguntados/ui/questionsfactory/widget/a/f;)V

    return-void
.end method
