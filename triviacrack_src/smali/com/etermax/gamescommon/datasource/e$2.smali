.class Lcom/etermax/gamescommon/datasource/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/a/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/datasource/e;->c(I)Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/etermax/tools/a/a/c",
        "<",
        "Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/etermax/gamescommon/datasource/e;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/datasource/e;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/etermax/gamescommon/datasource/e$2;->b:Lcom/etermax/gamescommon/datasource/e;

    iput p2, p0, Lcom/etermax/gamescommon/datasource/e$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;
    .locals 5

    .prologue
    .line 197
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/e$2;->b:Lcom/etermax/gamescommon/datasource/e;

    iget-object v0, v0, Lcom/etermax/gamescommon/datasource/e;->c:Lcom/etermax/gamescommon/datasource/a/a;

    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/e$2;->b:Lcom/etermax/gamescommon/datasource/e;

    invoke-static {v1}, Lcom/etermax/gamescommon/datasource/e;->j(Lcom/etermax/gamescommon/datasource/e;)Lcom/etermax/gamescommon/login/datasource/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v1

    const-string v3, "so"

    iget v4, p0, Lcom/etermax/gamescommon/datasource/e$2;->a:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/etermax/gamescommon/datasource/a/a;->a(JLjava/lang/String;I)Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/etermax/gamescommon/datasource/e$2;->a()Lcom/etermax/gamescommon/datasource/dto/MessagingPanelDTO;

    move-result-object v0

    return-object v0
.end method
