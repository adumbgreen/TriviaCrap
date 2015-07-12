.class Lcom/etermax/preguntados/datasource/d$35;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/a/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/datasource/d;->a(Ljava/lang/String;)Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/etermax/tools/a/a/c",
        "<",
        "Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/etermax/preguntados/datasource/d;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/datasource/d;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/etermax/preguntados/datasource/d$35;->b:Lcom/etermax/preguntados/datasource/d;

    iput-object p2, p0, Lcom/etermax/preguntados/datasource/d$35;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;
    .locals 5

    .prologue
    .line 341
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d$35;->b:Lcom/etermax/preguntados/datasource/d;

    iget-object v0, v0, Lcom/etermax/preguntados/datasource/d;->c:Lcom/etermax/preguntados/datasource/b;

    iget-object v1, p0, Lcom/etermax/preguntados/datasource/d$35;->b:Lcom/etermax/preguntados/datasource/d;

    invoke-static {v1}, Lcom/etermax/preguntados/datasource/d;->h(Lcom/etermax/preguntados/datasource/d;)Lcom/etermax/gamescommon/login/datasource/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v1

    iget-object v3, p0, Lcom/etermax/preguntados/datasource/d$35;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/etermax/preguntados/datasource/d$35;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/etermax/preguntados/datasource/b;->a(JLjava/lang/String;Ljava/lang/String;)Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/etermax/preguntados/datasource/d$35;->a()Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;

    move-result-object v0

    return-object v0
.end method
