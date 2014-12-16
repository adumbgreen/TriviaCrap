.class public final Lcom/lifestreet/android/lsmsdk/adapters/Lifestreet2Parameters;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public showCloseButton:Ljava/lang/String;
    .annotation runtime Lcom/lifestreet/android/lsmsdk/annotations/NetworkParameter;
        required = false
    .end annotation
.end field

.field public slotTag:Ljava/lang/String;
    .annotation runtime Lcom/lifestreet/android/lsmsdk/annotations/NetworkParameter;
        appendSlotParams = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
