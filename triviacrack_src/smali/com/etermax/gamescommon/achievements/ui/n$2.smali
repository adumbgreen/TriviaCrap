.class Lcom/etermax/gamescommon/achievements/ui/n$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/achievements/ui/n;->b()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/achievements/ui/n;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/achievements/ui/n;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/etermax/gamescommon/achievements/ui/n$2;->a:Lcom/etermax/gamescommon/achievements/ui/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/n$2;->a:Lcom/etermax/gamescommon/achievements/ui/n;

    iget-object v0, v0, Lcom/etermax/gamescommon/achievements/ui/n;->a:Lcom/etermax/gamescommon/achievements/ui/k;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/achievements/ui/k;->b()V

    .line 72
    return-void
.end method
