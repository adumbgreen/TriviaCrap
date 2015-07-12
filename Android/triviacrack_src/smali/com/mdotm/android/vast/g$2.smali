.class Lcom/mdotm/android/vast/g$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/vast/g;->a(Ljava/util/ArrayList;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/mdotm/android/vast/g;

.field private final synthetic b:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/mdotm/android/vast/g;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/vast/g$2;->a:Lcom/mdotm/android/vast/g;

    iput-object p2, p0, Lcom/mdotm/android/vast/g$2;->b:Ljava/util/ArrayList;

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 280
    iget-object v0, p0, Lcom/mdotm/android/vast/g$2;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 281
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/mdotm/android/vast/g$2;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 290
    :goto_1
    return-void

    .line 282
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Event URL"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mdotm/android/vast/g$2;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    invoke-static {}, Lcom/mdotm/android/e/f;->a()Lcom/mdotm/android/e/f;

    move-result-object v2

    .line 284
    iget-object v0, p0, Lcom/mdotm/android/vast/g$2;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/mdotm/android/vast/g$2;->a:Lcom/mdotm/android/vast/g;

    invoke-static {v3}, Lcom/mdotm/android/vast/g;->a(Lcom/mdotm/android/vast/g;)Lcom/mdotm/android/vast/f;

    move-result-object v3

    invoke-static {v3}, Lcom/mdotm/android/vast/f;->f(Lcom/mdotm/android/vast/f;)Landroid/content/Context;

    move-result-object v3

    .line 283
    invoke-virtual {v2, v0, v3}, Lcom/mdotm/android/e/f;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 281
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 288
    :cond_1
    const-string v0, "Event URL null"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method
