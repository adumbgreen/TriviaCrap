.class Lcom/etermax/gamescommon/gifting/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etermax/gamescommon/gifting/a;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/gifting/a;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/gifting/a;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/etermax/gamescommon/gifting/a$2;->a:Lcom/etermax/gamescommon/gifting/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/a$2;->a:Lcom/etermax/gamescommon/gifting/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/gifting/a;->dismiss()V

    .line 151
    return-void
.end method
