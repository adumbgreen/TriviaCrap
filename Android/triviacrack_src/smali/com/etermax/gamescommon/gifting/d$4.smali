.class Lcom/etermax/gamescommon/gifting/d$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/gifting/d;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/gifting/d;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/gifting/d;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/etermax/gamescommon/gifting/d$4;->a:Lcom/etermax/gamescommon/gifting/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/d$4;->a:Lcom/etermax/gamescommon/gifting/d;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/gifting/d;->dismiss()V

    .line 163
    return-void
.end method
