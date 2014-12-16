.class final Lcom/mobileapptracker/n;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/mobileapptracker/i;


# direct methods
.method public static declared-synchronized a()Ljava/lang/String;
    .locals 5

    const-class v1, Lcom/mobileapptracker/n;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/mobileapptracker/i;->a()Lcom/mobileapptracker/i;

    move-result-object v0

    sput-object v0, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "connection_type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "age"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "altitude"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "android_id"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "android_id_md5"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "android_id_sha1"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "android_id_sha256"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "app_ad_tracking"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "app_name"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->m()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "app_version"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->n()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "country_code"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->p()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "currency_code"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->q()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "device_brand"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->r()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "device_carrier"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->s()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "device_cpu_type"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->t()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "device_cpu_subtype"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->u()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "device_model"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->w()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "device_id"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->v()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "attribute_sub1"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->x()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "attribute_sub2"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->y()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "attribute_sub3"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->z()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "attribute_sub4"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->A()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "attribute_sub5"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->B()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "content_id"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->C()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "content_type"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->D()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "date1"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->E()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "date2"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->F()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "level"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->H()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "quantity"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->J()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "rating"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->K()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "search_string"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->L()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "existing_user"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->M()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "facebook_user_id"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->N()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "gender"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->O()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "google_aid"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->P()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "google_ad_tracking_disabled"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->Q()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "google_user_id"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->R()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "insdate"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->S()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "installer"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->T()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "install_log_id"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->U()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "install_referrer"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->V()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "is_paying_user"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->W()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "language"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->X()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "last_open_log_id"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->Y()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "latitude"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->Z()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "longitude"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->aa()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mac_address"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->ab()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mat_id"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->ac()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mobile_country_code"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->ad()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mobile_network_code"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->ae()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "open_log_id"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->af()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "os_version"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->ag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sdk_plugin"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->ai()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "android_purchase_status"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->aj()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "advertiser_ref_id"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->am()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "revenue"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->an()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "screen_density"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->ao()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "screen_layout_size"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v4}, Lcom/mobileapptracker/i;->aq()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v4}, Lcom/mobileapptracker/i;->ap()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sdk_version"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->ar()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "truste_tpid"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->au()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "twitter_user_id"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->av()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "update_log_id"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->aw()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "conversion_user_agent"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->ax()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "user_email"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->ay()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "user_id"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->az()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "user_name"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->aA()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Lcom/mobileapptracker/a;)Ljava/lang/String;
    .locals 7

    const-class v2, Lcom/mobileapptracker/n;

    monitor-enter v2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mobileapptracker/i;->a()Lcom/mobileapptracker/i;

    move-result-object v1

    sput-object v1, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v1}, Lcom/mobileapptracker/i;->P()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "&google_aid="

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "google_aid"

    invoke-static {v0, v3, v1}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "google_ad_tracking_disabled"

    sget-object v3, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v3}, Lcom/mobileapptracker/i;->Q()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v1, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v1}, Lcom/mobileapptracker/i;->V()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v3, "&install_referrer="

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "install_referrer"

    invoke-static {v0, v3, v1}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v1, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v1}, Lcom/mobileapptracker/i;->ax()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v3, "&conversion_user_agent="

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "conversion_user_agent"

    invoke-static {v0, v3, v1}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v1, "&system_date="

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    const-string v1, "system_date"

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    invoke-virtual {p1, v0}, Lcom/mobileapptracker/a;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/mobileapptracker/a;->a([B)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :goto_0
    monitor-exit v2

    return-object v0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static a(ZZ)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/mobileapptracker/i;->a()Lcom/mobileapptracker/i;

    move-result-object v0

    sput-object v0, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v1}, Lcom/mobileapptracker/i;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p0, :cond_3

    const-string v1, "debug.engine.mobileapptracking.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "/serve?ver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v2}, Lcom/mobileapptracker/i;->ar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&transaction_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "sdk"

    const-string v2, "android"

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "action"

    sget-object v2, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v2}, Lcom/mobileapptracker/i;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "advertiser_id"

    sget-object v2, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v2}, Lcom/mobileapptracker/i;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "site_event_id"

    sget-object v2, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v2}, Lcom/mobileapptracker/i;->G()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "site_event_name"

    sget-object v2, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v2}, Lcom/mobileapptracker/i;->I()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "package_name"

    sget-object v2, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v2}, Lcom/mobileapptracker/i;->ah()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "referral_source"

    sget-object v2, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v2}, Lcom/mobileapptracker/i;->ak()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "referral_url"

    sget-object v2, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v2}, Lcom/mobileapptracker/i;->al()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "site_id"

    sget-object v2, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v2}, Lcom/mobileapptracker/i;->as()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "tracking_id"

    sget-object v2, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v2}, Lcom/mobileapptracker/i;->at()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v1, "&attr_set=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "publisher_id"

    sget-object v2, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v2}, Lcom/mobileapptracker/i;->aC()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "offer_id"

    sget-object v2, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v2}, Lcom/mobileapptracker/i;->aB()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "publisher_ref_id"

    sget-object v2, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v2}, Lcom/mobileapptracker/i;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "publisher_sub_publisher"

    sget-object v2, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v2}, Lcom/mobileapptracker/i;->aK()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "publisher_sub_site"

    sget-object v2, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v2}, Lcom/mobileapptracker/i;->aL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "publisher_sub_campaign"

    sget-object v2, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v2}, Lcom/mobileapptracker/i;->aM()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "publisher_sub_adgroup"

    sget-object v2, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v2}, Lcom/mobileapptracker/i;->aN()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "publisher_sub_ad"

    sget-object v2, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v2}, Lcom/mobileapptracker/i;->aO()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "publisher_sub_keyword"

    sget-object v2, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v2}, Lcom/mobileapptracker/i;->aP()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "advertiser_sub_publisher"

    sget-object v2, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v2}, Lcom/mobileapptracker/i;->aE()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "advertiser_sub_site"

    sget-object v2, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v2}, Lcom/mobileapptracker/i;->aF()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "advertiser_sub_campaign"

    sget-object v2, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v2}, Lcom/mobileapptracker/i;->aG()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "advertiser_sub_adgroup"

    sget-object v2, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v2}, Lcom/mobileapptracker/i;->aH()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "advertiser_sub_ad"

    sget-object v2, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v2}, Lcom/mobileapptracker/i;->aI()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "advertiser_sub_keyword"

    sget-object v2, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v2}, Lcom/mobileapptracker/i;->aJ()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "publisher_sub1"

    sget-object v2, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v2}, Lcom/mobileapptracker/i;->aQ()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "publisher_sub2"

    sget-object v2, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v2}, Lcom/mobileapptracker/i;->aR()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "publisher_sub3"

    sget-object v2, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v2}, Lcom/mobileapptracker/i;->aS()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "publisher_sub4"

    sget-object v2, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v2}, Lcom/mobileapptracker/i;->aT()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "publisher_sub5"

    sget-object v2, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v2}, Lcom/mobileapptracker/i;->aU()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobileapptracker/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/mobileapptracker/n;->a:Lcom/mobileapptracker/i;

    invoke-virtual {v1}, Lcom/mobileapptracker/i;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "&skip_dup=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p0, :cond_2

    const-string v1, "&debug=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v1, "engine.mobileapptracking.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method public static declared-synchronized a(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    const-class v1, Lcom/mobileapptracker/n;

    monitor-enter v1

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    :try_start_1
    const-string v0, "data"

    invoke-virtual {v2, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "store_iap_data"

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    if-eqz p2, :cond_2

    const-string v0, "store_iap_signature"

    invoke-virtual {v2, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_0
    monitor-exit v1

    return-object v2

    :catch_0
    move-exception v0

    :try_start_2
    const-string v3, "MobileAppTracker"

    const-string v4, "Could not build JSON for event items or verification values"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-class v1, Lcom/mobileapptracker/n;

    monitor-enter v1

    if-eqz p2, :cond_0

    :try_start_0
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "&"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-static {p2, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "MobileAppTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "failed encoding value "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
