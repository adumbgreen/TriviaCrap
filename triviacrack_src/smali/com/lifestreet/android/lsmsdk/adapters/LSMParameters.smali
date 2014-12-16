.class public final Lcom/lifestreet/android/lsmsdk/adapters/LSMParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public baseUrl:Ljava/lang/String;
    .annotation runtime Lcom/lifestreet/android/lsmsdk/annotations/NetworkParameter;
        required = false
    .end annotation
.end field

.field public html:Ljava/lang/String;
    .annotation runtime Lcom/lifestreet/android/lsmsdk/annotations/NetworkParameter;
    .end annotation
.end field

.field public showCloseButton:Ljava/lang/String;
    .annotation runtime Lcom/lifestreet/android/lsmsdk/annotations/NetworkParameter;
        required = false
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
