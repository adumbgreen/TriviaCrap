.class Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a$2;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a;->a(Lcom/etermax/preguntados/datasource/dto/UserTranslationDTO;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/datasource/dto/UserTranslationDTO;

.field final synthetic b:Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a;Ljava/lang/String;Lcom/etermax/preguntados/datasource/dto/UserTranslationDTO;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a$2;->b:Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a;

    iput-object p3, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a$2;->a:Lcom/etermax/preguntados/datasource/dto/UserTranslationDTO;

    invoke-direct {p0, p2}, Lcom/etermax/tools/i/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a$2;->b()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a;Ljava/lang/Void;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 100
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a$2;->b:Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a;->a(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/b;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/b;->b()V

    .line 101
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    check-cast p1, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a$2;->a(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a;Ljava/lang/Void;)V

    return-void
.end method

.method public b()Ljava/lang/Void;
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a$2;->b:Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a;->a:Lcom/etermax/preguntados/datasource/d;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/a$2;->a:Lcom/etermax/preguntados/datasource/dto/UserTranslationDTO;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/preguntados/datasource/dto/UserTranslationDTO;)V

    .line 94
    const/4 v0, 0x0

    return-object v0
.end method
