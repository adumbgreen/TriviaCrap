.class public Lcom/amazon/device/ads/SISRegistration$RegisterEventsSISRequestorCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/device/ads/SISRequestorCallback;


# instance fields
.field private final sisRegistration:Lcom/amazon/device/ads/SISRegistration;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/SISRegistration;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput-object p1, p0, Lcom/amazon/device/ads/SISRegistration$RegisterEventsSISRequestorCallback;->sisRegistration:Lcom/amazon/device/ads/SISRegistration;

    .line 203
    return-void
.end method


# virtual methods
.method public onSISCallComplete()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/amazon/device/ads/SISRegistration$RegisterEventsSISRequestorCallback;->sisRegistration:Lcom/amazon/device/ads/SISRegistration;

    invoke-virtual {v0}, Lcom/amazon/device/ads/SISRegistration;->registerEvents()V

    .line 209
    return-void
.end method
