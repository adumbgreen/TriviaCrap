.class Lcom/inmobi/androidsdk/BannerView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/androidsdk/BannerView;->a(ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/androidsdk/BannerView;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/BannerView;)V
    .locals 0
    .parameter

    .prologue
    .line 777
    iput-object p1, p0, Lcom/inmobi/androidsdk/BannerView$b;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView$b;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/BannerView;->disableHardwareAcceleration()V

    .line 781
    return-void
.end method
