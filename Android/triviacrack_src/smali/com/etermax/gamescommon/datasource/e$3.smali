.class Lcom/etermax/gamescommon/datasource/e$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/a/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/datasource/e;->a(Ljava/lang/String;)Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/etermax/tools/a/a/c",
        "<",
        "Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/etermax/gamescommon/datasource/e;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/datasource/e;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/etermax/gamescommon/datasource/e$3;->b:Lcom/etermax/gamescommon/datasource/e;

    iput-object p2, p0, Lcom/etermax/gamescommon/datasource/e$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;
    .locals 4

    .prologue
    .line 210
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/e$3;->b:Lcom/etermax/gamescommon/datasource/e;

    iget-object v0, v0, Lcom/etermax/gamescommon/datasource/e;->c:Lcom/etermax/gamescommon/datasource/a/a;

    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/e$3;->b:Lcom/etermax/gamescommon/datasource/e;

    invoke-static {v1}, Lcom/etermax/gamescommon/datasource/e;->k(Lcom/etermax/gamescommon/datasource/e;)Lcom/etermax/gamescommon/login/datasource/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v1

    iget-object v3, p0, Lcom/etermax/gamescommon/datasource/e$3;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/etermax/gamescommon/datasource/a/a;->a(JLjava/lang/String;)Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/etermax/gamescommon/datasource/e$3;->a()Lcom/etermax/gamescommon/datasource/dto/MessagingPanelSearchDTO;

    move-result-object v0

    return-object v0
.end method
