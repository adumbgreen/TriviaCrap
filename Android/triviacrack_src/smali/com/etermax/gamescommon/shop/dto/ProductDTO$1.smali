.class synthetic Lcom/etermax/gamescommon/shop/dto/ProductDTO$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etermax/gamescommon/shop/dto/ProductDTO;
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$etermax$gamescommon$BillingType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    invoke-static {}, Lcom/etermax/gamescommon/a;->values()[Lcom/etermax/gamescommon/a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO$1;->$SwitchMap$com$etermax$gamescommon$BillingType:[I

    :try_start_0
    sget-object v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO$1;->$SwitchMap$com$etermax$gamescommon$BillingType:[I

    sget-object v1, Lcom/etermax/gamescommon/a;->b:Lcom/etermax/gamescommon/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
