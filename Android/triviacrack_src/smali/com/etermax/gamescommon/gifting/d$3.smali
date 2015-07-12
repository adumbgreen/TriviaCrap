.class Lcom/etermax/gamescommon/gifting/d$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/social/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/gifting/d;->c()V
.end annotation


# instance fields
.field final synthetic a:[Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;

.field final synthetic b:Lcom/etermax/gamescommon/gifting/d;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/gifting/d;[Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/etermax/gamescommon/gifting/d$3;->b:Lcom/etermax/gamescommon/gifting/d;

    iput-object p2, p0, Lcom/etermax/gamescommon/gifting/d$3;->a:[Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 140
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/etermax/gamescommon/gifting/d$3;->a:[Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 141
    iget-object v2, p0, Lcom/etermax/gamescommon/gifting/d$3;->a:[Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;

    aget-object v2, v2, v0

    sget-object v3, Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$GiftState;->READ:Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$GiftState;

    invoke-virtual {v2, v3}, Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;->setState(Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$GiftState;)V

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/d$3;->b:Lcom/etermax/gamescommon/gifting/d;

    iput v1, v0, Lcom/etermax/gamescommon/gifting/d;->o:I

    .line 144
    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/d$3;->b:Lcom/etermax/gamescommon/gifting/d;

    iget-object v0, v0, Lcom/etermax/gamescommon/gifting/d;->g:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 145
    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/d$3;->b:Lcom/etermax/gamescommon/gifting/d;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/gifting/d;->a()V

    .line 146
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    return-void
.end method
