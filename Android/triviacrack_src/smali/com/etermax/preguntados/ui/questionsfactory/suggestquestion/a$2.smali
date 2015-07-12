.class Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->m()Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c;
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
.field final synthetic a:Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;)V
    .locals 0
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$2;->a:Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/preguntados/ui/questionsfactory/widget/a/f;)V
    .locals 2
    .parameter

    .prologue
    .line 348
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$2;->a:Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;

    invoke-virtual {p1}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/f;->b()Lcom/etermax/preguntados/datasource/dto/enums/Country;

    move-result-object v1

    iput-object v1, v0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->g:Lcom/etermax/preguntados/datasource/dto/enums/Country;

    .line 349
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$2;->a:Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->d(Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;)V

    .line 350
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 345
    check-cast p1, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/f;

    invoke-virtual {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$2;->a(Lcom/etermax/preguntados/ui/questionsfactory/widget/a/f;)V

    return-void
.end method
