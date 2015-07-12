.class Lcom/smartadserver/android/library/a$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/a$2;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/a$2;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/a$2;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/smartadserver/android/library/a$2$1;->a:Lcom/smartadserver/android/library/a$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/smartadserver/android/library/a$2$1;->a:Lcom/smartadserver/android/library/a$2;

    iget-object v0, v0, Lcom/smartadserver/android/library/a$2;->a:Lcom/smartadserver/android/library/a;

    iget-object v0, v0, Lcom/smartadserver/android/library/a;->b:Lcom/smartadserver/android/library/SASInterstitialView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/SASInterstitialView;->g()V

    .line 136
    return-void
.end method
