.class Lcom/mopub/mobileads/aw$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/aw;->e(Ljava/lang/String;)V
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
    .line 396
    iput-object p1, p0, Lcom/mopub/mobileads/aw$5;->b:Lcom/mopub/mobileads/aw;

    iput-object p2, p0, Lcom/mopub/mobileads/aw$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 399
    iget-object v0, p0, Lcom/mopub/mobileads/aw$5;->b:Lcom/mopub/mobileads/aw;

    iget-object v1, p0, Lcom/mopub/mobileads/aw$5;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mopub/mobileads/aw;->b(Lcom/mopub/mobileads/aw;Ljava/lang/String;)V

    .line 400
    return-void
.end method
