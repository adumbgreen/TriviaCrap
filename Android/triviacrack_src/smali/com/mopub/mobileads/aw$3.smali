.class Lcom/mopub/mobileads/aw$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/aw;->c(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mopub/mobileads/aw;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/aw;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 324
    iput-object p1, p0, Lcom/mopub/mobileads/aw$3;->b:Lcom/mopub/mobileads/aw;

    iput-object p2, p0, Lcom/mopub/mobileads/aw$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 327
    iget-object v0, p0, Lcom/mopub/mobileads/aw$3;->b:Lcom/mopub/mobileads/aw;

    invoke-static {v0}, Lcom/mopub/mobileads/aw;->a(Lcom/mopub/mobileads/aw;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/aw$3;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 328
    return-void
.end method
