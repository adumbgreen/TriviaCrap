.class Lcom/smartadserver/android/library/b/e$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/b/e;->b(Landroid/content/Context;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/b/e;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/b/e;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/smartadserver/android/library/b/e$2;->a:Lcom/smartadserver/android/library/b/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/smartadserver/android/library/b/e$2;->a:Lcom/smartadserver/android/library/b/e;

    invoke-static {v0}, Lcom/smartadserver/android/library/b/e;->a(Lcom/smartadserver/android/library/b/e;)V

    .line 149
    return-void
.end method
