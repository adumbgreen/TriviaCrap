.class Lcom/etermax/gamescommon/gifting/d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/social/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/gifting/d;->b()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/gifting/d;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/gifting/d;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/etermax/gamescommon/gifting/d$2;->a:Lcom/etermax/gamescommon/gifting/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 103
    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/d$2;->a:Lcom/etermax/gamescommon/gifting/d;

    iget-object v0, v0, Lcom/etermax/gamescommon/gifting/d;->h:Lcom/etermax/gamescommon/gifting/dto/GiftsDTO;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/gifting/dto/GiftsDTO;->getGifts()[Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;

    move-result-object v2

    .line 104
    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/d$2;->a:Lcom/etermax/gamescommon/gifting/d;

    iget v0, v0, Lcom/etermax/gamescommon/gifting/d;->n:I

    if-lez v0, :cond_1

    move v0, v1

    .line 105
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 106
    aget-object v3, v2, v0

    sget-object v4, Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$GiftState;->READ:Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$GiftState;

    invoke-virtual {v3, v4}, Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;->setState(Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$GiftState;)V

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/d$2;->a:Lcom/etermax/gamescommon/gifting/d;

    iput v1, v0, Lcom/etermax/gamescommon/gifting/d;->n:I

    .line 109
    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/d$2;->a:Lcom/etermax/gamescommon/gifting/d;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/etermax/gamescommon/gifting/d;->k:Z

    .line 110
    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/d$2;->a:Lcom/etermax/gamescommon/gifting/d;

    iget-object v0, v0, Lcom/etermax/gamescommon/gifting/d;->g:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 112
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    return-void
.end method
