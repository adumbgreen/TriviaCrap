.class public Lcom/etermax/gamescommon/gifting/dto/GiftItemDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private type:Lcom/etermax/gamescommon/gifting/dto/GiftItemDTO$GiftType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method


# virtual methods
.method public getType()Lcom/etermax/gamescommon/gifting/dto/GiftItemDTO$GiftType;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/dto/GiftItemDTO;->type:Lcom/etermax/gamescommon/gifting/dto/GiftItemDTO$GiftType;

    return-object v0
.end method

.method public setType(Lcom/etermax/gamescommon/gifting/dto/GiftItemDTO$GiftType;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/etermax/gamescommon/gifting/dto/GiftItemDTO;->type:Lcom/etermax/gamescommon/gifting/dto/GiftItemDTO$GiftType;

    .line 24
    return-void
.end method
