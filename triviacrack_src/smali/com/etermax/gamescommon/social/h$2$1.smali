.class Lcom/etermax/gamescommon/social/h$2$1;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/social/h$2;->a([Ljava/lang/String;)V
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

.field final synthetic b:Lcom/etermax/gamescommon/social/h$2;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/social/h$2;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/etermax/gamescommon/social/h$2$1;->b:Lcom/etermax/gamescommon/social/h$2;

    iput-object p3, p0, Lcom/etermax/gamescommon/social/h$2$1;->a:[Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/etermax/tools/i/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/etermax/gamescommon/social/h$2$1;->b()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 135
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 136
    const-string v0, "FACEBOOK"

    const-string v1, "Fallo al pedir regalos via api "

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/etermax/gamescommon/social/h$2$1;->b:Lcom/etermax/gamescommon/social/h$2;

    iget-object v0, v0, Lcom/etermax/gamescommon/social/h$2;->d:Lcom/etermax/gamescommon/social/i;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/etermax/gamescommon/social/h$2$1;->b:Lcom/etermax/gamescommon/social/h$2;

    iget-object v0, v0, Lcom/etermax/gamescommon/social/h$2;->d:Lcom/etermax/gamescommon/social/i;

    invoke-interface {v0, p2}, Lcom/etermax/gamescommon/social/i;->a(Ljava/lang/Exception;)V

    .line 140
    :cond_0
    return-void
.end method

.method protected a(Landroid/support/v4/app/Fragment;Ljava/lang/Void;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 126
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 127
    const-string v0, "FACEBOOK"

    const-string v1, "regalos pedidos via api "

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/etermax/gamescommon/social/h$2$1;->b:Lcom/etermax/gamescommon/social/h$2;

    iget-object v0, v0, Lcom/etermax/gamescommon/social/h$2;->d:Lcom/etermax/gamescommon/social/i;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/etermax/gamescommon/social/h$2$1;->b:Lcom/etermax/gamescommon/social/h$2;

    iget-object v0, v0, Lcom/etermax/gamescommon/social/h$2;->d:Lcom/etermax/gamescommon/social/i;

    invoke-interface {v0}, Lcom/etermax/gamescommon/social/i;->a()V

    .line 131
    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    check-cast p1, Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/social/h$2$1;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    check-cast p1, Landroid/support/v4/app/Fragment;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/social/h$2$1;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Void;)V

    return-void
.end method

.method public b()Ljava/lang/Void;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 103
    new-instance v2, Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO;

    invoke-direct {v2}, Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO;-><init>()V

    .line 104
    iget-object v0, p0, Lcom/etermax/gamescommon/social/h$2$1;->b:Lcom/etermax/gamescommon/social/h$2;

    iget-object v0, v0, Lcom/etermax/gamescommon/social/h$2;->a:Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;

    invoke-virtual {v2, v0}, Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO;->setAction(Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;)V

    .line 106
    iget-object v0, p0, Lcom/etermax/gamescommon/social/h$2$1;->a:[Ljava/lang/String;

    array-length v0, v0

    new-array v3, v0, [Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move v0, v1

    .line 107
    :goto_0
    iget-object v4, p0, Lcom/etermax/gamescommon/social/h$2$1;->a:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 108
    new-instance v4, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-direct {v4}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;-><init>()V

    aput-object v4, v3, v0

    .line 109
    aget-object v4, v3, v0

    iget-object v5, p0, Lcom/etermax/gamescommon/social/h$2$1;->a:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->setFacebook_id(Ljava/lang/String;)V

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {v2, v3}, Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO;->setReceivers([Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V

    .line 114
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/etermax/gamescommon/gifting/dto/GiftItemDTO;

    .line 115
    new-instance v3, Lcom/etermax/gamescommon/gifting/dto/GiftItemDTO;

    invoke-direct {v3}, Lcom/etermax/gamescommon/gifting/dto/GiftItemDTO;-><init>()V

    aput-object v3, v0, v1

    .line 116
    aget-object v1, v0, v1

    iget-object v3, p0, Lcom/etermax/gamescommon/social/h$2$1;->b:Lcom/etermax/gamescommon/social/h$2;

    iget-object v3, v3, Lcom/etermax/gamescommon/social/h$2;->c:Lcom/etermax/gamescommon/gifting/dto/GiftItemDTO$GiftType;

    invoke-virtual {v1, v3}, Lcom/etermax/gamescommon/gifting/dto/GiftItemDTO;->setType(Lcom/etermax/gamescommon/gifting/dto/GiftItemDTO$GiftType;)V

    .line 117
    invoke-virtual {v2, v0}, Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO;->setItems([Lcom/etermax/gamescommon/gifting/dto/GiftItemDTO;)V

    .line 119
    iget-object v0, p0, Lcom/etermax/gamescommon/social/h$2$1;->b:Lcom/etermax/gamescommon/social/h$2;

    iget-object v0, v0, Lcom/etermax/gamescommon/social/h$2;->e:Lcom/etermax/gamescommon/social/h;

    iget-object v0, v0, Lcom/etermax/gamescommon/social/h;->b:Lcom/etermax/gamescommon/datasource/e;

    invoke-virtual {v0, v2}, Lcom/etermax/gamescommon/datasource/e;->a(Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO;)V

    .line 121
    const/4 v0, 0x0

    return-object v0
.end method
