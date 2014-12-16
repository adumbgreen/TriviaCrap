.class Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c",
        "<",
        "Lcom/etermax/preguntados/ui/questionsfactory/widget/a/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$6;->a:Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/preguntados/ui/questionsfactory/widget/a/g;)V
    .locals 3
    .parameter

    .prologue
    .line 131
    invoke-virtual {p1}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/g;->b()Lcom/etermax/gamescommon/language/Language;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$6;->a:Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;

    iget-object v1, v1, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->c:Lcom/etermax/gamescommon/language/Language;

    if-eq v0, v1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$6;->a:Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;

    invoke-virtual {p1}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/g;->b()Lcom/etermax/gamescommon/language/Language;

    move-result-object v1

    iput-object v1, v0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->d:Lcom/etermax/gamescommon/language/Language;

    .line 133
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$6;->a:Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->d(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/ui/questionsfactory/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/questionsfactory/e;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$6;->a:Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;

    iget-object v1, v1, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->c:Lcom/etermax/gamescommon/language/Language;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/e;->c(Lcom/etermax/gamescommon/language/Language;)V

    .line 134
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$6;->a:Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->e(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/ui/questionsfactory/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/questionsfactory/e;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$6;->a:Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;

    iget-object v1, v1, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->d:Lcom/etermax/gamescommon/language/Language;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/e;->d(Lcom/etermax/gamescommon/language/Language;)V

    .line 135
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$6;->a:Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$6;->a:Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;

    iget-object v1, v1, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->c:Lcom/etermax/gamescommon/language/Language;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$6;->a:Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;

    iget-object v2, v2, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->d:Lcom/etermax/gamescommon/language/Language;

    invoke-static {v0, v1, v2}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->a(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;Lcom/etermax/gamescommon/language/Language;Lcom/etermax/gamescommon/language/Language;)V

    .line 136
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$6;->a:Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->c(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;)V

    .line 138
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    check-cast p1, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/g;

    invoke-virtual {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$6;->a(Lcom/etermax/preguntados/ui/questionsfactory/widget/a/g;)V

    return-void
.end method
