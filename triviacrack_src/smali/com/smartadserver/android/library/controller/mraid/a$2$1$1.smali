.class Lcom/smartadserver/android/library/controller/mraid/a$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/controller/mraid/a$2$1;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/controller/mraid/a$2$1;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/controller/mraid/a$2$1;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/smartadserver/android/library/controller/mraid/a$2$1$1;->a:Lcom/smartadserver/android/library/controller/mraid/a$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 235
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a$2$1$1;->a:Lcom/smartadserver/android/library/controller/mraid/a$2$1;

    iget-object v0, v0, Lcom/smartadserver/android/library/controller/mraid/a$2$1;->a:Lcom/smartadserver/android/library/controller/mraid/a$2;

    iget-object v0, v0, Lcom/smartadserver/android/library/controller/mraid/a$2;->c:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/a;->close()V

    .line 236
    return-void
.end method
