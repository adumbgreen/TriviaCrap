.class public Lcom/inmobi/commons/internal/CommonsException;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field public static final APPLICATION_NOT_SET:I = 0x1

.field public static final PRODUCT_NOT_FOUND:I = 0x2

.field private static final serialVersionUID:J = 0x34cf5cc9bf91e4d9L


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 10
    iput p1, p0, Lcom/inmobi/commons/internal/CommonsException;->a:I

    .line 11
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/inmobi/commons/internal/CommonsException;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/inmobi/commons/internal/CommonsException;->a:I

    packed-switch v0, :pswitch_data_0

    .line 25
    const-string v0, "Unknown."

    :goto_0
    return-object v0

    .line 21
    :pswitch_0
    const-string v0, "Application not set/initialize not called."

    goto :goto_0

    .line 23
    :pswitch_1
    const-string v0, "Product not found."

    goto :goto_0

    .line 19
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
