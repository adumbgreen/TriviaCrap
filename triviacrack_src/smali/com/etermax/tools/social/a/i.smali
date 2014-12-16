.class Lcom/etermax/tools/social/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# instance fields
.field a:Lcom/etermax/tools/social/a/g;

.field b:Landroid/app/Activity;

.field c:I

.field final synthetic d:Lcom/etermax/tools/social/a/b;


# direct methods
.method public constructor <init>(Lcom/etermax/tools/social/a/b;Landroid/app/Activity;ILcom/etermax/tools/social/a/g;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1024
    iput-object p1, p0, Lcom/etermax/tools/social/a/i;->d:Lcom/etermax/tools/social/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1025
    iput-object p4, p0, Lcom/etermax/tools/social/a/i;->a:Lcom/etermax/tools/social/a/g;

    .line 1026
    iput p3, p0, Lcom/etermax/tools/social/a/i;->c:I

    .line 1027
    iput-object p2, p0, Lcom/etermax/tools/social/a/i;->b:Landroid/app/Activity;

    .line 1028
    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1032
    sget-object v0, Lcom/etermax/tools/social/a/b$2;->a:[I

    invoke-virtual {p2}, Lcom/facebook/SessionState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1080
    :goto_0
    :pswitch_0
    return-void

    .line 1036
    :pswitch_1
    instance-of v0, p3, Lcom/facebook/FacebookOperationCanceledException;

    if-nez v0, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/etermax/tools/social/a/i;->a:Lcom/etermax/tools/social/a/g;

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/etermax/tools/social/a/g;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1039
    :cond_0
    iget-object v0, p0, Lcom/etermax/tools/social/a/i;->a:Lcom/etermax/tools/social/a/g;

    invoke-interface {v0}, Lcom/etermax/tools/social/a/g;->b()V

    goto :goto_0

    .line 1047
    :pswitch_2
    iget-object v0, p0, Lcom/etermax/tools/social/a/i;->d:Lcom/etermax/tools/social/a/b;

    invoke-virtual {v0}, Lcom/etermax/tools/social/a/b;->c()V

    .line 1048
    if-eqz p3, :cond_2

    .line 1049
    instance-of v0, p3, Lcom/facebook/FacebookOperationCanceledException;

    if-nez v0, :cond_1

    .line 1050
    iget-object v0, p0, Lcom/etermax/tools/social/a/i;->a:Lcom/etermax/tools/social/a/g;

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/etermax/tools/social/a/g;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1053
    :cond_1
    iget-object v0, p0, Lcom/etermax/tools/social/a/i;->a:Lcom/etermax/tools/social/a/g;

    invoke-interface {v0}, Lcom/etermax/tools/social/a/g;->b()V

    goto :goto_0

    .line 1057
    :cond_2
    iget v0, p0, Lcom/etermax/tools/social/a/i;->c:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/etermax/tools/social/a/i;->d:Lcom/etermax/tools/social/a/b;

    invoke-virtual {v0}, Lcom/etermax/tools/social/a/b;->b()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1060
    new-instance v0, Lcom/facebook/Session$NewPermissionsRequest;

    iget-object v1, p0, Lcom/etermax/tools/social/a/i;->b:Landroid/app/Activity;

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "publish_actions"

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/Session$NewPermissionsRequest;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lcom/facebook/Session;->requestNewPublishPermissions(Lcom/facebook/Session$NewPermissionsRequest;)V

    .line 1064
    :goto_1
    invoke-virtual {p1, p0}, Lcom/facebook/Session;->removeCallback(Lcom/facebook/Session$StatusCallback;)V

    goto :goto_0

    .line 1062
    :cond_3
    iget-object v0, p0, Lcom/etermax/tools/social/a/i;->a:Lcom/etermax/tools/social/a/g;

    invoke-interface {v0}, Lcom/etermax/tools/social/a/g;->a()V

    goto :goto_1

    .line 1067
    :pswitch_3
    iget-object v0, p0, Lcom/etermax/tools/social/a/i;->d:Lcom/etermax/tools/social/a/b;

    invoke-virtual {v0}, Lcom/etermax/tools/social/a/b;->c()V

    .line 1068
    iget v0, p0, Lcom/etermax/tools/social/a/i;->c:I

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/etermax/tools/social/a/i;->d:Lcom/etermax/tools/social/a/b;

    invoke-virtual {v0}, Lcom/etermax/tools/social/a/b;->b()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1071
    iget-object v0, p0, Lcom/etermax/tools/social/a/i;->a:Lcom/etermax/tools/social/a/g;

    invoke-interface {v0}, Lcom/etermax/tools/social/a/g;->b()V

    .line 1075
    :goto_2
    invoke-virtual {p1, p0}, Lcom/facebook/Session;->removeCallback(Lcom/facebook/Session$StatusCallback;)V

    goto :goto_0

    .line 1073
    :cond_4
    iget-object v0, p0, Lcom/etermax/tools/social/a/i;->a:Lcom/etermax/tools/social/a/g;

    invoke-interface {v0}, Lcom/etermax/tools/social/a/g;->a()V

    goto :goto_2

    .line 1032
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
