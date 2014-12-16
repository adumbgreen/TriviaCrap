.class Lcom/etermax/gamescommon/social/h$5$1;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/social/h$5;->a([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Landroid/support/v4/app/Fragment;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/etermax/gamescommon/social/h$5;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/social/h$5;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/etermax/gamescommon/social/h$5$1;->b:Lcom/etermax/gamescommon/social/h$5;

    iput-object p3, p0, Lcom/etermax/gamescommon/social/h$5$1;->a:[Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/etermax/tools/i/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/etermax/gamescommon/social/h$5$1;->b()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 288
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 289
    const-string v0, "FACEBOOK"

    const-string v1, "Fallo al enviar regalos via api "

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/etermax/gamescommon/social/h$5$1;->b:Lcom/etermax/gamescommon/social/h$5;

    iget-object v0, v0, Lcom/etermax/gamescommon/social/h$5;->c:Lcom/etermax/gamescommon/social/i;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/etermax/gamescommon/social/h$5$1;->b:Lcom/etermax/gamescommon/social/h$5;

    iget-object v0, v0, Lcom/etermax/gamescommon/social/h$5;->c:Lcom/etermax/gamescommon/social/i;

    invoke-interface {v0, p2}, Lcom/etermax/gamescommon/social/i;->a(Ljava/lang/Exception;)V

    .line 293
    :cond_0
    return-void
.end method

.method protected a(Landroid/support/v4/app/Fragment;Ljava/lang/Void;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 279
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 280
    iget-object v0, p0, Lcom/etermax/gamescommon/social/h$5$1;->b:Lcom/etermax/gamescommon/social/h$5;

    iget-object v0, v0, Lcom/etermax/gamescommon/social/h$5;->c:Lcom/etermax/gamescommon/social/i;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/etermax/gamescommon/social/h$5$1;->b:Lcom/etermax/gamescommon/social/h$5;

    iget-object v0, v0, Lcom/etermax/gamescommon/social/h$5;->d:Lcom/etermax/gamescommon/social/h;

    iget-object v1, p0, Lcom/etermax/gamescommon/social/h$5$1;->a:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {v0, v1}, Lcom/etermax/gamescommon/social/h;->b(Lcom/etermax/gamescommon/social/h;I)V

    .line 282
    iget-object v0, p0, Lcom/etermax/gamescommon/social/h$5$1;->b:Lcom/etermax/gamescommon/social/h$5;

    iget-object v0, v0, Lcom/etermax/gamescommon/social/h$5;->c:Lcom/etermax/gamescommon/social/i;

    invoke-interface {v0}, Lcom/etermax/gamescommon/social/i;->a()V

    .line 284
    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 257
    check-cast p1, Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/social/h$5$1;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 257
    check-cast p1, Landroid/support/v4/app/Fragment;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/social/h$5$1;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Void;)V

    return-void
.end method

.method public b()Ljava/lang/Void;
    .locals 4

    .prologue
    .line 262
    new-instance v0, Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO;

    invoke-direct {v0}, Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO;-><init>()V

    .line 264
    sget-object v1, Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;->ACCEPT:Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO;->setAction(Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;)V

    .line 266
    iget-object v1, p0, Lcom/etermax/gamescommon/social/h$5$1;->b:Lcom/etermax/gamescommon/social/h$5;

    iget-object v1, v1, Lcom/etermax/gamescommon/social/h$5;->b:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 268
    iget-object v1, p0, Lcom/etermax/gamescommon/social/h$5$1;->b:Lcom/etermax/gamescommon/social/h$5;

    iget-object v1, v1, Lcom/etermax/gamescommon/social/h$5;->d:Lcom/etermax/gamescommon/social/h;

    iget-object v1, v1, Lcom/etermax/gamescommon/social/h;->b:Lcom/etermax/gamescommon/datasource/e;

    iget-object v2, p0, Lcom/etermax/gamescommon/social/h$5$1;->b:Lcom/etermax/gamescommon/social/h$5;

    iget-object v2, v2, Lcom/etermax/gamescommon/social/h$5;->b:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/etermax/gamescommon/datasource/e;->a(JLcom/etermax/gamescommon/gifting/dto/GiftActionDTO;)V

    .line 274
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 271
    :cond_0
    sget-object v1, Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;->ASK:Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO;->setAcceptAction(Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;)V

    .line 272
    iget-object v1, p0, Lcom/etermax/gamescommon/social/h$5$1;->b:Lcom/etermax/gamescommon/social/h$5;

    iget-object v1, v1, Lcom/etermax/gamescommon/social/h$5;->d:Lcom/etermax/gamescommon/social/h;

    iget-object v1, v1, Lcom/etermax/gamescommon/social/h;->b:Lcom/etermax/gamescommon/datasource/e;

    invoke-virtual {v1, v0}, Lcom/etermax/gamescommon/datasource/e;->a(Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO;)V

    goto :goto_0
.end method
