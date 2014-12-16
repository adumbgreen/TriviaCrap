.class Lcom/smartadserver/android/library/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/a;->adLoadingCompleted(Lcom/smartadserver/android/library/d/a;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/a;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/a;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/smartadserver/android/library/a$1;->a:Lcom/smartadserver/android/library/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/smartadserver/android/library/a$1;->a:Lcom/smartadserver/android/library/a;

    iget-object v0, v0, Lcom/smartadserver/android/library/a;->b:Lcom/smartadserver/android/library/SASInterstitialView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/SASInterstitialView;->setVisibility(I)V

    .line 102
    return-void
.end method
