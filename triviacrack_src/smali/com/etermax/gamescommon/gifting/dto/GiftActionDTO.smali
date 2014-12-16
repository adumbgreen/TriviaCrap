.class public Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private acceptAction:Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "accept_action"
    .end annotation
.end field

.field private action:Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;

.field private items:[Lcom/etermax/gamescommon/gifting/dto/GiftItemDTO;

.field private receivers:[Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public setAcceptAction(Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO;->acceptAction:Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;

    .line 34
    return-void
.end method

.method public setAction(Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO;->action:Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;

    .line 26
    return-void
.end method

.method public setItems([Lcom/etermax/gamescommon/gifting/dto/GiftItemDTO;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO;->items:[Lcom/etermax/gamescommon/gifting/dto/GiftItemDTO;

    .line 50
    return-void
.end method

.method public setReceivers([Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO;->receivers:[Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    .line 42
    return-void
.end method
