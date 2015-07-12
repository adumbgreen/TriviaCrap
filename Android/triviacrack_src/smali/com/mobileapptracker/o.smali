.class final Lcom/mobileapptracker/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/mobileapptracker/h;


# direct methods
.method constructor <init>(Lcom/mobileapptracker/h;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/mobileapptracker/o;->b:Lcom/mobileapptracker/h;

    iput-object p2, p0, Lcom/mobileapptracker/o;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/mobileapptracker/o;->b:Lcom/mobileapptracker/h;

    iget-object v0, v0, Lcom/mobileapptracker/h;->j:Lcom/mobileapptracker/i;

    iget-object v1, p0, Lcom/mobileapptracker/o;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobileapptracker/i;->Q(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobileapptracker/o;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mobileapptracker/o;->b:Lcom/mobileapptracker/h;

    iget-object v1, v1, Lcom/mobileapptracker/h;->j:Lcom/mobileapptracker/i;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mobileapptracker/i;->R(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
