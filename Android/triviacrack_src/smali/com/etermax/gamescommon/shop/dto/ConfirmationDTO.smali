.class public Lcom/etermax/gamescommon/shop/dto/ConfirmationDTO;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private duplicate:Z

.field private orderId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/etermax/gamescommon/shop/dto/ConfirmationDTO;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public isDuplicate()Z
    .locals 1

    .prologue
    .line 9
    iget-boolean v0, p0, Lcom/etermax/gamescommon/shop/dto/ConfirmationDTO;->duplicate:Z

    return v0
.end method
