.class Lcom/etermax/preguntados/d/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etermax/preguntados/d/a;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/d/a;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/d/a;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/etermax/preguntados/d/a$2;->a:Lcom/etermax/preguntados/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/etermax/preguntados/d/a$2;->a:Lcom/etermax/preguntados/d/a;

    invoke-static {v1}, Lcom/etermax/preguntados/d/a;->c(Lcom/etermax/preguntados/d/a;)Lcom/etermax/gamescommon/login/datasource/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/d/a$2;->a:Lcom/etermax/preguntados/d/a;

    sget v2, Lcom/etermax/o;->user_sent_life:I

    invoke-virtual {v1, v2}, Lcom/etermax/preguntados/d/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 58
    iget-object v0, p0, Lcom/etermax/preguntados/d/a$2;->a:Lcom/etermax/preguntados/d/a;

    invoke-static {v0}, Lcom/etermax/preguntados/d/a;->d(Lcom/etermax/preguntados/d/a;)Lcom/etermax/gamescommon/social/h;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/d/a$2;->a:Lcom/etermax/preguntados/d/a;

    sget-object v3, Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;->SEND:Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;

    const/4 v4, 0x0

    sget-object v5, Lcom/etermax/gamescommon/gifting/dto/GiftItemDTO$GiftType;->LIFE:Lcom/etermax/gamescommon/gifting/dto/GiftItemDTO$GiftType;

    new-instance v6, Lcom/etermax/preguntados/d/a$2$1;

    invoke-direct {v6, p0}, Lcom/etermax/preguntados/d/a$2$1;-><init>(Lcom/etermax/preguntados/d/a$2;)V

    invoke-virtual/range {v0 .. v6}, Lcom/etermax/gamescommon/social/h;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;ILcom/etermax/gamescommon/gifting/dto/GiftItemDTO$GiftType;Lcom/etermax/gamescommon/social/i;)V

    .line 72
    return-void
.end method
