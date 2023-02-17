.class public Lcom/koushikdutta/ion/ContextReference$ServiceContextReference;
.super Lcom/koushikdutta/ion/ContextReference$NormalContextReference;
.source "ContextReference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/ion/ContextReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceContextReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/ion/ContextReference$NormalContextReference<",
        "Landroid/app/Service;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Service;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/koushikdutta/ion/ContextReference$NormalContextReference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static isAlive(Landroid/app/Service;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string p0, "Service reference null"

    return-object p0

    :cond_0
    const-string v0, "activity"

    .line 50
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const v1, 0x7fffffff

    .line 51
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "Could not retrieve services from service manager"

    return-object p0

    .line 54
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_3
    const-string p0, "Service stopped"

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    .line 42
    invoke-super {p0}, Lcom/koushikdutta/ion/ContextReference$NormalContextReference;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public isAlive()Ljava/lang/String;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/koushikdutta/ion/ContextReference$ServiceContextReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Service;

    invoke-static {v0}, Lcom/koushikdutta/ion/ContextReference$ServiceContextReference;->isAlive(Landroid/app/Service;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
