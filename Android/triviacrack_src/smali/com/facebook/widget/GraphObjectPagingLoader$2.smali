.class Lcom/facebook/widget/GraphObjectPagingLoader$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/Request$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/GraphObjectPagingLoader;->startLoading(Lcom/facebook/Request;ZJ)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/GraphObjectPagingLoader;


# direct methods
.method constructor <init>(Lcom/facebook/widget/GraphObjectPagingLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/facebook/widget/GraphObjectPagingLoader$2;->this$0:Lcom/facebook/widget/GraphObjectPagingLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .locals 1
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader$2;->this$0:Lcom/facebook/widget/GraphObjectPagingLoader;

    #calls: Lcom/facebook/widget/GraphObjectPagingLoader;->requestCompleted(Lcom/facebook/Response;)V
    invoke-static {v0, p1}, Lcom/facebook/widget/GraphObjectPagingLoader;->access$000(Lcom/facebook/widget/GraphObjectPagingLoader;Lcom/facebook/Response;)V

    .line 135
    return-void
.end method
