.class Lcom/etermax/gamescommon/social/h$4;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/social/h;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Long;Lcom/etermax/gamescommon/social/i;)V
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
.field final synthetic a:Ljava/lang/Long;

.field final synthetic b:Lcom/etermax/gamescommon/social/i;

.field final synthetic c:Lcom/etermax/gamescommon/social/h;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/social/h;Ljava/lang/Long;Lcom/etermax/gamescommon/social/i;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/etermax/gamescommon/social/h$4;->c:Lcom/etermax/gamescommon/social/h;

    iput-object p2, p0, Lcom/etermax/gamescommon/social/h$4;->a:Ljava/lang/Long;

    iput-object p3, p0, Lcom/etermax/gamescommon/social/h$4;->b:Lcom/etermax/gamescommon/social/i;

    invoke-direct {p0}, Lcom/etermax/tools/i/a;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/etermax/gamescommon/social/h$4;->b()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 228
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 229
    iget-object v0, p0, Lcom/etermax/gamescommon/social/h$4;->b:Lcom/etermax/gamescommon/social/i;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/etermax/gamescommon/social/h$4;->b:Lcom/etermax/gamescommon/social/i;

    invoke-interface {v0, p2}, Lcom/etermax/gamescommon/social/i;->a(Ljava/lang/Exception;)V

    .line 232
    :cond_0
    return-void
.end method

.method protected a(Landroid/support/v4/app/Fragment;Ljava/lang/Void;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 220
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 221
    iget-object v0, p0, Lcom/etermax/gamescommon/social/h$4;->b:Lcom/etermax/gamescommon/social/i;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/etermax/gamescommon/social/h$4;->b:Lcom/etermax/gamescommon/social/i;

    invoke-interface {v0}, Lcom/etermax/gamescommon/social/i;->a()V

    .line 224
    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 197
    check-cast p1, Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/social/h$4;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 197
    check-cast p1, Landroid/support/v4/app/Fragment;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/social/h$4;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Void;)V

    return-void
.end method

.method public b()Ljava/lang/Void;
    .locals 4

    .prologue
    .line 202
    new-instance v0, Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO;

    invoke-direct {v0}, Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO;-><init>()V

    .line 204
    sget-object v1, Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;->ACCEPT:Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO;->setAction(Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;)V

    .line 206
    iget-object v1, p0, Lcom/etermax/gamescommon/social/h$4;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/etermax/gamescommon/social/h$4;->c:Lcom/etermax/gamescommon/social/h;

    iget-object v1, v1, Lcom/etermax/gamescommon/social/h;->b:Lcom/etermax/gamescommon/datasource/e;

    iget-object v2, p0, Lcom/etermax/gamescommon/social/h$4;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/etermax/gamescommon/datasource/e;->a(JLcom/etermax/gamescommon/gifting/dto/GiftActionDTO;)V

    .line 215
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 211
    :cond_0
    sget-object v1, Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;->SEND:Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO;->setAcceptAction(Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;)V

    .line 212
    iget-object v1, p0, Lcom/etermax/gamescommon/social/h$4;->c:Lcom/etermax/gamescommon/social/h;

    iget-object v1, v1, Lcom/etermax/gamescommon/social/h;->b:Lcom/etermax/gamescommon/datasource/e;

    invoke-virtual {v1, v0}, Lcom/etermax/gamescommon/datasource/e;->a(Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO;)V

    goto :goto_0
.end method
