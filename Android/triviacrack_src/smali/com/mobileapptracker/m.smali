.class final Lcom/mobileapptracker/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lorg/json/JSONArray;

.field final synthetic c:D

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Lcom/mobileapptracker/h;


# direct methods
.method constructor <init>(Lcom/mobileapptracker/h;Ljava/lang/String;Lorg/json/JSONArray;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mobileapptracker/m;->h:Lcom/mobileapptracker/h;

    iput-object p2, p0, Lcom/mobileapptracker/m;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/mobileapptracker/m;->b:Lorg/json/JSONArray;

    iput-wide p4, p0, Lcom/mobileapptracker/m;->c:D

    iput-object p6, p0, Lcom/mobileapptracker/m;->d:Ljava/lang/String;

    iput-object p7, p0, Lcom/mobileapptracker/m;->e:Ljava/lang/String;

    iput-object p8, p0, Lcom/mobileapptracker/m;->f:Ljava/lang/String;

    iput-object p9, p0, Lcom/mobileapptracker/m;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/mobileapptracker/m;->h:Lcom/mobileapptracker/h;

    iget-object v1, p0, Lcom/mobileapptracker/m;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/mobileapptracker/m;->b:Lorg/json/JSONArray;

    iget-wide v3, p0, Lcom/mobileapptracker/m;->c:D

    iget-object v5, p0, Lcom/mobileapptracker/m;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/mobileapptracker/m;->e:Ljava/lang/String;

    iget-object v7, p0, Lcom/mobileapptracker/m;->f:Ljava/lang/String;

    iget-object v8, p0, Lcom/mobileapptracker/m;->g:Ljava/lang/String;

    invoke-static/range {v0 .. v8}, Lcom/mobileapptracker/h;->a(Lcom/mobileapptracker/h;Ljava/lang/Object;Lorg/json/JSONArray;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
