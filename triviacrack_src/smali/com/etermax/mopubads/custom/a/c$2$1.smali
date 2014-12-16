.class Lcom/etermax/mopubads/custom/a/c$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/mopubads/custom/a/c$2;->adLoadingCompleted(Lcom/smartadserver/android/library/d/a;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/mopubads/custom/a/c$2;


# direct methods
.method constructor <init>(Lcom/etermax/mopubads/custom/a/c$2;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/etermax/mopubads/custom/a/c$2$1;->a:Lcom/etermax/mopubads/custom/a/c$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 114
    invoke-static {}, Lcom/etermax/adsinterface/f;->a()V

    .line 115
    return-void
.end method
