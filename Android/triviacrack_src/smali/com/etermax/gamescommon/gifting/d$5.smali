.class Lcom/etermax/gamescommon/gifting/d$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etermax/gamescommon/gifting/d;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/gifting/d;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/gifting/d;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/etermax/gamescommon/gifting/d$5;->a:Lcom/etermax/gamescommon/gifting/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 170
    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/d$5;->a:Lcom/etermax/gamescommon/gifting/d;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/gifting/d;->dismiss()V

    .line 171
    return-void
.end method
