.class final Lcom/mobileapptracker/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mobileapptracker/h;


# direct methods
.method constructor <init>(Lcom/mobileapptracker/h;)V
    .locals 0

    iput-object p1, p0, Lcom/mobileapptracker/w;->a:Lcom/mobileapptracker/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/mobileapptracker/w;->a:Lcom/mobileapptracker/h;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mobileapptracker/h;->h:Z

    iget-object v0, p0, Lcom/mobileapptracker/w;->a:Lcom/mobileapptracker/h;

    const-string v1, "session"

    const-wide/16 v3, 0x0

    iget-object v5, p0, Lcom/mobileapptracker/w;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v5}, Lcom/mobileapptracker/h;->d()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/mobileapptracker/w;->a:Lcom/mobileapptracker/h;

    invoke-virtual {v6}, Lcom/mobileapptracker/h;->f()Ljava/lang/String;

    move-result-object v6

    move-object v7, v2

    move-object v8, v2

    invoke-static/range {v0 .. v8}, Lcom/mobileapptracker/h;->a(Lcom/mobileapptracker/h;Ljava/lang/Object;Lorg/json/JSONArray;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
