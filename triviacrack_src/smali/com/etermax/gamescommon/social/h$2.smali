.class Lcom/etermax/gamescommon/social/h$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/social/a/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/social/h;->b(Landroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;ILcom/etermax/gamescommon/gifting/dto/GiftItemDTO$GiftType;Lcom/etermax/gamescommon/social/i;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;

.field final synthetic b:Landroid/support/v4/app/Fragment;

.field final synthetic c:Lcom/etermax/gamescommon/gifting/dto/GiftItemDTO$GiftType;

.field final synthetic d:Lcom/etermax/gamescommon/social/i;

.field final synthetic e:Lcom/etermax/gamescommon/social/h;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/social/h;Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;Landroid/support/v4/app/Fragment;Lcom/etermax/gamescommon/gifting/dto/GiftItemDTO$GiftType;Lcom/etermax/gamescommon/social/i;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/etermax/gamescommon/social/h$2;->e:Lcom/etermax/gamescommon/social/h;

    iput-object p2, p0, Lcom/etermax/gamescommon/social/h$2;->a:Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;

    iput-object p3, p0, Lcom/etermax/gamescommon/social/h$2;->b:Landroid/support/v4/app/Fragment;

    iput-object p4, p0, Lcom/etermax/gamescommon/social/h$2;->c:Lcom/etermax/gamescommon/gifting/dto/GiftItemDTO$GiftType;

    iput-object p5, p0, Lcom/etermax/gamescommon/social/h$2;->d:Lcom/etermax/gamescommon/social/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 148
    const-string v0, "FACEBOOK"

    const-string v1, "cancel"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 85
    const-string v0, "FACEBOOK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 90
    const-string v0, "FACEBOOK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "regalos enviados via Facebook a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " amigo/s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/etermax/gamescommon/social/h$2;->a:Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;

    sget-object v1, Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;->ASK:Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;

    if-ne v0, v1, :cond_1

    .line 93
    iget-object v0, p0, Lcom/etermax/gamescommon/social/h$2;->e:Lcom/etermax/gamescommon/social/h;

    array-length v1, p1

    invoke-static {v0, v1}, Lcom/etermax/gamescommon/social/h;->a(Lcom/etermax/gamescommon/social/h;I)V

    .line 98
    :cond_0
    :goto_0
    new-instance v0, Lcom/etermax/gamescommon/social/h$2$1;

    iget-object v1, p0, Lcom/etermax/gamescommon/social/h$2;->b:Landroid/support/v4/app/Fragment;

    sget v2, Lcom/etermax/o;->loading:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/etermax/gamescommon/social/h$2$1;-><init>(Lcom/etermax/gamescommon/social/h$2;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v1, p0, Lcom/etermax/gamescommon/social/h$2;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/social/h$2$1;->a(Ljava/lang/Object;)Z

    .line 144
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/etermax/gamescommon/social/h$2;->a:Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;

    sget-object v1, Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;->SEND:Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;

    if-ne v0, v1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/etermax/gamescommon/social/h$2;->e:Lcom/etermax/gamescommon/social/h;

    array-length v1, p1

    invoke-static {v0, v1}, Lcom/etermax/gamescommon/social/h;->b(Lcom/etermax/gamescommon/social/h;I)V

    goto :goto_0
.end method
