.class Lcom/etermax/gamescommon/datasource/e$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/a/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/datasource/e;->a(JLcom/etermax/gamescommon/gifting/dto/GiftActionDTO;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/etermax/tools/a/a/c",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO;

.field final synthetic c:Lcom/etermax/gamescommon/datasource/e;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/datasource/e;JLcom/etermax/gamescommon/gifting/dto/GiftActionDTO;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/etermax/gamescommon/datasource/e$9;->c:Lcom/etermax/gamescommon/datasource/e;

    iput-wide p2, p0, Lcom/etermax/gamescommon/datasource/e$9;->a:J

    iput-object p4, p0, Lcom/etermax/gamescommon/datasource/e$9;->b:Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 5

    .prologue
    .line 288
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/e$9;->c:Lcom/etermax/gamescommon/datasource/e;

    iget-object v0, v0, Lcom/etermax/gamescommon/datasource/e;->c:Lcom/etermax/gamescommon/datasource/a/a;

    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/e$9;->c:Lcom/etermax/gamescommon/datasource/e;

    invoke-static {v1}, Lcom/etermax/gamescommon/datasource/e;->q(Lcom/etermax/gamescommon/datasource/e;)Lcom/etermax/gamescommon/login/datasource/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/etermax/gamescommon/datasource/e$9;->a:J

    iget-object v4, p0, Lcom/etermax/gamescommon/datasource/e$9;->b:Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/etermax/gamescommon/datasource/a/a;->a(Ljava/lang/Long;JLcom/etermax/gamescommon/gifting/dto/GiftActionDTO;)V

    .line 289
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/etermax/gamescommon/datasource/e$9;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
