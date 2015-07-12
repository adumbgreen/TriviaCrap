.class public Lcom/etermax/gamescommon/shop/dto/TransactionInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field amazon_user_id:Ljava/lang/String;

.field data:Ljava/lang/String;

.field signature:Ljava/lang/String;

.field type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, "GOOGLEPLAYV3"

    iput-object v0, p0, Lcom/etermax/gamescommon/shop/dto/TransactionInfo;->type:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/etermax/gamescommon/shop/dto/TransactionInfo;->signature:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lcom/etermax/gamescommon/shop/dto/TransactionInfo;->data:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, "GOOGLEPLAYV3"

    iput-object v0, p0, Lcom/etermax/gamescommon/shop/dto/TransactionInfo;->type:Ljava/lang/String;

    .line 11
    iput-object p1, p0, Lcom/etermax/gamescommon/shop/dto/TransactionInfo;->type:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/etermax/gamescommon/shop/dto/TransactionInfo;->data:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/etermax/gamescommon/shop/dto/TransactionInfo;->amazon_user_id:Ljava/lang/String;

    .line 14
    return-void
.end method
