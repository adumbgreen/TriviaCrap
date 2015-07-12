.class Lcom/etermax/adsinterface/a/d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/adsinterface/a/d;->b()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/adsinterface/a/d;


# direct methods
.method constructor <init>(Lcom/etermax/adsinterface/a/d;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/etermax/adsinterface/a/d$2;->a:Lcom/etermax/adsinterface/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/etermax/adsinterface/a/d$2;->a:Lcom/etermax/adsinterface/a/d;

    invoke-static {v0}, Lcom/etermax/adsinterface/a/d;->a(Lcom/etermax/adsinterface/a/d;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 170
    return-void
.end method
